part of 'controller.dart';

class TokenController extends getx.GetxController {
  final SharedPreferencesWithCache _storage = getx.Get.find<SharedPreferencesWithCache>();

  final getx.RxString _token = ''.obs;
  String? get token => _token.value.isNotEmpty ? _token.value : null;
  set token(String? value) => _token.value = value ?? '';

  bool get isLogin => _token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    // 初始化时从本地存储加载token
    loadToken();
  }

  Future<void> loadToken() async {
    try {
      token = _storage.getString(StorageKey.authToken.asString);
    } catch (error, stackTrace) {
      debugPrint('loadToken Error: $error\n$stackTrace');
    }
  }

  // 保存token
  Future<void> saveToken(String value) async {
    try {
      if (value.isEmpty) return;
      await _storage.setString(StorageKey.authToken.asString, value);
      token = value;
    } catch (error, stackTrace) {
      debugPrint('saveToken Error: $error\n$stackTrace');
    }
  }

  // 清除token
  Future<void> clearToken() async {
    try {
      await _storage.remove(StorageKey.authToken.asString);
      token = '';
    } catch (error, stackTrace) {
      debugPrint('clearToken Error: $error\n$stackTrace');
    }
  }
}
