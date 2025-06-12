import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class OpenDialogController extends GetxController {
  get openBaseDialog => DialogManager.showConfirmDialog;
}
