package com.hitosea.sunmi;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.Log;


public class BytesUtil {

    /**
     * 字节流转16进制字符串
     */
    public static String getHexStringFromBytes(byte[] data) {
        if (data == null || data.length <= 0) {
            return null;
        }
        String hexString = "0123456789ABCDEF";
        int size = data.length * 2;
        StringBuilder sb = new StringBuilder(size);
        for (int i = 0; i < data.length; i++) {
            sb.append(hexString.charAt((data[i] & 0xF0) >> 4));
            sb.append(hexString.charAt((data[i] & 0x0F) >> 0));
        }
        return sb.toString();
    }

    /**
     * 单字符转字节
     */
    private static byte charToByte(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
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
     * 十进制字符串转字节数组
     */
    @SuppressLint("DefaultLocale")
    public static byte[] getBytesFromDecString(String decString) {
        if (decString == null || "".equals(decString)) {
            return null;
        }
        decString = decString.replace(" ", "");
        int size = decString.length() / 2;
        char[] decarray = decString.toCharArray();
        byte[] rv = new byte[size];
        for (int i = 0; i < size; i++) {
            int pos = i * 2;
            rv[i] = (byte) (charToByte(decarray[pos]) * 10 + charToByte(decarray[pos + 1]));
        }
        return rv;
    }

    /**
     * 字节数组组合操作1
     */
    public static byte[] byteMerger(byte[] byte_1, byte[] byte_2) {
        byte[] byte_3 = new byte[byte_1.length + byte_2.length];
        System.arraycopy(byte_1, 0, byte_3, 0, byte_1.length);
        System.arraycopy(byte_2, 0, byte_3, byte_1.length, byte_2.length);
        return byte_3;
    }

    /**
     * 字节数组组合操作2
     */
    public static byte[] byteMerger(byte[][] byteList) {
        int length = 0;
        // for (int i = 0; i < byteList.length; i++) {
        // length += byteList[i].length;
        // }
        for (byte[] bytes : byteList) {
            length += bytes.length;
        }
        byte[] result = new byte[length];

        int index = 0;
        for (int i = 0; i < byteList.length; i++) {
            byte[] nowByte = byteList[i];
            for (int k = 0; k < byteList[i].length; k++) {
                result[index] = nowByte[k];
                index++;
            }
        }
        // for (int i = 0; i < index; i++) {
        // // CommonUtils.LogWuwei("", "result[" + i + "] is " + result[i]);
        // }
        return result;
    }

    /**
     * 生成表格字节流
     */
    public static byte[] initTable(int h, int w) {
        int hh = h * 32;
        int ww = w * 4;
        byte[] data = new byte[hh * ww + 5];
        // xL
        data[0] = (byte) ww;
        // xH
        data[1] = (byte) (ww >> 8);
        data[2] = (byte) hh;
        data[3] = (byte) (hh >> 8);
        int k = 4;
        int m = 31;
        for (int i = 0; i < h; i++) {
            for (int j = 0; j < w; j++) {
                data[k++] = (byte) 0xFF;
                data[k++] = (byte) 0xFF;
                data[k++] = (byte) 0xFF;
                data[k++] = (byte) 0xFF;
            }
            if (i == h - 1)
                m = 30;
            for (int t = 0; t < m; t++) {
                for (int j = 0; j < w - 1; j++) {
                    data[k++] = (byte) 0x80;
                    data[k++] = (byte) 0;
                    data[k++] = (byte) 0;
                    data[k++] = (byte) 0;
                }
                data[k++] = (byte) 0x80;
                data[k++] = (byte) 0;
                data[k++] = (byte) 0;
                data[k++] = (byte) 0x01;
            }
        }
        for (int j = 0; j < w; j++) {
            data[k++] = (byte) 0xFF;
            data[k++] = (byte) 0xFF;
            data[k++] = (byte) 0xFF;
            data[k++] = (byte) 0xFF;
        }
        data[k++] = 0x0A;
        return data;
    }

    /**
     * 将bitmap图转换为头四位有宽高的光栅位图
     */
    public static byte[] getBytesFromBitMap(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int bw = (width - 1) / 8 + 1;
        Log.d("lzf", "width=" + width + ",bw=" + bw+",height="+height);
        byte[] rv = new byte[height * bw + 4];
        // xL
        rv[0] = (byte) bw;
        // xH
        rv[1] = (byte) (bw >> 8);
        rv[2] = (byte) height;
        rv[3] = (byte) (height >> 8);
        int maxSize = width * height;
        int[] pixels = new int[width * height];
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                int clr = pixels[width * i + j];
                int red = (clr & 0x00ff0000) >> 16;
                int green = (clr & 0x0000ff00) >> 8;
                int blue = clr & 0x000000ff;
                byte gray = (RGB2Gray(red, green, blue));
                rv[(width * i + j) / 8 + 4] = (byte) (rv[(width * i + j) / 8 + 4] | (gray << (7 - ((width * i + j) % 8))));
            }
        }
        return rv;
    }

    public static byte[] getBytesFromBitMap2(Bitmap bitmap) {
        int scaleHeight = bitmap.getHeight();
        int width = bitmap.getWidth();
        //宽度要是8的倍数
        int bitWidth = (bitmap.getWidth() + 7) / 8 * 8;
        Log.d("lzf", "width=" + width + "/bitWidth=" + bitWidth+",height="+scaleHeight);
        int data[] = new int[width * scaleHeight];
        byte dataVec[] = new byte[bitWidth * scaleHeight / 8 + 8];
        int k = 0;
        dataVec[k++] = 0x1D;
        dataVec[k++] = 0x76;
        dataVec[k++] = 0x30;
        dataVec[k++] = 0x00;
        dataVec[k++] = (byte) (bitWidth / 8 % 256);
        dataVec[k++] = (byte) (bitWidth / 8 / 256);
        dataVec[k++] = (byte) (scaleHeight % 256);
        dataVec[k++] = (byte) (scaleHeight / 256);
        int maxSize = width * scaleHeight;
        bitmap.getPixels(data, 0, width, 0, 0, width, scaleHeight);
        for (int h = 0; h < scaleHeight; h++) {
            for (int w = 0; w < bitWidth; w += 8) {
                int value = 0;
                for (int i = 0; i < 8; i++) {
                    int index = h * width + w + i;
                    if (w + i >= width || index >= maxSize) {
                        // 超度图片的大小零填充
                        value |= 0;
                    } else {
                        //这里就是高低在前低位在后
                        value |= px2Byte(data[index]) << (7 - i);
                    }
                }
                dataVec[k++] = (byte) value;
            }
        }
        return dataVec;
    }

    public static byte px2Byte(int pixel) {
        byte b;
        int red = (pixel & 0x00ff0000) >> 16; // 取高两位
        int green = (pixel & 0x0000ff00) >> 8; // 取中两位
        int blue = pixel & 0x000000ff; // 取低两位
        int gray = RGB2Gray2(red, green, blue);
        if (gray < 127) {
            b = 1;
        } else {
            b = 0;
        }
        return b;

    }

    private static int RGB2Gray2(int r, int g, int b) {
        return (int) (0.29900 * r + 0.58700 * g + 0.11400 * b);
    }

    /**
     * 将bitmap转成按mode指定的N点行数据
     */
    public static byte[] getBytesFromBitMap(Bitmap bitmap, int mode) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] pixels = new int[width * height];
        if (mode == 0 || mode == 1) {
            byte[] res = new byte[width * height / 8 + 5 * height / 8];
            bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
            for (int i = 0; i < height / 8; i++) {
                res[0 + i * (width + 5)] = 0x1b;
                res[1 + i * (width + 5)] = 0x2a;
                res[2 + i * (width + 5)] = (byte) mode;
                res[3 + i * (width + 5)] = (byte) (width % 256);
                res[4 + i * (width + 5)] = (byte) (width / 256);
                for (int j = 0; j < width; j++) {
                    byte gray = 0;
                    for (int m = 0; m < 8; m++) {
                        int clr = pixels[j + width * (i * 8 + m)];
                        int red = (clr & 0x00ff0000) >> 16;
                        int green = (clr & 0x0000ff00) >> 8;
                        int blue = clr & 0x000000ff;
                        gray = (byte) ((RGB2Gray(red, green, blue) << (7 - m)) | gray);
                    }
                    res[5 + j + i * (width + 5)] = gray;
                }
            }
            return res;
        } else if (mode == 32 || mode == 33) {
            byte[] res = new byte[width * height / 8 + 5 * height / 24];
            bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
            for (int i = 0; i < height / 24; i++) {
                res[0 + i * (width * 3 + 5)] = 0x1b;
                res[1 + i * (width * 3 + 5)] = 0x2a;
                res[2 + i * (width * 3 + 5)] = (byte) mode;
                res[3 + i * (width * 3 + 5)] = (byte) (width % 256);
                res[4 + i * (width * 3 + 5)] = (byte) (width / 256);
                for (int j = 0; j < width; j++) {
                    for (int n = 0; n < 3; n++) {
                        byte gray = 0;
                        for (int m = 0; m < 8; m++) {
                            int clr = pixels[j + width * (i * 24 + m + n * 8)];
                            int red = (clr & 0x00ff0000) >> 16;
                            int green = (clr & 0x0000ff00) >> 8;
                            int blue = clr & 0x000000ff;
                            gray = (byte) ((RGB2Gray(red, green, blue) << (7 - m)) | gray);
                        }
                        res[5 + j * 3 + i * (width * 3 + 5) + n] = gray;
                    }
                }
            }
            return res;
        } else {
            return new byte[]{0x0A};
        }

    }

    private static byte RGB2Gray(int r, int g, int b) {
        return (false ? ((int) (0.29900 * r + 0.58700 * g + 0.11400 * b) > 200) : ((int) (0.29900 * r + 0.58700 * g + 0.11400 * b) < 200)) ? (byte) 1
                : (byte) 0;
    }

    /**
     * 生成间断性黑块数据
     *
     * @param w : 打印纸宽度, 单位点
     */
    public static byte[] initBlackBlock(int w) {
        int ww = (w + 7) / 8;
        int n = (ww + 11) / 12;
        int hh = n * 24;
        byte[] data = new byte[hh * ww + 5];
        // xL
        data[0] = (byte) ww;
        // xH
        data[1] = (byte) (ww >> 8);
        data[2] = (byte) hh;
        data[3] = (byte) (hh >> 8);

        int k = 4;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < 24; j++) {
                for (int m = 0; m < ww; m++) {
                    if (m / 12 == i) {
                        data[k++] = (byte) 0xFF;
                    } else {
                        data[k++] = 0;
                    }
                }
            }
        }
        data[k++] = 0x0A;
        return data;
    }

    /**
     * 生成一大块黑块数据
     *
     * @param h : 黑块高度, 单位点
     * @param w : 黑块宽度, 单位点, 8的倍数
     */
    public static byte[] initBlackBlock(int h, int w) {
        int hh = h;
        int ww = (w - 1) / 8 + 1;
        byte[] data = new byte[hh * ww + 6];
        // xL
        data[0] = (byte) ww;
        // xH
        data[1] = (byte) (ww >> 8);
        data[2] = (byte) hh;
        data[3] = (byte) (hh >> 8);

        int k = 4;
        for (int i = 0; i < hh; i++) {
            for (int j = 0; j < ww; j++) {
                data[k++] = (byte) 0xFF;
            }
        }
        data[k++] = 0x00;
        data[k++] = 0x00;
        return data;
    }

    /**
     * 部分字符打印的分割线标志
     */
    public static byte[] wordData() {
        byte[] bytes = new byte[]{
                // 分割线===
                0x1B, 0x61, 0x00, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D,
                0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x0A, (byte) 0xD7, (byte) 0xD6, (byte) 0xB7, (byte) 0xFB, (byte) 0xBC,
                (byte) 0xAF, (byte) 0xC9, (byte) 0xE8, (byte) 0xD6, (byte) 0xC3, 0x0A, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D,
                0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x0A, 0x1C, 0x26, 0x1C,
                0x43, 0x00,};
        return bytes;
    }



    public static Bitmap compressBitmapByWidth(Bitmap oldBitmap, int targetWidth) {
        int width = oldBitmap.getWidth();
        int height = oldBitmap.getHeight();
        if (width <= targetWidth) {
            return oldBitmap;
        }
        int dstHeight = targetWidth * height / width;
        Bitmap compressedBitmap = Bitmap.createScaledBitmap(oldBitmap, targetWidth, dstHeight, true);
        return compressedBitmap;
    }


    public static Bitmap compressBmpByYourWidth(Bitmap bitmap, int w) {
        Bitmap resizedBitmap = null;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= w) {
            return bitmap;
        } else {
            int newHeight = height * w / width;
            float scaleWidth = (float) w / (float) width;
            float scaleHeight = (float) newHeight / (float) height;
            Matrix matrix = new Matrix();
            matrix.postScale(scaleWidth, scaleHeight);
            resizedBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
            bitmap.recycle();
            return resizedBitmap;
        }
    }

}
