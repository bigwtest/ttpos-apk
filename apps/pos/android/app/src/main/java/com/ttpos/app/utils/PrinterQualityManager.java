package android.app.src.main.java.com.ttpos.app.utils;

import android.app.src.main.java.com.ttpos.app.utils.PrintConfigModel;
import android.app.src.main.java.com.ttpos.app.utils.Tools;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Key;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import android.app.src.main.java.com.ttpos.app.utils.PrintModel;
import android.app.src.main.java.com.ttpos.app.utils.LocalStorage;

import io.flutter.plugin.common.MethodChannel;
import io.flutter.embedding.engine.FlutterEngine;
public class PrinterQualityManager {
    public Context mContext;

    
    private static PrinterQualityManager instance;
    private List<PrintModel> failList = new ArrayList<>();

    OkHttpClient client = new OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .addInterceptor(new RetryInterceptor(3)) // 设置重试次数
        .build();
    // 芯烨队列
    private ExecutorService executor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>());
    // 商米队列
    private ExecutorService sunmi_executor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>());

    private PrinterQualityManager() {
        // 私有构造方法
    }

    public static synchronized PrinterQualityManager shareInstance() {
        if (instance == null) {
            instance = new PrinterQualityManager();
        }
        return instance;
    }

    /**
     * 数据初始化
     */
    public void dataInit() {
        String failJson = LocalStorage.getLocal(mContext);
        List<JSONObject> jsonObjects = JSON.parseArray(failJson, JSONObject.class);

        for (JSONObject item : jsonObjects) {
            PrintModel model = PrintModel.fromJson(item);
            failList.add(model);
        }
        // 延迟同步
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                // 在延时后执行的任务代码写在这里
                sysData();
            }
        }, 6000);

    }

    /**
     * 加入打印队列
     *
     * @param printModel 打印模版
     */
    public void addPrint(PrintModel printModel) {
        if (printModel.getPrinter_type().equals("XPRINTER_LAN") || printModel.getPrinter_type().equals("XPRINTER_WIFI")) {
            sendToService(printModel);
        } else if (printModel.getPrinter_type().equals("SUNMI_LAN")) {
            sendToSunMiLan(printModel);
        } else if (printModel.getPrinter_type().equals("SUNMI_CLOUD")) {
            sendToCloudMiLan(printModel);
        } else {
            sendToService(printModel);
        }
        /*if(printModel.getPrinter_type().equals("SUNMI_LAN")){
            sendToSunMiLan(printModel);
        }else if(printModel.getPrinter_type().equals("SUNMI_CLOUD")) {
            sendToCloudMiLan(printModel);
        }*/
    }


    /**
     * 删除打印对象
     *
     * @param id 对象id
     */
    public void deletePrint(int id) {

        List<PrintModel> filteredList = failList.stream()
            .filter(s -> s.getId() != id)
            .collect(Collectors.toList());
        failList = filteredList;

        sysData();
    }

    /**
     * 重新打印
     *
     * @param id 对象id
     */
    public void rePrint(int id) {
        for (int i = 0; i < failList.size(); i++) {
            PrintModel model = failList.get(i);
            if (model.getId() == id) {
                //
                addPrint(model);
                return;
            }
        }
    }

    /**
     * 与web同步
     */
    public void sysData() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {

                List<JSONObject> list = new ArrayList<>();
                List<JSONObject> storeList = new ArrayList<>();
                for (int i = 0; i < failList.size(); i++) {
                    PrintModel model = failList.get(i);
                    JSONObject obj = model.fromModel(); // config 存在转义字符串 网页无法识别 只发送部分参数
                    list.add(obj);
                    JSONObject fullobj = model.fromFullModel(); // 存储本地需要全部字符串
                    storeList.add(fullobj);
                }

                String jsonString = JSON.toJSONString(list);
                String fullString = JSON.toJSONString(storeList);
//                LocalStorage.saveToLocal(fullString, mContext);


            }
        });

    }

    /**
     * 失败回调 去重后加入失败队列
     *
     * @param printModel 失败对象
     */
    private void handleFail(PrintModel printModel, String reason) {
        Log.d("printerSend", "fail: " + printModel.getId());

        if (reason != null) {
            printModel.setReason(reason);
        }
        if (failList.size() == 0) {
            failList.add(printModel);
            sysData();
        } else {
            boolean has = false;
            for (int i = 0; i < failList.size(); i++) {
                if (failList.get(i).getId() == printModel.getId()) {
                    // id相同 不处理了
                    has = true;
                }
            }
            if (has == false) {
                failList.add(printModel);
                sysData();
            }

        }

        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                    JSONObject result = new JSONObject();
                    result.put("id", printModel.getId());
                    result.put("status", 0);

            }
        });

        updatePrint(printModel, 0);
    }

    /**
     * 打印成功删除对象
     *
     * @param printModel 打印对象
     */
    private void handleSuccess(PrintModel printModel) {
        List<PrintModel> filteredList = failList.stream()
            .filter(s -> s.getId() != printModel.getId())
            .collect(Collectors.toList());
        failList = filteredList;
        sysData();

        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                    JSONObject result = new JSONObject();
                    result.put("id", printModel.getId());
                    result.put("status", 1);

            }
        });
        updatePrint(printModel, 2);
    }

    /**
     * 云打印成功删除对象
     */
    private void handleCloudPrintReport(PrintModel printModel, int status, int code, String msg) {
        if (status == 0) {
            handleFail(printModel, code + ": " + msg);
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                    JSONObject result = new JSONObject();
                    result.put("id", printModel.getId());
                    result.put("status", status);
                    result.put("code", code);
                    result.put("msg", msg);
            }
        });
    }

    /**
     * 收银机回传当前打印状态
     *
     * @param printModel 打印模型
     * @param status     状态 0失败 2成功
     */
    public void updatePrint(PrintModel printModel, int status) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                    JSONObject result = new JSONObject();
                    result.put("id", printModel.getId());
                    result.put("status", status);
            }
        });
    }

    /**
     * 芯烨打印机加入队列
     *
     * @param printModel 打印对象
     */
    private void sendToService(PrintModel printModel) {

        executor.execute(new Runnable() {
            @Override
            public void run() {

                try {
                    PrintConfigModel printconfigModel = PrintConfigModel.fromJson(JSON.parseObject(printModel.getPrinter_config(), Feature.OrderedField));
                    List<String> seg = null;

                    if (printModel.getPrint_method() == 2) {
                        // 图片打印

                    } else {
                        // 文本打印
                        seg = Tools.separatorContent(printModel.getData());
                        if (seg == null) {
                            handleFail(printModel, null);
                            return;
                        }
                    }


                    int printTimes = printModel.getCopies() > 0 ? printModel.getCopies() : 1; // 打印次数

                    for (int i = 0; i < printTimes; i++) {
                        int repeatTime = 5;
                        boolean isComplete = false;
                        for (int a = 0; a < repeatTime; a++) {
                            if (socketSend(printconfigModel, seg, printModel.getData())) {
                                isComplete = true;
                                break;
                            }
                        }

                        if (!isComplete) {
                            // 其中一次失败尝试后就返回错误
                            handleFail(printModel, null);
                            return;
                        }
                    }

                    // 成功回调
                    handleSuccess(printModel);
                } catch (Exception e) {
                    e.printStackTrace();
                    handleFail(printModel, null);
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        @Override
                        public void run() {
                        }
                    });

                }
            }
        });
    }

    /**
     * 芯烨打印机发送指令
     *
     * @param printConfigModel 打印机配置
     * @param seg              打印内容数组
     * @return
     */
    private boolean socketSend(PrintConfigModel printConfigModel, List<String> seg, String imageContent) {
        byte[] init = new byte[]{0x1B, 0x40}; // 初始化打印机指令
        byte[] th_bytes = new byte[]{0x1C, 0x2E}; // 泰语头
        byte[] ko_bytes = new byte[]{0x1C, 0x26}; // 韩语头
        byte[] other_bytes = new byte[]{0x1C, 0x26}; // 其他语头

        try {
            Thread.sleep(500);
            Socket s = new Socket();
            s.connect(new InetSocketAddress(printConfigModel.getIP(), printConfigModel.getPORT()));
            OutputStream outputStream = s.getOutputStream();
            outputStream.write(init);// 初始化打印机
            if (seg != null) {
                for (String item : seg) {
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
            } else {
                outputStream.write(Tools.getBytesFromHexString(imageContent));
            }
            outputStream.close(); // 关闭socket
            Log.d("printerSend", "success");
            Thread.sleep(1000);
            //成功发送
            return true;
        } catch (IOException e) {
//                    showToast("连接错误:" + e.getMessage());
            e.printStackTrace();
            return false;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 商米打印机加入队列
     *
     * @param printModel 打印对象
     */
    private void sendToSunMiLan(PrintModel printModel) {

        sunmi_executor.execute(new Runnable() {
            @Override
            public void run() {
                Log.d("商米打印机", "enter");
                PrintConfigModel printconfigModel = PrintConfigModel.fromJson(JSON.parseObject(printModel.getPrinter_config(), Feature.OrderedField));
                String path = "/cgi-bin/print.cgi";
                String url = "http://" + printconfigModel.getIP() + path + "?sn=" + printconfigModel.getSN() + "&copies=" + printModel.getCopies();

                Log.d("商米打印机", "run: " + url);
                MediaType JSON = MediaType.parse("application/text; charset=utf-8"); // 数据类型为text格式，
                String jsonStr = printModel.getData();//text格式数据.
                RequestBody body = RequestBody.create(JSON, jsonStr);
                Request request = new Request.Builder()//创建Request 对象。
                    .url(url)
                    .post(body)//传递请求体
                    .build();

                // 执行同步请求
                try {
                    Response response = client.newCall(request).execute();

                  // 检查响应是否成功
                    if (response.isSuccessful()) {
                       Log.d("商米打印机", "成功");
                       handleSuccess(printModel);
                    } else {
                       Log.d("商米打印机", "失败");
                       handleFail(printModel, null);
                    }

                    // 关闭响应体
                    response.close();
                } catch (IOException e) {
                    Log.d("商米打印机", "失败");
                    handleFail(printModel, null);
                    e.printStackTrace();
                }
//                client.newCall(request).enqueue(new Callback() {
//                    @Override
//                    public void onFailure(Call call, IOException e) {
//                        Log.d("商米打印机", "失败");
//                        handleFail(printModel, null);
//                    }
//
//                    @Override
//                    public void onResponse(Call call, Response response) throws IOException {
//                        Log.d("商米打印机", "成功");
//                        handleSuccess(printModel);
//                    }
//                });
            }
        });

    }

    /**
     * 商米打印机云打印
     *
     * @param printModel 打印对象
     */
    private void sendToCloudMiLan(PrintModel printModel) {

        Log.d("商米云打印机", "enter");
        sunmi_executor.execute(new Runnable() {
            @Override
            public void run() {
                PrintConfigModel printconfigModel = PrintConfigModel.fromJson(JSON.parseObject(printModel.getPrinter_config(), Feature.OrderedField));
//                String path = "/cgi-bin/print.cgi";
                String url = "https://openapi.sunmi.com/v2/printer/open/open/device/pushContent";

                JSONObject jsonBody = new JSONObject();
                jsonBody.put("trade_no", generateRandomString(32));
                jsonBody.put("sn", printconfigModel.getSN());
                jsonBody.put("content", printModel.getData());
                jsonBody.put("count", 1);
                String appid = printconfigModel.getAPP_ID();
                String nonce = "123456";
                String appkey = printconfigModel.getAPP_KEY();
                Long ts = System.currentTimeMillis() / 1000;
                String signStr = jsonBody.toJSONString() + appid + ts + nonce;
                String sign;
                try {
                    sign = generateSign(jsonBody.toString(), ts.toString(), nonce, appid, appkey);
                } catch (Exception e) {
                    Log.d("商米云打印机", "signfail");
                    e.printStackTrace();
                    return;
                }

                Log.d("商米云打印机", "sn: " + printconfigModel.getSN());
                Log.d("商米云打印机", "APP_ID: " + appid);
                Log.d("商米云打印机", "appkey: " + appkey);
                Log.d("商米云打印机", "sign: " + sign);
                Log.d("商米云打印机", "signStr: " + signStr);

                OkHttpClient client = new OkHttpClient().newBuilder().protocols(Collections.singletonList(Protocol.HTTP_1_1)).build();

                MediaType JSON = MediaType.parse("application/json; charset=utf-8");
                RequestBody body = RequestBody.create(JSON, jsonBody.toString());
                Log.d("商米云打印机", "body: " + body.toString());

                Request request = new Request.Builder()
                    .url(url)
                    .header("Sunmi-Appid", appid)
                    .header("Sunmi-Nonce", nonce)
                    .header("Sunmi-Timestamp", ts.toString())
                    .header("Sunmi-Sign", sign)
                    .header("Source", "openapi")
                    .header("Content-Type", "application/json")
                    .post(body)
                    .build();
                // 执行同步请求
                try {
                    Response response = client.newCall(request).execute();

                    // 检查响应是否成功
                    if (response.isSuccessful()) {
                        try {
                            String responseBody = response.body().string();
                            Log.d("商米云打印机", responseBody);
                            JSONObject jsonObject = JSONObject.parseObject(responseBody);
                            if (jsonObject.getIntValue("code") == 1 || jsonObject.getIntValue("code") == 10000) {
                                Log.d("商米云打印机", "成功发送");
                                handleSuccess(printModel);
                                handleCloudPrintReport(printModel, 2, jsonObject.getIntValue("code"), jsonObject.getString("msg"));
                                return;
                            }

                            handleCloudPrintReport(printModel, 0, jsonObject.getIntValue("code"), jsonObject.getString("msg"));
                        } catch (IOException ex) {
                            ex.printStackTrace();
                            handleCloudPrintReport(printModel, 0, 0, "连接服务器异常");
                            Log.d("商米云打印机", "失败");
                        }
                    } else {
                        Log.d("商米云打印机", "失败");
                        handleFail(printModel, null);
                    }

                    // 关闭响应体
                    response.close();
                } catch (IOException e) {
                    Log.d("商米云打印机", "失败");
                    handleFail(printModel, null);
                    e.printStackTrace();
                }

//                client.newCall(request).enqueue(new Callback() {
//                    @Override
//                    public void onFailure(Call call, IOException e) {
//                        Log.d("商米云打印机", "失败");
//                        handleFail(printModel, null);
//                    }
//
//                    @Override
//                    public void onResponse(Call call, Response response)  {
//
//                            try {
//                                String responseBody = response.body().string();
//                                Log.d("商米云打印机", responseBody);
//                                JSONObject jsonObject = JSONObject.parseObject(responseBody);
//                                if (jsonObject.getIntValue("code") == 1 || jsonObject.getIntValue("code") == 10000 ) {
//                                    Log.d("商米云打印机", "成功发送");
//                                    handleSuccess(printModel);
//                                    handleCloudPrintReport(printModel, 2, jsonObject.getIntValue("code"),  jsonObject.getString("msg"));
//                                    return;
//                                }
//
//                                handleCloudPrintReport(printModel,0, jsonObject.getIntValue("code"), jsonObject.getString("msg"));
//                            } catch (IOException ex) {
//                                ex.printStackTrace();
//                                handleCloudPrintReport(printModel,0, 0, "连接服务器异常");
//                                Log.d("商米云打印机", "失败");
//                            }
////                        } else {
////                            Log.d("商米云打印机", "失败");
////                        }
//                    }
//                });
            }
        });

    }

    // 自定义重试拦截器
    public static class RetryInterceptor implements Interceptor {
        private int maxRetries;
        private int retries = 0;

        public RetryInterceptor(int maxRetries) {
            this.maxRetries = maxRetries;
        }

        @Override
        public Response intercept(Chain chain) throws IOException {
            Request request = chain.request();
            Response response = chain.proceed(request);

            while (!response.isSuccessful() && retries < maxRetries) {
                retries++;
                response = chain.proceed(request);
            }

            return response;
        }
    }

    public static String generateSign(String body, String timestamp, String nonce, String APP_ID, String APP_KEY) throws Exception {
        String msg = body + APP_ID + timestamp + nonce;
        Mac hmacSha256 = Mac.getInstance("HmacSHA256");
        SecretKeySpec secretKey = new SecretKeySpec(APP_KEY.getBytes(), "HmacSHA256");
        hmacSha256.init(secretKey);
        byte[] result = hmacSha256.doFinal(msg.getBytes("UTF-8"));
        return bytesToHexString(result);
    }

    public static String bytesToHexString(byte[] bytes) {
        StringBuilder hexstr = new StringBuilder();
        for (byte i : bytes)
            hexstr.append(String.format("%02x", i));
        return hexstr.toString();
    }

    public static String hmacSha256(String data, String key) {
        try {
            // 创建一个密钥
            Key secretKey = new SecretKeySpec(key.getBytes(), "HmacSHA256");
            // 获取Mac实例
            Mac mac = Mac.getInstance("HmacSHA256");
            // 初始化Mac实例
            mac.init(secretKey);
            // 计算数据的HMAC值
            byte[] rawHmac = mac.doFinal(data.getBytes());
            // 将HMAC值转换为Base64字符串
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                return Base64.getEncoder().encodeToString(rawHmac);
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String generateRandomString(int length) {
        String characters = "abcdefghijklmnopqrstuvwxyz1234567890";
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder(length);

        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(characters.length());
            sb.append(characters.charAt(randomIndex));
        }

        return sb.toString();
    }
}


