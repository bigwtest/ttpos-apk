import 'package:assistant/components/cashier/cashier.dart';
import 'package:assistant/routers/name.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';

class DeskMainController {
  // 跟踪弹窗状态
  static bool _isShowingDialog = false;

  static Future<void> showCasherDialog() async {
    /// 如果当前页面是收银交班页面，则不弹窗
    if (Get.currentRoute == RouteNames.cashier) return;

    /// 如果已经弹窗，则不弹窗
    if (_isShowingDialog) return;

    _isShowingDialog = true;

    await Get.dialog<bool>(
      DismissKeyboardDialog(
        child: Cashier(
          title: '收银交班'.tr,
          isShowDesc: true,
          isShowIcon: true,
          onConfirm: () {
            _isShowingDialog = false;
            Get.back();
          },
        ),
      ),
      barrierDismissible: false,
    );

    _isShowingDialog = false;
  }
}
