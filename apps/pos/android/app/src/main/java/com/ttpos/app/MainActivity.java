package com.ttpos.app;

import static com.gprinter.utils.SDKUtils.checkUsbDevicePidVid;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;

import android.app.src.main.java.com.ttpos.app.utils.BytesUtil;
import android.app.src.main.java.com.ttpos.app.utils.PrintModel;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

import android.provider.Settings;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

import goserver.Goserver;
import android.app.src.main.java.com.ttpos.app.utils.SunmiScanner;
import android.app.src.main.java.com.ttpos.app.utils.Nodes;
import android.app.src.main.java.com.ttpos.app.utils.Util;
import android.app.src.main.java.com.ttpos.app.utils.Hex;
import android.app.src.main.java.com.ttpos.app.utils.PrinterQualityManager;
import android.app.src.main.java.com.ttpos.app.utils.Tools;
import android.widget.Toast;

import com.gprinter.bean.PrinterDevices;
import com.gprinter.utils.CallbackListener;
import com.gprinter.utils.Command;
import com.gprinter.utils.ConnMethod;
import com.sunmi.printerx.PrinterSdk;

import net.posprinter.IConnectListener;
import net.posprinter.IDeviceConnection;
import net.posprinter.POSConnect;
import net.posprinter.POSPrinter;

//import org.apache.commons.codec.DecoderException;
//import org.apache.commons.codec.binary.Hex;

public class MainActivity extends FlutterActivity {

  private static final String CHANNEL = "goserver.startServer";
  private static final String SCANNER_CHANNEL = "scanner.channel";
  private static final String CASH_BOX_CHANNEL = "cashbox.channel";
  private static final String PRINTER_CHANNEL = "printer.channel";
  private static final String DEVICE_ID_CHANNEL = "deviceid.channel";

  private static final String DECODE_CHANNEL = "decode.channel";

  private static final String USB_CONNECT_CHANNEL = "usb.connect.channel";
  private static boolean kernelIsRunning = false;
  private int defaultDensityDpi;
  private float defaultDensity;
  private float defaultScaledDensity;
  private SunmiScanner sunmiScanner;
  private MethodChannel scannerChannel;  // 声明为成员变量
  private MethodChannel printerChannel;  // 添加 MethodChannel

  private MethodChannel usbPrinterChannel;

  private PrinterSdk.Printer mPrinter;

  private int connectStatus = -1; //usb 连接state

  private BroadcastReceiver usbReceiver =  null;

  private ExecutorService printerExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>());
  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine);
    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
        .setMethodCallHandler(
            (call, result) -> {
              if (call.method.contentEquals("startServer")) {
                if (kernelIsRunning) {
                  result.success("");
                  return;
                }
                String dbPath = Objects.requireNonNull(call.argument("dbPath")).toString();
                new Thread(() -> {
                  // 调用aar中的方法
                  Goserver.startServer(dbPath);
                }).start();
                kernelIsRunning = true;
                result.success("");
              } else {
                result.notImplemented();
              }
            }
          );
    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CASH_BOX_CHANNEL)
        .setMethodCallHandler(
            (call,result) -> {
                if(call.method.contentEquals("open")){
                    Log.i("com.ttpos.app","打开钱箱");
                    try {
                        openDrawer();
                    } catch (RemoteException e) {
                        throw new RuntimeException(e);
                    }
                    result.success("");
                }else if(call.method.contentEquals("initScanner")){
                    closeAndInitScan();
                }
            }
        );
    printerChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), PRINTER_CHANNEL);
    printerChannel.setMethodCallHandler(
            (call, result) -> {
              String argument = (String) call.arguments;
              if (call.method.contentEquals("print")) {
                try {
                  printerText(argument);
                  result.success(true);
                } catch (Exception e) {
                  e.printStackTrace();
                  result.success(false);
                }
              } else if (call.method.contentEquals("cloudprint")) {
                try {
                  couldPrinter(argument);
                  result.success(true);
                } catch (Exception e) {
                  e.printStackTrace();
                  result.success(false);
                }
              } else if (call.method.contentEquals("usbprint")) {
                try {
                  usbPrint(argument);
                  result.success(true);
                }catch (Exception e){
                  e.printStackTrace();
                  result.success(false);
                }
              }else {
                result.notImplemented();
              }
            }
        );
    scannerChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), SCANNER_CHANNEL);
    String deviceID = Settings.Secure.getString( this.getContentResolver(), Settings.Secure.ANDROID_ID);

    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(),DECODE_CHANNEL)
        .setMethodCallHandler(
            ((call, result) -> {
                if (call.method.equals("separatorAndEncodeContent")) {
                    result.success(Tools.separatorAndEncodeContent(call.arguments.toString()));
                }
            })
        );

    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), DEVICE_ID_CHANNEL)
        .setMethodCallHandler(
            (call, result) -> {
                if (call.method.equals("deviceID")) {
                  // 处理 Flutter 端的方法调用
                  result.success(deviceID);
                } else {
                  result.notImplemented();
                }
            }
        );

    usbPrinterChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(),USB_CONNECT_CHANNEL);
    usbPrinterChannel.setMethodCallHandler(
        (call,result) -> {
          String usbPortName = (String) call.arguments;
          if (call.method.equals("connect")) {
            connectNewUSB(usbPortName);
            result.success(deviceID);
          } else {
            result.notImplemented();
          }
        }
      );
  }

  private void registerUsbReceiver() {
    if (usbReceiver == null) {
      usbReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
          String action = intent.getAction();
          if (action != null) {
              UsbDevice device = intent.getParcelableExtra(UsbManager.EXTRA_DEVICE);
              if (device != null) {
                Log.wtf("yixinusb", "是哪个设备呢？" + device);
                Map<String, Object> deviceMap = new HashMap<>();
                deviceMap.put("vendorId", device.getVendorId());
                deviceMap.put("productId", device.getProductId());
                deviceMap.put("serialNumber", device.getSerialNumber());
//                Log.wtf("yixinusb", "是哪个设备呢？" + deviceMap);
                if (action.equals(UsbManager.ACTION_USB_DEVICE_ATTACHED)) {
                  usbPrinterChannel.invokeMethod("onUsbAttached", deviceMap, new MethodChannel.Result() {
                    @Override
                    public void success(@Nullable Object result) {
                      if (result instanceof Boolean && (Boolean) result) {
                        // 只有在登录状态下才执行连接
                        connectNewUSB(device.getDeviceName().toString());
                      } else {
                        Log.wtf("yixinusb", "用户未登录，跳过USB打印机连接");
                      }
                    }

                    @Override
                    public void error(@NonNull String errorCode, @Nullable String errorMessage, @Nullable Object errorDetails) {
                      Log.e("yixinusb", "检查登录状态失败: " + errorMessage);
                    }

                    @Override
                    public void notImplemented() {
                      Log.e("yixinusb", "checkLoginStatus 方法未实现");
                    }
                  });
//                  connectNewUSB(device.getDeviceName().toString());
                } else if (action.equals(UsbManager.ACTION_USB_DEVICE_DETACHED)) {
                  usbPrinterChannel.invokeMethod("onUsbDetached", deviceMap);
                }
              }

          }
        }
      };

      IntentFilter filter = new IntentFilter();
      filter.addAction(UsbManager.ACTION_USB_DEVICE_ATTACHED);
      filter.addAction(UsbManager.ACTION_USB_DEVICE_DETACHED);
      registerReceiver(usbReceiver, filter);
    }
  }



  // 通过重置显示密度来禁用系统DisplaySize的缩放
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    Log.wtf("yixin","onCreate");
    initSunmiService();
//    initSunmiScanner();
    registerUsbReceiver();
    // 保存默认显示密度
    DisplayMetrics metrics = getResources().getDisplayMetrics();
    defaultDensityDpi = metrics.densityDpi;
    defaultDensity = metrics.density;
    defaultScaledDensity = metrics.scaledDensity;
    PrinterQualityManager.shareInstance().mContext = this;
    POSConnect.init(this);
//    connectGprinterUSB();
//
  }
  @Override
  protected void onDestroy() {
    super.onDestroy();
    sunmiScanner.closeScannerListener();
    sunmiScanner.destory();
    if (usbReceiver != null) {
      unregisterReceiver(usbReceiver);
      usbReceiver = null;
    }
  }

  private void closeAndInitScan(){
    sunmiScanner.closeScannerListener();

    sunmiScanner = new SunmiScanner(getApplicationContext());
    sunmiScanner.analysisBroadcast();

    sunmiScanner.setScannerListener(new SunmiScanner.OnScannerListener() {
      @Override
      public void onScanData(String data, SunmiScanner.DATA_DISCRIBUTE_TYPE type) {
        Log.i("yixin", "扫码数据1:" + data);
        String trimData = data.trim();//去除前后空格
        new Handler(Looper.getMainLooper()).post(() -> scannerChannel.invokeMethod("onScanResult", trimData));
      }
      @Override
      public void onResponseData(String data, SunmiScanner.DATA_DISCRIBUTE_TYPE type) {}
      @Override
      public void onResponseTimeout() {
        Log.i("com.ttpos.app", "指令响应超时\n");
        Toast.makeText(getApplicationContext(), "指令响应超时", Toast.LENGTH_SHORT).show();
      }
    });
  }

  private void initSunmiService(){
    if (mPrinter == null) {
      Log.i("com.ttpos.app", "PrinterSDK 初始化");
      try {
        PrinterSdk.getInstance().getPrinter(this, new PrinterSdk.PrinterListen() {
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
      Log.i("com.ttpos.app", "PrinterSDK 初始化成功");
    }
  }
  public void openDrawer() throws RemoteException {
    doOpenCashBox();
    // 创建PrintProxy对象
    if (mPrinter == null) {
      Log.i("com.ttpos.app", "PrinterSDK 为空");
      return;
    }
    byte[] aa = new byte[5];
    aa[0] = 0x10;
    aa[1] = 0x14;
    aa[2] = 0x00;
    aa[3] = 0x00;
    aa[4] = 0x00;
    try {
      mPrinter.commandApi().sendEscCommand(aa);

    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  private void printerText(String content) throws Exception{
    Log.wtf("fuyixin",content);
    printerExecutor.execute(() -> {
      try {
        Thread.sleep(400);
        Socket s = new Socket();
        s.connect(new InetSocketAddress("127.0.0.1",9101));
        byte[] init = new byte[]{0x1B, 0x40};
        OutputStream outputStream = s.getOutputStream();
        outputStream.write(init);
        byte[] printData = BytesUtil.getBytesFromHexString(content);
        outputStream.write(printData);
//                    outputStream.write(new byte[]{0x1D, 0x56, 0x00}); //切刀
        outputStream.close();
        Log.d("Exception", "发送成功: ");
      } catch (Exception e) {
        String errorMessage = (e instanceof IOException)? "连接错误" : "解码错误";
        Log.d("Exception", errorMessage + ": " + e.getMessage());
      }

    });
    if(mPrinter == null){
      return;
    }
    // 0x1C, 0x2E, 0x1B, 0x74, 0x15 CP874
    // {0x1C, 0x26, 0x1C, 0x43, 0xFF}  utf-8
    byte[] prefixData = new byte[]{0x1C, 0x26, 0x1C, 0x43, (byte) 0xFF};
    Hex hex = new Hex("CP874");
    byte[] printData = hex.decodeHex(content);
    try {
      mPrinter.commandApi().sendEscCommand(prefixData);
      mPrinter.commandApi().sendEscCommand(printData);
    } catch (Exception e) {
      Log.i("com.ttpos.app", e.toString());
    }

  }

  private void couldPrinter(String content) throws Exception{

    PrintModel printModel =  PrintModel.fromJson(JSON.parseObject(content, Feature.OrderedField));
    if (printModel.getPrinter_type().equals("CASHIER")) {
      if (printModel.getPrint_times() < 1 ) {
        printModel.setPrint_times(1);
      }

      // 自带打印机
      for (int i = 0; i < printModel.getPrint_times(); i++) {
        try {

          printerText(printModel.getData());

        } catch (Exception e) {
          e.printStackTrace();
        }
      }
      PrinterQualityManager.shareInstance().updatePrint(printModel, 2);
    } else {
      PrinterQualityManager.shareInstance().addPrint(printModel);
    }
  }

  private void usbPrint(String content){
    PrintModel printModel =  PrintModel.fromJson(JSON.parseObject(content, Feature.OrderedField));
    Log.wtf("printModel",printModel.toString());
    posPrinter = new POSPrinter(curConnect);
    int copies = printModel.getCopies() > 0 ? printModel.getCopies() : 1;
    if (printModel.getPrint_method() == 1){
      for (int i = 0; i < copies; i++) {
        USBPrintText(printModel.getData());
      }
    }else{
      for (int i = 0; i < copies; i++) {
        USBGPrintImage(printModel.getData());
      }
    }
  }

  private IConnectListener connectListener = (code, connInfo, msg) -> {
    switch (code) {
      case POSConnect.CONNECT_SUCCESS:
        connectStatus = 1;
        Log.wtf("fuyixinusb","连接成功"+connInfo);
        usbPrinterChannel.invokeMethod("onConnected",connInfo);
        break;
      case POSConnect.CONNECT_FAIL:
        connectStatus = 0;
        break;
      case POSConnect.CONNECT_INTERRUPT:
        connectStatus = 0;
        break;
      case POSConnect.SEND_FAIL:
        Log.wtf("打印失败？？？？？？",msg);
        break;
      case POSConnect.USB_DETACHED:
        Log.wtf("fuyixinusb","断连断连断连断连断连断连"+connInfo);
        connectStatus = 0;

        break;
      case POSConnect.USB_ATTACHED:
        Log.wtf("fuyixinusb","USB已连接");
        break;

      default:
        // Handle other cases if necessary
        break;
    }
  };
  private POSPrinter posPrinter ;
  private void USBGPrintImage(String content) {
    try{
      if (connectStatus == -1) {
        // 未连接需要重新连接USB
        Log.d("connectStatus", "USB未连接: "+connectStatus);
        Toast.makeText(getApplicationContext(), "USB未连接", Toast.LENGTH_SHORT).show();
        return;
      }
      if (connectStatus == 1){
          posPrinter.sendData(Tools.getBytesFromHexString(content));
      }
    }catch (Exception e) {
      Log.d("USBPrint", e.getMessage());
    }
  }

  public void USBPrintText(String content)  {
//    Log.d("USBPrint", "USBPrint: "+content);
    try {
      if (connectStatus == -1) {
        Log.d("connectStatus", "USB未连接: "+connectStatus);
        Toast.makeText(getApplicationContext(), "USB未连接", Toast.LENGTH_SHORT).show();
        return;
      }
      if (connectStatus == 1) {
        Log.d("connectStatus", "connectStatus: "+connectStatus);
        List<String> seg = Tools.separatorContent(content);
        byte[] init = new byte[]{0x1B,0x40}; // 初始化打印机指令
        byte[] th_bytes = new byte[]{0x1C, 0x2E}; // 泰语头
        byte[] other_bytes = new byte[]{0x1C, 0x26}; // 其他语头

          posPrinter.sendData(init);
          if (seg != null) {
            for (String item : seg) {
              Pattern thPattern = Pattern.compile("\\p{InThai}");
              if (thPattern.matcher(item).find() || item.contains("฿")) {
                // 泰语相关编码
                posPrinter.sendData(th_bytes);
                byte[] decode = Tools.stringToByte("UTF-8","CP874",item);
                if (decode != null) {
                  posPrinter.sendData(decode);
                }
              } else {
                // 其他相关编码
                posPrinter.sendData(other_bytes);
                byte[] decode = Tools.stringToByte("UTF-8","GBK",item);
                if (decode != null) {
                  posPrinter.sendData(decode);
                }
              }
            }

        }
      }
    } catch (Exception e) {
      Log.d("USBPrint", e.getMessage());
    }

  }

  private IDeviceConnection curConnect = null;
  public void connectNewUSB(String UsbPortName){
    if (curConnect != null) {
      curConnect.close();
    }
    // 创建新的设备连接
    curConnect = POSConnect.createDevice(POSConnect.DEVICE_TYPE_USB);

    // 确保 curConnect 不为 null，进行连接
    Log.wtf("yixinusb",UsbPortName);
    curConnect.connectSync(UsbPortName, connectListener);
    Log.wtf("yixinusb",curConnect.getConnectInfo());
  }




  @Override
  public void onConfigurationChanged(Configuration newConfig) {
    super.onConfigurationChanged(newConfig);
    // 配置变化时重置显示密度
    resetDisplayMetrics();
  }

  @Override
  public Resources getResources() {
    Resources resources = super.getResources();
    if (resources != null) {
      Configuration configuration = resources.getConfiguration();
      DisplayMetrics displayMetrics = resources.getDisplayMetrics();

      // 设置为默认显示密度
      configuration.densityDpi = defaultDensityDpi;
      displayMetrics.density = defaultDensity;
      displayMetrics.scaledDensity = defaultScaledDensity;
      displayMetrics.densityDpi = defaultDensityDpi;

      resources.updateConfiguration(configuration, displayMetrics);
    }
    return resources;
  }
  private void resetDisplayMetrics() {
    Resources resources = getResources();
    if (resources != null) {
      Configuration configuration = resources.getConfiguration();
      DisplayMetrics displayMetrics = resources.getDisplayMetrics();

      configuration.densityDpi = defaultDensityDpi;
      displayMetrics.density = defaultDensity;
      displayMetrics.scaledDensity = defaultScaledDensity;
      displayMetrics.densityDpi = defaultDensityDpi;

      resources.updateConfiguration(configuration, displayMetrics);
    }
  }
  private void initSunmiScanner(){
//    Log.wtf("yixin","扫码枪初始化扫码枪初始化扫码枪初始化扫码枪初始化");
    sunmiScanner = new SunmiScanner(getApplicationContext());
    sunmiScanner.analysisBroadcast();

    sunmiScanner.setScannerListener(new SunmiScanner.OnScannerListener() {
      @Override
      public void onScanData(String data, SunmiScanner.DATA_DISCRIBUTE_TYPE type) {
        Log.i("yixin", "扫码数据1:" + data);
        String trimData = data.trim();//去除前后空格
        new Handler(Looper.getMainLooper()).post(() -> scannerChannel.invokeMethod("onScanResult", trimData));
      }
      @Override
      public void onResponseData(String data, SunmiScanner.DATA_DISCRIBUTE_TYPE type) {}
      @Override
      public void onResponseTimeout() {
        Log.i("com.ttpos.app", "指令响应超时\n");
        Toast.makeText(getApplicationContext(), "指令响应超时", Toast.LENGTH_SHORT).show();
      }
    });
  }
  public static void doOpenCashBox() {
    String cashBox1 = Nodes.getCashBox1();
    if (!Nodes.isNodeAbnormalString(cashBox1)) {
      Util.writeFile(cashBox1, "100");
    }
    String cashBox2 = Nodes.getCashBox2();
    if (!Nodes.isNodeAbnormalString(cashBox2)) {
      Util.writeFile(cashBox2, "100");
    }
    String cashBox3 = Nodes.getCashBox3();
    if (Nodes.isNodeAbnormalString(cashBox3)) {
      return;
    }
    Util.writeFile(cashBox3, "100");
  }

  /*@Override
  public boolean onKeyDown(int keyCode, KeyEvent event) {
    if(sunmiScanner == null){
      initSunmiScanner();
    }

    if(event.getDeviceId() == -1) return super.onKeyDown(keyCode, event);
    if (event.getAction() == KeyEvent.ACTION_DOWN) {
      Log.wtf("yixin",event.toString());

        // 数字键输入
        if (sunmiScanner != null){
          Log.wtf("yixin","丢给sunmi处理");
          sunmiScanner.analysisKeyEvent(event);
        }


    }
    return super.onKeyDown(keyCode, event);
  }*/

  @Override
  public boolean dispatchKeyEvent(KeyEvent event) {
    int keyCode = event.getKeyCode();
    int action = event.getAction();
//    Log.d("deviceId", "dispatchKeyEvent: " +keyCode);


    if(sunmiScanner == null){
      initSunmiScanner();
      Log.wtf("yixin","扫码枪初始化扫码枪初始化扫码枪初始化扫码枪初始化扫码枪初始化");
//      Toast.makeText(getApplicationContext(), "扫码枪为空", Toast.LENGTH_SHORT).show();
    }else{
//      Toast.makeText(getApplicationContext(), "扫码枪不为空", Toast.LENGTH_SHORT).show();
    }

    // 在这里可以根据 keyCode 和 action 进行拦截判断
    if (action == KeyEvent.ACTION_DOWN) {
      // 示例：拦截所有按键输入
      if (sunmiScanner != null){
        sunmiScanner.analysisKeyEvent(event);
      }
      return true;
    }

    // 如果不拦截，让事件继续分发
    return super.dispatchKeyEvent(event);
  }
  /* public void connectGprinterUSB() {
    UsbManager manager = (UsbManager) this.getSystemService(Context.USB_SERVICE);
    // Get the list of attached devices
    HashMap<String, UsbDevice> devices = manager.getDeviceList();
    Log.wtf("yixinadb",devices.toString());
    Iterator<UsbDevice> deviceIterator = devices.values().iterator();

    int count = devices.size();
    if (count > 0) {
      boolean gprinterFound = false;
      for (UsbDevice device : devices.values()) {
          gprinterFound = true;
          PrinterDevices usb = new PrinterDevices.Build()
                  .setContext(this)
                  .setConnMethod(ConnMethod.USB)
                  .setUsbDevice(device)
                  .setCommand(Command.ESC)
                  .setCallbackListener(this)
                  .build();

          break; // 找到第一个Gprinter设备后停止搜索

      }

      if (!gprinterFound) {
        Toast.makeText(this, "未找到Gprinter打印机设备", Toast.LENGTH_LONG).show();
      }
    } else {
      Toast.makeText(this, "当前无USB设备", Toast.LENGTH_LONG).show();
    }
  }
  private boolean isGprinterDevice(UsbDevice device) {
    int vendorId = device.getVendorId();
    int productId = device.getProductId();

    // 判断是否为Gprinter设备 (VendorID=1137, ProductID=85)
    return vendorId == 1137 && productId == 85;
  }
  @Override
  public void onConnecting() {
      Log.w("yixin","连接？？？？");
  }

  @Override
  public void onCheckCommand() {

  }

  @Override
  public void onSuccess(PrinterDevices printerDevices) {
    connectStatus = 1;
  }

  @Override
  public void onReceive(byte[] data) {

  }

  @Override
  public void onFailure() {
    connectStatus = 0;
  }

  @Override
  public void onDisconnect() {

  }*/
}


