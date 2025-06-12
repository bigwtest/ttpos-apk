package android.app.src.main.java.com.ttpos.app.utils;

import android.content.Context;
import android.content.SharedPreferences;

public class LocalStorage {
    static String storeKey = "printStoreKey";

    /**
     * 保存对象列表到本地
     * @param json 内容
     * @param context 上下文
     */
    public static void saveToLocal(String json, Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("my_preferences", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(storeKey, json);
        editor.apply();
    }

    /**
     * 获取保存的列表
     * @param context 上下文
     * @return 返回的json字符串
     */
    public static String getLocal(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("my_preferences", Context.MODE_PRIVATE);
        return sharedPreferences.getString(storeKey,"[]");
    }
}
