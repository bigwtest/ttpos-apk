package com.hitosea.sunmi;

import android.graphics.Bitmap;
import android.util.Log;

import java.io.ByteArrayOutputStream;


public class ESCUtil {

    /**
     * Escape
     */
    public static final byte ESC = 0x1B;

    /**
     * Text delimiter 文本分隔符
     */
    public static final byte FS = 0x1C;

    /**
     * Group separator 组分离器
     */
    public static final byte GS = 0x1D;

    /**
     * data link escape
     */
    public static final byte DLE = 0x10;

    /**
     * End of transmission
     */
    public static final byte EOT = 0x04;

    /**
     * Enquiry character
     */
    public static final byte ENQ = 0x05;

    /**
     * Spaces
     */
    public static final byte SP = 0x20;

    /**
     * Horizontal list
     */
    public static final byte HT = 0x09;

    /**
     * 打印和包装（水平方向）
     */
    public static final byte LF = 0x0A;

    /**
     * Home key
     */
    public static final byte CR = 0x0D;

    /**
     * Carriage control (print and return to the standard mode (in page mode))
     */
    public static final byte FF = 0x0C;

    /**
     * Canceled (cancel print data in page mode)
     */
    public static final byte CAN = 0x18;

    /**
     * 初始化打印机
     */
    public static byte[] initPrinter() {
        byte[] result = new byte[2];
        result[0] = ESC;
        result[1] = 0x40;
        return result;
    }

    /**
     * 打印浓度指令
     */
    public static byte[] setPrinterDarkness(int value) {
        byte[] result = new byte[9];
        result[0] = GS;
        result[1] = 40;
        result[2] = 69;
        result[3] = 4;
        result[4] = 0;
        result[5] = 5;
        result[6] = 5;
        result[7] = (byte) (value >> 8);
        result[8] = (byte) value;
        return result;
    }

    /**
     * 打印单个二维码 sunmi自定义指令
     *
     * @param code : 二维码数据
     * @param :    二维码块大小(单位:点, 取值 1 至 16 )
     * @param :    二维码纠错等级(0 至 3) 0 -- 纠错级别L ( 7%) 1 -- 纠错级别M (15%) 2 -- 纠错级别Q
     *             (25%) 3 -- 纠错级别H (30%)
     */
    public static byte[] getPrintQrCode(String code,String charset, int moduleSize, int errorLevel) {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        try {
            buffer.write(setQrCodeSize(moduleSize));
            buffer.write(setQrCodeErrorLevel(errorLevel));
            buffer.write(getQrCodeBytes(code,charset));
            buffer.write(getBytesForPrintQrCode(true));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return buffer.toByteArray();
    }

    /**
     * 横向两个二维码 sunmi自定义指令
     *
     * @param code1 : 二维码数据
     * @param code2 : 二维码数据
     * @param :     二维码块大小(单位:点, 取值 1 至 16 )
     * @param :     二维码纠错等级(0 至 3) 0 -- 纠错级别L ( 7%) 1 -- 纠错级别M (15%) 2 -- 纠错级别Q
     *              (25%) 3 -- 纠错级别H (30%)
     */
    public static byte[] getPrintDoubleQrCode(String code1, String code2,String charset, int moduleSize, int errorLevel) {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        try {
            buffer.write(setQrCodeSize(moduleSize));
            buffer.write(setQrCodeErrorLevel(errorLevel));
            buffer.write(getQrCodeBytes(code1,charset));
            buffer.write(getBytesForPrintQrCode(false));
            buffer.write(getQrCodeBytes(code2,charset));
            // 加入横向间隔
            buffer.write(new byte[]{0x1B, 0x5C, 0x18, 0x00});

            buffer.write(getBytesForPrintQrCode(true));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return buffer.toByteArray();
    }

    /**
     * 打印一维条形码
     */
    public static byte[] getPrintBarCode(String data,String charset, int logy, int height, int width, int textPosition) {
        if (logy < 0 || logy > 10) {
            return new byte[]{LF};
        }

        if (width < 2 || width > 6) {
            width = 2;
        }

        if (textPosition < 0 || textPosition > 3) {
            textPosition = 0;
        }

        if (height < 1 || height > 255) {
            height = 162;
        }

        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        try {
            buffer.write(new byte[]{0x1D, 0x66, 0x01, 0x1D, 0x48, (byte) textPosition, 0x1D, 0x77, (byte) width, 0x1D, 0x68, (byte) height, 0x0A});

            byte[] barcode;
            if (logy == 10) {
                barcode = BytesUtil.getBytesFromDecString(data);
            } else {
                barcode = data.getBytes(charset);
            }

            if (logy > 7) {
                buffer.write(new byte[]{0x1D, 0x6B, 0x49, (byte) (barcode.length + 2), 0x7B, (byte) (0x41 + logy - 8)});
            } else {
                buffer.write(new byte[]{0x1D, 0x6B, (byte) (logy + 0x41), (byte) barcode.length});
            }
            buffer.write(barcode);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return buffer.toByteArray();
    }


    public static byte[] getBitmapBytes(Bitmap bitmap) {
        int scaleHeight = bitmap.getHeight();
        int width = bitmap.getWidth();
        //宽度要是8的倍数
        int bitWidth = (bitmap.getWidth() + 7) / 8 * 8;
        int data[] = new int[width * scaleHeight];
        byte dataVec[] = new byte[bitWidth * scaleHeight / 8 + 8];
        long start = System.currentTimeMillis();
        dataVec[0] = 29;
        dataVec[1] = 118;
        dataVec[2] = 48;
        dataVec[3] = 0;
        dataVec[4] = (byte) (bitWidth / 8 % 256);
        dataVec[5] = (byte) (bitWidth / 8 / 256);
        dataVec[6] = (byte) (scaleHeight % 256);
        dataVec[7] = (byte) (scaleHeight / 256);
        int maxSize = width * scaleHeight;
        int k = 8;
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
        int gray = RGB2Gray(red, green, blue);
        if (gray < 127) {
            b = 1;
        } else {
            b = 0;
        }
        return b;

    }

    private static int RGB2Gray(int r, int g, int b) {
        return (int) (0.29900 * r + 0.58700 * g + 0.11400 * b);
    }

    /**
     * 光栅位图打印
     */
    public static byte[] printBitmap(Bitmap bitmap) {
        byte[] bytes1 = new byte[4];
        bytes1[0] = GS;
        bytes1[1] = 0x76;
        bytes1[2] = 0x30;
        bytes1[3] = 0x00;
        byte[] bytes2 = BytesUtil.getBytesFromBitMap(bitmap);
        return BytesUtil.byteMerger(bytes1, bytes2);
    }

    public static byte[] printBitmap2(Bitmap bitmap) {
        return BytesUtil.getBytesFromBitMap2(bitmap);
    }
    /**
     * 光栅位图打印 设置mode
     */
    public static byte[] printBitmap(Bitmap bitmap, int mode) {
        byte[] bytes1 = new byte[4];
        bytes1[0] = GS;
        bytes1[1] = 0x76;
        bytes1[2] = 0x30;
        bytes1[3] = (byte) mode;

        byte[] bytes2 = BytesUtil.getBytesFromBitMap(bitmap);
        return BytesUtil.byteMerger(bytes1, bytes2);
    }

    /**
     * 光栅位图打印
     */
    public static byte[] printBitmap(byte[] bytes) {
        byte[] bytes1 = new byte[4];
        bytes1[0] = GS;
        bytes1[1] = 0x76;
        bytes1[2] = 0x30;
        bytes1[3] = 0x00;

        return BytesUtil.byteMerger(bytes1, bytes);
    }

    /**
     * 选择位图指令 设置mode 需要设置1B 33 00将行间距设为0
     */
    public static byte[] selectBitmap(Bitmap bitmap, int mode) {
        return BytesUtil.byteMerger(BytesUtil.byteMerger(new byte[]{0x1B, 0x33, 0x00}, BytesUtil.getBytesFromBitMap(bitmap, mode)), new byte[]{0x0A, 0x1B,
                0x32});
    }

    /**
     * 跳指定行数
     */
    public static byte[] nextLine(int lineNum) {
        byte[] result = new byte[lineNum];
        for (int i = 0; i < lineNum; i++) {
            result[i] = LF;
        }

        return result;
    }

    /**
     * 设置下划线1点
     */
    public static byte[] underlineWithOneDotWidthOn() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 45;
        result[2] = 1;
        return result;
    }

    /**
     * 设置下划线2点
     */
    public static byte[] underlineWithTwoDotWidthOn() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 45;
        result[2] = 2;
        return result;
    }

    /**
     * 取消下划线
     */
    public static byte[] underlineOff() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 45;
        result[2] = 0;
        return result;
    }

    // ------------------------bold-----------------------------

    /**
     * 字体加粗
     */
    public static byte[] boldOn() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 69;
        result[2] = 0xF;
        return result;
    }

    /**
     * 取消字体加粗
     */
    public static byte[] boldOff() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 69;
        result[2] = 0;
        return result;
    }

    // ------------------------character-----------------------------

    /**
     * 单字节模式开启
     */
    public static byte[] singleByte() {
        byte[] result = new byte[2];
        result[0] = FS;
        result[1] = 0x2E;
        return result;
    }

    /**
     * 单字节模式关闭
     */
    public static byte[] singleByteOff() {
        byte[] result = new byte[2];
        result[0] = FS;
        result[1] = 0x26;
        return result;
    }

    /**
     * 设置单字节字符集
     */
    public static byte[] setCodeSystemSingle(byte charset) {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 0x74;
        result[2] = charset;
        return result;
    }

    /**
     * 设置多字节字符集
     */
    public static byte[] setCodeSystem(byte charset) {
        byte[] result = new byte[3];
        result[0] = FS;
        result[1] = 0x43;
        result[2] = charset;
        return result;
    }

    // ------------------------Align-----------------------------

    /**
     * 居左对齐
     */
    public static byte[] alignLeft() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 97;
        result[2] = 0;
        return result;
    }

    /**
     * 居中对齐
     */
    public static byte[] alignCenter() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 97;
        result[2] = 1;
        return result;
    }

    /**
     * 居右对齐
     */
    public static byte[] alignRight() {
        byte[] result = new byte[3];
        result[0] = ESC;
        result[1] = 97;
        result[2] = 2;
        return result;
    }

    /**
     * 切刀
     */
    public static byte[] cutter() {
        // byte[] data = new byte[]{0x1d, 0x56, 0x01};
        // byte[] data = new byte[]{29, 86, (byte) 1};
        return new byte[]{GS, 'V', 0x00};
    }

    /**
     * 走纸到黑标
     */
    public static byte[] go() {
        return new byte[]{0x1C, 0x28, 0x4C, 0x02, 0x00, 0x42, 0x31};
    }

    /**
     * 二维码块大小设置指令
     */
    private static byte[] setQrCodeSize(int moduleSize) {
        byte[] dtmp = new byte[8];
        dtmp[0] = GS;
        dtmp[1] = 0x28;
        dtmp[2] = 0x6B;
        dtmp[3] = 0x03;
        dtmp[4] = 0x00;
        dtmp[5] = 0x31;
        dtmp[6] = 0x43;
        dtmp[7] = (byte) moduleSize;
        return dtmp;
    }

    /**
     * 二维码纠错等级设置指令
     */
    private static byte[] setQrCodeErrorLevel(int errorLevel) {
        byte[] dtmp = new byte[8];
        dtmp[0] = GS;
        dtmp[1] = 0x28;
        dtmp[2] = 0x6B;
        dtmp[3] = 0x03;
        dtmp[4] = 0x00;
        dtmp[5] = 0x31;
        dtmp[6] = 0x45;
        dtmp[7] = (byte) (48 + errorLevel);
        return dtmp;
    }

    /**
     * 打印已存入数据的二维码
     */
    private static byte[] getBytesForPrintQrCode(boolean single) {
        byte[] dtmp;
        // 同一行只打印一个QRCode， 后面加换行
        if (single) {
            dtmp = new byte[9];
            dtmp[8] = 0x0A;
        } else {
            dtmp = new byte[8];
        }
        dtmp[0] = 0x1D;
        dtmp[1] = 0x28;
        dtmp[2] = 0x6B;
        dtmp[3] = 0x03;
        dtmp[4] = 0x00;
        dtmp[5] = 0x31;
        dtmp[6] = 0x51;
        dtmp[7] = 0x30;
        return dtmp;
    }

    /**
     * 二维码存入指令
     */
    private static byte[] getQrCodeBytes(String code,String charset) {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        try {
            byte[] d = code.getBytes(charset);
            int len = d.length + 3;
            if (len > 7092) {
                len = 7092;
            }
            buffer.write((byte) 0x1D);
            buffer.write((byte) 0x28);
            buffer.write((byte) 0x6B);
            buffer.write((byte) len);
            buffer.write((byte) (len >> 8));
            buffer.write((byte) 0x31);
            buffer.write((byte) 0x50);
            buffer.write((byte) 0x30);
            for (int i = 0; i < d.length && i < len; i++) {
                buffer.write(d[i]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return buffer.toByteArray();
    }

    /**
     * 设置字体大小
     */

    public static byte[] setTextSize(int size) {
        return fontSize(size).getBytes();
    }

    /**
     * 字体的大小
     *
     * @param fontSize 0:正常大小 1:两倍高 2:两倍宽 3:两倍大小 4:三倍高 5:三倍宽 6:三倍大小 7:四倍高 8:四倍宽
     *                 9:四倍大小 10:五倍高 11:五倍宽 12:五倍大小
     */
    public static String fontSize(int fontSize) {
        String cmdstr = "";
        // 设置字体大小
        switch (fontSize) {
            case -1:
                // // 29 33
                // cmdstr = new StringBuffer().append((char) 29).append((char) 33)
                // .append((char) 0).toString();
                // break;
            case 0:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 0).toString();
                break;
            case 1:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 1).toString();
                break;
            case 2:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 16).toString();
                break;
            case 3:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 17).toString();
                break;
            case 4:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 2).toString();
                break;
            case 5:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 32).toString();
                break;
            case 6:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 34).toString();
                break;
            case 7:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 3).toString();
                break;
            case 8:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 48).toString();
                break;
            case 9:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 51).toString();
                break;
            case 10:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 4).toString();
                break;
            case 11:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 64).toString();
                break;
            case 12:
                cmdstr = new StringBuffer().append((char) 29).append((char) 33).append((char) 68).toString();
                break;
            default:
                break;

        }
        return cmdstr;
    }
}
