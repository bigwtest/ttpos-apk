// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/setting/setting_api.dart';
import 'package:pos/model/response/setting/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';

class AcceptSettingController extends GetxController {
  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  final RxBool _isSubmitLoading = false.obs;
  bool get isSubmitLoading => _isSubmitLoading.value;

  final RxString _autoAccept = ''.obs;
  bool get autoAccept => _autoAccept.value == '1';
  void changeAutoAccept(bool value) {
    _autoAccept.value = value ? '1' : '0';
  }

  final RxString _maxAmount = ''.obs;
  String get maxAmount => _maxAmount.value;
  void changeMaxAmount(String value) {
    if (value.isEmpty) {
      _maxAmount.value = '';
      return;
    }
    _maxAmount.value = value;
  }

  final RxString _voiceNotification = ''.obs;
  bool get voiceNotification => _voiceNotification.value == '1';
  void changeVoiceNotification(bool value) {
    _voiceNotification.value = value ? '1' : '0';
  }

  void submit() {
    _editAcceptOrderSetting();
    _setVoiceNotification();
  }

  @override
  void onInit() {
    super.onInit();

    _getAcceptSetting();
  }

  void _setVoiceNotification() {
    _storage.setString(StorageKey.acceptOrderVoiceNotification.asString, _voiceNotification.value);
  }

  void _getAcceptSetting() async {
    if (_isLoading.value) return;
    _isLoading.value = true;
    try {
      final SettingResponse? response = await SettingAPI().getSetting(
        options: ExtraRequestOptions(
          showFailToast: true,
          showGlobalLoading: true,
        ),
      );
      if (response == null) return;
      final acceptOrderSetting = response.acceptOrder;
      if (acceptOrderSetting != null) {
        _autoAccept.value = acceptOrderSetting.isAutoOrder ?? '';
        _maxAmount.value = acceptOrderSetting.autoOrderLimit ?? '';
      }
      final storageVoiceNotification = _storage.getString(StorageKey.acceptOrderVoiceNotification.asString);
      if (storageVoiceNotification != null) {
        _voiceNotification.value = storageVoiceNotification;
      } else {
        _voiceNotification.value = acceptOrderSetting?.isAutoVoice ?? '';
      }
    } catch (error, stackTrace) {
      _logger.severe('getDeskCategoryFromAPI Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  void _editAcceptOrderSetting() async {
    if (_isSubmitLoading.value) return;
    _isSubmitLoading.value = true;
    try {
      final response = await SettingAPI().editAcceptOrderSetting(
        isAutoOrder: _autoAccept.value,
        autoOrderLimit: maxAmount,
        options: ExtraRequestOptions(
          showSuccessToast: true,
          showFailToast: true,
        ),
      );
      if (response) {
        Get.back();
      }
    } catch (error, stackTrace) {
      _logger.severe('editAcceptOrderSetting Error:', error, stackTrace);
    } finally {
      _isSubmitLoading.value = false;
    }
  }
}
