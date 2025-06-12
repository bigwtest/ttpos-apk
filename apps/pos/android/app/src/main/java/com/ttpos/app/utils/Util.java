package android.app.src.main.java.com.ttpos.app.utils;

import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class Util {
    public static final Pattern INVISABLE = Pattern.compile("\\s*|\t|\r|\n");

    public static String MCUStatusToString(int i) {
        switch (i) {
            case 1:
                return "Normal";
            case 2:
                return "MCU Get ChipID";
            case 3:
                return "MCU Verify MagicNumber";
            case 4:
                return "MCU Updating begin";
            case 5:
                return "MCU Updating getfile";
            case 6:
                return "MCU Updating erase";
            case 7:
                return "MCU Updating write flash";
            case 8:
                return "MCU Updating verify flash";
            case 9:
                return "MCU Updating write&verify maginnumber";
            case 10:
                return "MCU Updated Fail";
            default:
                return "unknown";
        }
    }

    public static int charToInt(int i) {
        if (i < 48 || i > 57) {
            int i2 = 65;
            if (i < 65 || i > 70) {
                i2 = 97;
                if (i < 97 || i > 102) {
                    return -1;
                }
            }
            return (i - i2) + 10;
        }
        return i - 48;
    }

    static {
        Pattern.compile("[^0-9]");
    }

    public static boolean isPlatformRK356X() {
        return Values.PLATFORM_PROP_VALUE_RK356X.equals(getPlatformName());
    }

    public static String getPlatformName() {
        return SystemProperties.get(Values.PLATFORM_PROP);
    }

    public static void writeFile(String str, String str2) {
        try {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.close();
            } else {
                Log.w("HCDPOSJAR.HCDPosUtil", "writeFile filename: " + str + " not exist or not file.");
            }
        } catch (FileNotFoundException e) {
            Log.e("HCDPOSJAR.HCDPosUtil", "writeFile fail. FileNotFoundException" + e);
            e.printStackTrace();
        } catch (IOException e2) {
            Log.e("HCDPOSJAR.HCDPosUtil", "writeFile fail. IOException" + e2);
            e2.printStackTrace();
        }
    }

    public static String filterOutPatternString(String str, Pattern pattern) {
        return str != null ? pattern.matcher(str).replaceAll("") : "";
    }

    public static String filterHexByteToString(byte b) {
        return Integer.toHexString((b & 255) | (-256)).substring(6);
    }

    public static void saveMsgToSDCard(String str, String str2) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory(), str), true);
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void waitForTimeMS(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException unused) {
            Log.e("HCDPOSJAR.HCDPosUtil", "waitForTimeMS InterruptedException");
        }
    }

    public static byte concatTwoBytesInOne(int i, int i2) {
        return (byte) (((charToInt(i) << 4) & 240) + (charToInt(i2) & 15));
    }

    public static void readToBuffer(StringBuffer stringBuffer, String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            stringBuffer.append(readLine);
        }
        bufferedReader.close();
        fileInputStream.close();
    }

    public static String readFile(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            readToBuffer(stringBuffer, str);
        } catch (Exception e) {
            Log.e("HCDPOSJAR.HCDPosUtil", "readFile fail. Exception" + e);
        }
        return stringBuffer.toString();
    }

    public static String getInfoByPath(String str) throws Throwable {
        BufferedReader bufferedReader = null;
        Throwable th;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        File file = new File(str);
        if (file.exists()) {
            BufferedReader bufferedReader2 = null;
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
            } catch (Exception unused) {
            } catch (Throwable th2) {
                bufferedReader = null;
                th = th2;
            }
            try {
                String readLine = bufferedReader.readLine();
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return readLine;
            } catch (Exception unused2) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return "";
            } catch (Throwable th3) {
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return "";
    }

    public static void SetGpio(String str, boolean z) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                if (z) {
                    fileOutputStream.write("1".getBytes());
                } else {
                    fileOutputStream.write("0".getBytes());
                }
                fileOutputStream.close();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        Log.w("HCDPOSJAR.HCDPosUtil", "SetGpio gpioPath: " + str + " not exist or not file.");
    }

    public static void doSetScannerLedFlicker(boolean z) {
        if (isSupportScannerLedFlicker()) {
            SystemProperties.set("persist.sys.hcd.scanner.led", z ? "1" : "0");
        }
    }

    public static boolean isSupportScannerLedTrigger() {
        return !Nodes.isNodeAbnormalString(Nodes.getScannerLedTrigger());
    }

    public static boolean isSupportScannerLedFlicker() {
        return !Nodes.isNodeAbnormalString(Nodes.getScannerLedFlickerPath());
    }
}
