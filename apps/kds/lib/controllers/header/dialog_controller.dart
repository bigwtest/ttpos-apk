// Flutter imports:
// Package imports:
import 'package:get/get.dart';
import 'package:kds/api/auth/auth_api.dart';
import 'package:kds/components/home/dialog/call_view.dart';
import 'package:kds/components/home/setting/setting.dart';
import 'package:kds/controllers/home/setting_controller.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class DialogController extends GetxController {
  get baseDialog => DialogManager.showConfirmDialog;

  void settingDialog() async {
    String password = '';
    password = await DialogManager.showPasswordDialog(
      title: '请输入密码'.tr,
      hintText: '请输入密码'.tr,
      onConfirm: ({required String password}) async {
        final res = await AuthAPI().verifyAdvancedPassword(password: password);
        return res;
      },
    );
    if (password.isEmpty) return;
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: SettingController(),
          dispose: (_) => Get.delete<SettingController>(),
          builder: (controller) {
            return HeadSetting();
          },
        ),
      ),
    );
  }

  void callDialog() {
    Get.dialog(
      DismissKeyboardDialog(
        child: CallView(),
      ),
    );
  }
}
