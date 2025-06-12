package android.app.src.main.java.com.ttpos.app.utils;

/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/*import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.CharEncoding;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;*/

public class Hex /*implements BinaryEncoder, BinaryDecoder*/ {

    public static final Charset DEFAULT_CHARSET = StandardCharsets.UTF_8;

//    public static final String DEFAULT_CHARSET_NAME = CharEncoding.UTF_8;

    private static final char[] DIGITS_LOWER = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd',
            'e', 'f' };

    /**
     * Used to build output as hex.
     */
    private static final char[] DIGITS_UPPER = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D',
            'E', 'F' };

    public static byte[] decodeHex(final char[] data) throws Exception {
        final byte[] out = new byte[data.length >> 1];
        decodeHex(data, out, 0);
        return out;
    }

    public static int decodeHex(final char[] data, final byte[] out, final int outOffset) throws Exception {
        final int len = data.length;

        if ((len & 0x01) != 0) {
            throw new Exception("Odd number of characters.");
        }

        final int outLen = len >> 1;
        if (out.length - outOffset < outLen) {
            throw new Exception("Output array is not large enough to accommodate decoded data.");
        }

        // two characters form the hex value.
        for (int i = outOffset, j = 0; j < len; i++) {
            int f = toDigit(data[j], j) << 4;
            j++;
            f = f | toDigit(data[j], j);
            j++;
            out[i] = (byte) (f & 0xFF);
        }

        return outLen;
    }

    public static byte[] decodeHex(final String data) throws Exception {
        return decodeHex(data.toCharArray());
    }

    public static char[] encodeHex(final byte[] data) {
        return encodeHex(data, true);
    }

    public static char[] encodeHex(final byte[] data, final boolean toLowerCase) {
        return encodeHex(data, toLowerCase ? DIGITS_LOWER : DIGITS_UPPER);
    }

    protected static char[] encodeHex(final byte[] data, final char[] toDigits) {
        final int l = data.length;
        final char[] out = new char[l << 1];
        encodeHex(data, 0, data.length, toDigits, out, 0);
        return out;
    }

    public static char[] encodeHex(final byte[] data, final int dataOffset, final int dataLen,
                                   final boolean toLowerCase) {
        final char[] out = new char[dataLen << 1];
        encodeHex(data, dataOffset, dataLen, toLowerCase ? DIGITS_LOWER : DIGITS_UPPER, out, 0);
        return out;
    }

    public static void encodeHex(final byte[] data, final int dataOffset, final int dataLen,
                                 final boolean toLowerCase, final char[] out, final int outOffset) {
        encodeHex(data, dataOffset, dataLen, toLowerCase ? DIGITS_LOWER : DIGITS_UPPER, out, outOffset);
    }

    private static void encodeHex(final byte[] data, final int dataOffset, final int dataLen, final char[] toDigits,
                                  final char[] out, final int outOffset) {
        // two characters form the hex value.
        for (int i = dataOffset, j = outOffset; i < dataOffset + dataLen; i++) {
            out[j++] = toDigits[(0xF0 & data[i]) >>> 4];
            out[j++] = toDigits[0x0F & data[i]];
        }
    }

    public static char[] encodeHex(final ByteBuffer data) {
        return encodeHex(data, true);
    }

    public static char[] encodeHex(final ByteBuffer data, final boolean toLowerCase) {
        return encodeHex(data, toLowerCase ? DIGITS_LOWER : DIGITS_UPPER);
    }

    protected static char[] encodeHex(final ByteBuffer byteBuffer, final char[] toDigits) {
        return encodeHex(toByteArray(byteBuffer), toDigits);
    }

    public static String encodeHexString(final byte[] data) {
        return new String(encodeHex(data));
    }

    public static String encodeHexString(final byte[] data, final boolean toLowerCase) {
        return new String(encodeHex(data, toLowerCase));
    }

    public static String encodeHexString(final ByteBuffer data) {
        return new String(encodeHex(data));
    }

    public static String encodeHexString(final ByteBuffer data, final boolean toLowerCase) {
        return new String(encodeHex(data, toLowerCase));
    }

    private static byte[] toByteArray(final ByteBuffer byteBuffer) {
        final int remaining = byteBuffer.remaining();
        // Use the underlying buffer if possible
        if (byteBuffer.hasArray()) {
            final byte[] byteArray = byteBuffer.array();
            if (remaining == byteArray.length) {
                byteBuffer.position(remaining);
                return byteArray;
            }
        }
        // Copy the bytes
        final byte[] byteArray = new byte[remaining];
        byteBuffer.get(byteArray);
        return byteArray;
    }

    protected static int toDigit(final char ch, final int index) throws Exception {
        final int digit = Character.digit(ch, 16);
        if (digit == -1) {
            throw new Exception("Illegal hexadecimal character " + ch + " at index " + index);
        }
        return digit;
    }

    private final Charset charset;

    public Hex() {
        // use default encoding
        this.charset = DEFAULT_CHARSET;
    }

    /**
     * Creates a new codec with the given Charset.
     *
     * @param charset the charset.
     * @since 1.7
     */
    public Hex(final Charset charset) {
        this.charset = charset;
    }

    public Hex(final String charsetName) {
        this(Charset.forName(charsetName));
    }

    public byte[] decode(final byte[] array) throws Exception {
        return decodeHex(new String(array, getCharset()).toCharArray());
    }

    public byte[] decode(final ByteBuffer buffer) throws Exception {
        return decodeHex(new String(toByteArray(buffer), getCharset()).toCharArray());
    }

    public Object decode(final Object object) throws Exception {
        if (object instanceof String) {
            return decode(((String) object).toCharArray());
        } else if (object instanceof byte[]) {
            return decode((byte[]) object);
        } else if (object instanceof ByteBuffer) {
            return decode((ByteBuffer) object);
        } else {
            try {
                return decodeHex((char[]) object);
            } catch (final ClassCastException e) {
                throw new Exception(e.getMessage(), e);
            }
        }
    }

    public byte[] encode(final byte[] array) {
        return encodeHexString(array).getBytes(this.getCharset());
    }

    public byte[] encode(final ByteBuffer array) {
        return encodeHexString(array).getBytes(this.getCharset());
    }

    public Object encode(final Object object) throws Exception {
        byte[] byteArray;
        if (object instanceof String) {
            byteArray = ((String) object).getBytes(this.getCharset());
        } else if (object instanceof ByteBuffer) {
            byteArray = toByteArray((ByteBuffer) object);
        } else {
            try {
                byteArray = (byte[]) object;
            } catch (final ClassCastException e) {
                throw new Exception(e.getMessage(), e);
            }
        }
        return encodeHex(byteArray);
    }

    public Charset getCharset() {
        return this.charset;
    }

    public String getCharsetName() {
        return this.charset.name();
    }

    @Override
    public String toString() {
        return super.toString() + "[charsetName=" + this.charset + "]";
    }
}