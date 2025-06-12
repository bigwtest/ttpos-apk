package android.app.src.main.java.com.ttpos.app.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.util.Log;

import androidx.annotation.RequiresApi;

//import org.apache.commons.codec.binary.Hex;
import android.app.src.main.java.com.ttpos.app.utils.Hex;

import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Tools {

    /**
     * 字符串编码并且排除？
     * @param from 字符串原编码
     * @param to 需要转化的编码
     * @param content 内容
     * @return 转码后的字节流
     */
    public static byte[] stringToByte(String from, String to, String content)  {
        try {
            String[] parts = content.split("\\?");

            String wantDecode = "";
            for (int i = 0; i < parts.length; i++) {
                String sub = parts[i];
                String encodeString = new String(sub.getBytes(to), to);

                encodeString = encodeString.replace("?", "");
                String temp = "";
                if (i < parts.length -1) {
                    temp = "?";
                }
                wantDecode += encodeString + temp;
            }

            return wantDecode.getBytes(to);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    /**
     * core 根据内容的语言进行字符串分割
     * @param content 字符串内容
     * @return 分割后的泰语, 韩语，其他语言字符串数组
     */
    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    public static List<String> separatorContent(String content) {
        CharsetDecoder decoder = StandardCharsets.UTF_8.newDecoder()
                .onMalformedInput(CodingErrorAction.IGNORE);

        try {
            // content先转回来
            byte[] bytes = Hex.decodeHex(content);
            String decodedContent = new String(bytes, Charset.forName("UTF-8"));

            ByteBuffer byteBuffer = ByteBuffer.wrap(decodedContent.getBytes(StandardCharsets.UTF_8));
            String convertedContent = decoder.decode(byteBuffer).toString();

            Log.d("separatorContent", "separatorContent: " + convertedContent);
            // 根据正则分组
//            String regex = "([\\p{InThai}\\p{IsHangul}฿]+)";
            String regex = "([\\p{InThai}\\p{IsHangul}฿]+)";
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
                // 当前系统版本小于 Android 10（Android Q）
                // 在这里编写对应 Android 9（Pie）及以下版本的逻辑
                regex = "([ก-๙가-힣฿]+)";
            }
            List<String> segments = new ArrayList<>();

            Pattern pattern = Pattern.compile(regex);
            Log.d("pattern", "111");
            Matcher matcher = pattern.matcher(convertedContent);
            Log.d("pattern", "222");
            int start = 0;
            while (matcher.find()) {
                if (matcher.start() > start) {
                    Log.d("neirong", convertedContent.substring(start, matcher.start()));
                    segments.add(convertedContent.substring(start, matcher.start()));
                }
                segments.add(matcher.group());
                start = matcher.end();
            }

            if (start < convertedContent.length()) {
                segments.add(convertedContent.substring(start));
            }
            return segments;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 16进制字符串转字节数组
     */
    @SuppressLint("DefaultLocale")
    public static byte[] getBytesFromHexString(String hexString) {
        if (hexString == null || "".equals(hexString)) {
            return null;
        }
        hexString = hexString.replace(" ", "");
        hexString = hexString.toUpperCase();
        int size = hexString.length() / 2;
        char[] hexArray = hexString.toCharArray();
        byte[] rv = new byte[size];
        for (int i = 0; i < size; i++) {
            int pos = i * 2;
            rv[i] = (byte) (charToByte(hexArray[pos]) << 4 | charToByte(hexArray[pos + 1]));
        }
        return rv;
    }

    /**
     * 单字符转字节
     */
    private static byte charToByte(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }


    public static byte[] separatorAndEncodeContent(String content) {
        CharsetDecoder decoder = java.nio.charset.StandardCharsets.UTF_8.newDecoder()
                .onMalformedInput(CodingErrorAction.IGNORE);

        try {
            // content先转回来
            byte[] bytes = Hex.decodeHex(content);
            String decodedContent = new String(bytes, Charset.forName("UTF-8"));

            ByteBuffer byteBuffer = ByteBuffer.wrap(decodedContent.getBytes(java.nio.charset.StandardCharsets.UTF_8));
            String convertedContent = decoder.decode(byteBuffer).toString();

            Log.d("separatorContent", "separatorContent: " + convertedContent);
            // 根据正则分组
            String regex = "([\\p{InThai}\\p{IsHangul}฿]+)";
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
                // 当前系统版本小于 Android 10（Android Q）
                // 在这里编写对应 Android 9（Pie）及以下版本的逻辑
                regex = "([ก-๙가-힣฿]+)";
            }
            List<String> segments = new ArrayList<>();

            Pattern pattern = Pattern.compile(regex);
            Log.d("pattern", "111");
            Matcher matcher = pattern.matcher(convertedContent);
            Log.d("pattern", "222");
            int start = 0;
            while (matcher.find()) {
                if (matcher.start() > start) {
                    Log.d("neirong", convertedContent.substring(start, matcher.start()));
                    segments.add(convertedContent.substring(start, matcher.start()));
                }
                segments.add(matcher.group());
                start = matcher.end();
            }

            if (start < convertedContent.length()) {
                segments.add(convertedContent.substring(start));
            }
            Log.wtf("yixin", segments.toString());

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] th_bytes = new byte[]{0x01}; // 假设泰语标识字节
            byte[] ko_bytes = new byte[]{0x02}; // 假设韩语标识字节
            byte[] other_bytes = new byte[]{0x03}; // 假设其他语言标识字节

            for (String item : segments) {
                Pattern thPattern = null;
                Pattern koPattern = null;
                if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
                    // 当前系统版本小于 Android 10（Android Q）
                    // 在这里编写对应 Android 9（Pie）及以下版本的逻辑
                    thPattern = Pattern.compile("([ก-๙]+)");
                    koPattern = Pattern.compile("([가-힣]+)");
                } else {
                    thPattern = Pattern.compile("\\p{InThai}");
                    koPattern = Pattern.compile("\\p{IsHangul}");
                }
                if (thPattern.matcher(item).find() || item.contains("฿")) {
                    // 泰语相关编码
                    Log.d("泰语内容", item);
                    outputStream.write(th_bytes);
                    byte[] decode = Tools.stringToByte("UTF-8", "CP874", item);

                    if (decode != null) {
                        outputStream.write(decode);
                    }

                } else if (koPattern.matcher(item).find()) {
                    // 韩语相关编码
                    Log.d("韩语内容", item);
                    outputStream.write(ko_bytes);
                    byte[] decode = Tools.stringToByte("UTF-8", "CP949", item);
                    if (decode != null) {
                        outputStream.write(decode);
                    }

                } else {
                    // 其他相关编码
                    Log.d("其他GBK内容", item);
                    outputStream.write(other_bytes);
                    byte[] decode = Tools.stringToByte("UTF-8", "GBK", item);
                    if (decode != null) {
                        outputStream.write(decode);
                    }
                }
            }
            return outputStream.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public static UsbDevice getUsbDeviceFromName(Context context, String usbName) {
        UsbManager usbManager = (UsbManager) context.getSystemService(Context.USB_SERVICE);
        HashMap<String, UsbDevice> usbDeviceList = usbManager.getDeviceList();
        Log.wtf("fuyixinsub",usbDeviceList.toString());
        return usbDeviceList.get(usbName);
    }
}
