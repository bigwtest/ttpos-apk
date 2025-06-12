import 'package:get/get.dart';
import 'package:tablet/components/open/tips/views/open_tips_dialog.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';

class OpenDialogController extends GetxController {
  void openTipsDialog() {
    Get.dialog(
      DismissKeyboardDialog(
        child: OpenTipsDialog(),
      ),
    );
  }
}
