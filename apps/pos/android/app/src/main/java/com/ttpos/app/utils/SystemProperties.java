package android.app.src.main.java.com.ttpos.app.utils;

/* loaded from: classes.dex */
public class SystemProperties {
    private static final Class<?> SP = getSystemPropertiesClass();

    public static String get(String str) {
        try {
            return (String) SP.getMethod("get", String.class).invoke(null, str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String get(String str, String str2) {
        try {
            return (String) SP.getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean getBoolean(String str, boolean z) {
        try {
            return ((Boolean) SP.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(null, str, Boolean.valueOf(z))).booleanValue();
        } catch (Exception unused) {
            return z;
        }
    }

    public static int getInt(String str, int i) {
        try {
            return ((Integer) SP.getMethod("getInt", String.class, Integer.TYPE).invoke(null, str, Integer.valueOf(i))).intValue();
        } catch (Exception unused) {
            return i;
        }
    }

    public static void set(String str, String str2) {
        try {
            SP.getMethod("set", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
        }
    }

    private static Class<?> getSystemPropertiesClass() {
        try {
            return Class.forName("android.os.SystemProperties");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
