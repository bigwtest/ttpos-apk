package com.hitosea.sunmi;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.print.PrintManager;
import android.util.Log;
import android.util.Printer;
import android.widget.Toast;

import androidx.annotation.RequiresApi;

import com.alibaba.fastjson.JSONObject;
//import com.hcd.hcdpos.cashbox.Cashbox;
import com.sunmi.printerx.PrinterSdk;
import com.sunmi.printerx.SdkException;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import woyou.aidlservice.jiuiv5.ICallback;
import woyou.aidlservice.jiuiv5.IWoyouService;

public class ServiceSington {
    private static ServiceSington instance = new ServiceSington();
    // 本地打印机队列
    private ExecutorService printerExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>());

    private ServiceSington() {
        // 私有构造函数，防止外部实例化
    }

    public static ServiceSington getInstance() {
        return instance;
    }

    private Context context;

    private IWoyouService woyouService;

    private PrinterSdk.Printer mPrinter;

    private ServiceConnection connService = new ServiceConnection() {

        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            woyouService = IWoyouService.Stub.asInterface(service);
//            Toast.makeText(context, "服务已连接:", Toast.LENGTH_SHORT).show();
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            woyouService = null;
//            Toast.makeText(context, "服务已断开:", Toast.LENGTH_SHORT).show();
        }
    };

    public void attemptsInit(Context context) {
//        if (woyouService == null) {
//            Binding(context);
//        }
        if (mPrinter == null) {
            Log.i("com.ttpos.app", "PrinterSDK 初始化");
            try {
                PrinterSdk.getInstance().getPrinter(context, new PrinterSdk.PrinterListen() {
                    @Override
                    public void onDefPrinter(PrinterSdk.Printer printer) {
                        mPrinter = printer;
                    }

                    @Override
                    public void onPrinters(List<PrinterSdk.Printer> list) {

                    }

                });
            } catch (Exception e) {
                Log.i("com.ttpos.app", "PrinterSDK 初始化失败"+e.toString());
                mPrinter = null;
//                Toast.makeText(context, "打印服务异常:", Toast.LENGTH_SHORT).show();
            }

        }
    }

    public void Binding(Context context) {
        this.context = context;
        Intent intent=new Intent();
        intent.setPackage("woyou.aidlservice.jiuiv5");
        intent.setAction("woyou.aidlservice.jiuiv5.IWoyouService");
        context.bindService(intent, connService, Context.BIND_AUTO_CREATE);

    }

    public static void enableCashBox(){
//        Cashbox.doOpenCashBox();

    }

    public void openDrawer() throws RemoteException {
        Log.i("com.ttpos.app", "PrinterSDK 打开钱箱");

        // 创建PrintProxy对象

        if (mPrinter == null) {
            Log.i("com.ttpos.app", "PrinterSDK 为null???");
            return;
        }
        byte[] aa = new byte[5];
        aa[0] = 0x10;
        aa[1] = 0x14;
        aa[2] = 0x00;
        aa[3] = 0x00;
        aa[4] = 0x00;
        try {
            Log.i("com.ttpos.app", "PrinterSDK 发送钱箱指令");
            mPrinter.commandApi().sendEscCommand(aa);
            Log.i("com.ttpos.app", "PrinterSDK 发送钱箱指令是否完成");

        } catch (Exception e) {
            e.printStackTrace();
        }

//
//        if (woyouService == null) {
//            return;
//        }
//        woyouService.openDrawer(new ICallback() {
//            @Override
//            public void onRunResult(boolean isSuccess) throws RemoteException {
//                JSONObject data = new JSONObject();
//                data.put("result", isSuccess);
//
//            }
//
//            @Override
//            public void onReturnString(String result) throws RemoteException {
//                Toast.makeText(context, result, Toast.LENGTH_SHORT).show();
//            }
//
//            @Override
//            public void onRaiseException(int code, String msg) throws RemoteException {
//                Toast.makeText(context, msg, Toast.LENGTH_SHORT).show();
//            }
//
//            @Override
//            public void onPrintResult(int code, String msg) throws RemoteException {
//
//            }
//
//            @Override
//            public IBinder asBinder() {
//                return null;
//            }
//        });

    }

    public void printText(String content) throws RemoteException, UnsupportedEncodingException, DecoderException {

        printerExecutor.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(400);
                    Socket s = new Socket();
                    s.connect(new InetSocketAddress("127.0.0.1",9101));
                    byte[] init = new byte[]{0x1B, 0x40};
                    OutputStream outputStream = s.getOutputStream();

//                    outputStream.write(new byte[]{0x10,0x04,0x02});
                    outputStream.write(init);
//                    Hex hex = new Hex("CP874");
                    byte[] printData = BytesUtil.getBytesFromHexString(content);
                    outputStream.write(printData);
//                    outputStream.write(new byte[]{0x1D, 0x56, 0x00}); //切刀
                    outputStream.close();
                    Log.d("Exception", "发送成功: ");
                } catch (IOException e) {
                    Log.d("Exception", "连接错误: " + e.getMessage());
//                    showToast("连接错误:" + e.getMessage());
                    // Toast.makeText(this, "连接错误:"+e.getMessage(), Toast.LENGTH_LONG).show();
//                        throw new RuntimeException(e);
                } catch (Exception e) {
                    Log.d("Exception", "解码错误: " + e.getMessage());
                }
            }
        });
        if (mPrinter == null) {
            return;
        }
        // 0x1C, 0x2E, 0x1B, 0x74, 0x15 CP874
        // {0x1C, 0x26, 0x1C, 0x43, 0xFF}  utf-8
//        content = "1b61010a1b33501b2118e0b882e0b989e0b8ade0b8a1e0b8b9e0b8a5e0b881e0b8b2e0b8a3e0b882e0b8b2e0b8a20a0a1b321b21001b61001b240000e0b980e0b8a7e0b8a5e0b8b21b244b00313937302d30312d30312030383a30303a3030e0b896e0b8b6e0b887323032342d30312d32352032303a34303a35310a0a1b321b21001b6100e0b8abe0b8a1e0b8a7e0b894e0b8abe0b8a1e0b8b9e0b9882020202020202020202020202020202020202020202020e0b888e0b8b3e0b899e0b8a7e0b899202020202020e0b888e0b8b3e0b899e0b8a7e0b899e0b980e0b887e0b8b4e0b8992d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
        byte[] prefixData = new byte[]{0x1C, 0x26, 0x1C, 0x43, (byte) 0xFF};

        Hex hex = new Hex("CP874");
        byte[] printData = hex.decodeHex(content);
        try {
            mPrinter.commandApi().sendEscCommand(prefixData);
            mPrinter.commandApi().sendEscCommand(printData);
        } catch (Exception e) {
            e.printStackTrace();
        }

//        mPrinter.sendRAWData(prefixData, null);

//        woyouService.sendRAWData(printData, new ICallback.Stub() {
//            @Override
//            public void onRunResult(boolean isSuccess) throws RemoteException {
//                Log.d("sendRAWData", "onRunResult: "+isSuccess);
//            }
//
//            @Override
//            public void onReturnString(String result) throws RemoteException {
//                Log.d("sendRAWData", "onReturnString: "+result);
//            }
//
//            @Override
//            public void onRaiseException(int code, String msg) throws RemoteException {
//                Log.d("sendRAWData", "onRaiseException: "+ msg);
//            }
//
//            @Override
//            public void onPrintResult(int code, String msg) throws RemoteException {
//                Log.d("sendRAWData", "onPrintResult: "+ msg);
//            }
//
//            @Override
//            public IBinder asBinder() {
//                return null;
//            }
//        });
    }

    public void cloudPrint(String content) {
        new Thread(new Runnable(){
            @RequiresApi(api = Build.VERSION_CODES.KITKAT)
            @Override
            public void run() {

            }
        }).start();
    }

    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    public void separatorContent(String content) {
        CharsetDecoder decoder = StandardCharsets.UTF_8.newDecoder()
                .onMalformedInput(java.nio.charset.CodingErrorAction.IGNORE);

        try {
            ByteBuffer byteBuffer = ByteBuffer.wrap(content.getBytes(StandardCharsets.UTF_8));
            String convertedContent = decoder.decode(byteBuffer).toString();

            String regex = "([\\p{InThai}\\p{InHANGUL_COMPATIBILITY_JAMO}฿]+)";
            List<String> segments = new ArrayList<>();

            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(convertedContent);

            int start = 0;
            while (matcher.find()) {
                if (matcher.start() > start) {
                    segments.add(convertedContent.substring(start, matcher.start()));
                }
                segments.add(matcher.group());
                start = matcher.end();
            }

            if (start < convertedContent.length()) {
                segments.add(convertedContent.substring(start));
            }

            System.out.println(segments);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
