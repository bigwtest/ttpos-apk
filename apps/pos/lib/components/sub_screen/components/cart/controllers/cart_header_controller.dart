import 'package:get/get.dart';

class CartHeaderController extends GetxController {
  // 应用名称
  final RxString _appName = 'TTPOS'.obs;
  String get appName => _appName.value;
  set appName(String value) {
    if (_appName.value == value) return;
    _appName.value = value;
  }

  // 应用logo
  final RxString _appLogo = ''.obs;
  String get appLogo => _appLogo.value;
  set appLogo(String value) {
    if (_appLogo.value == value) return;
    _appLogo.value = value;
  }
}
