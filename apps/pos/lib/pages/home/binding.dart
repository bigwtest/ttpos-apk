// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/accept/accept_api.dart';
import 'package:pos/api/call/call_api.dart';
import 'package:pos/api/print/print_api.dart';
import 'package:pos/api/usb_print/usb_print_api.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
import 'package:pos/controllers/common/advertisement_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/controllers/common/tts_controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/usb_print/req_usb_printer_data.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/notification_controller.dart';
import 'package:ttpos_ui/controllers/print_queue_controller.dart';
import 'package:ttpos_ui/controllers/usb_printer/usb_device_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // 请求轮播图接口
    Get.put<AdvertisementController>(AdvertisementController(), permanent: true);

    /// 全局抽屉
    Get.lazyPut(() => CustomDrawerController(), fenix: true);

    /// 侧边导航
    Get.put<MenuController>(MenuController(), permanent: true);

    /// TTS
    Get.lazyPut(() => TTSController(), fenix: true);

    /// 卡片样式-控制器
    Get.lazyPut(() => CardStyleController(), fenix: true);

    /// 字体大小控制器
    Get.lazyPut(() => FontSizeController(), fenix: true);

    /// USB设备控制器
    Get.put(
      UsbDeviceController(
        reportUsbPrinterData: ({required List<ReqUsbPrinterData> data}) => UsbPrintAPI().reportPrinterData(data: data),
      ),
    );

    // 未处理呼叫
    Get.put(
      NotificationController(
        callbacks: NotificationControllerCallbacks(
          getUnprocessedNotice: () => CallAPI().getUnprocessedNotice(),
          handleUnprocessedCall: (uuid) => CallAPI().callFinish(uuid),
          removeAbnormalPrint: (uuid) => CallAPI().deletePrint(uuid),
          reprintAbnormalPrint: (uuid) => CallAPI().reprint(uuid),
          acceptOrder: (uuid) => AcceptAPI().acceptOrder(uuid),
          rejectOrder: (uuid) => AcceptAPI().rejectOrder(uuid),
          ttsCall: (callText) => TTSController().addTextToSpeakQueue(callText),
        ),
      ),
    );

    /// 打印队列服务
    Get.put(
      PrintQueueController(
        getData: PrintAPI().getPrintList,
        reportData: (data) => PrintAPI().reportPrinterData(
          data: data,
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
        ),
      ),
    );
  }
}
