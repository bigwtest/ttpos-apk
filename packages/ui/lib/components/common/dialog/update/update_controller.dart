import 'package:get/get.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/common/dialog/update/update.dart';
import 'package:ttpos_ui/components/common/dialog/update/update_api.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateController extends GetxController {
  //
  final Log _logger = Log(appName: 'UpdateController');
  Logger get logger => _logger.logger;

  final RxString _version = ''.obs;
  String get version => _version.value;
  set version(String val) {
    _version.value = val;
  }

  final RxString _updateContent = ''.obs;
  String get updateContent => _updateContent.value;
  set updateContent(String val) {
    _updateContent.value = val;
  }

  final RxBool _isForceUpdate = false.obs;
  bool get isForceUpdate => _isForceUpdate.value;
  set isForceUpdate(bool val) {
    _isForceUpdate.value = val;
  }

  final RxString _downloadUrl = ''.obs;
  set downloadUrl(String val) {
    _downloadUrl.value = val;
  }

  /// 比较版本号
  /// 返回 true 表示新版本号大于当前版本号
  bool _compareVersions(String newVersion, String currentVersion) {
    try {
      // 将版本号分割成数组
      final newParts = newVersion.split('.');
      final currentParts = currentVersion.split('.');

      // 获取最大长度
      final maxLength = newParts.length > currentParts.length ? newParts.length : currentParts.length;

      // 比较每个部分
      for (int i = 0; i < maxLength; i++) {
        // 如果某个部分不存在，默认为0
        final newPart = i < newParts.length ? int.parse(newParts[i]) : 0;
        final currentPart = i < currentParts.length ? int.parse(currentParts[i]) : 0;

        if (newPart > currentPart) {
          return true;
        } else if (newPart < currentPart) {
          return false;
        }
      }
      return false; // 如果所有部分都相等，返回false
    } catch (e) {
      logger.severe('版本号比较异常: $e');
      return false;
    }
  }

  // 调用接口，获取更新信息 如果存在更新，则打开更新对话框
  /// currentType: 是什么端传过来，就调那个端的请求更新接口
  /// cashier
  /// assistant
  /// tablet
  /// kitchen
  Future<void> checkUpdate({
    required String currentType,
    required String currentVersion, // 添加当前版本号参数
  }) async {
    try {
      final response = await UpdateAPI().checkUpdate(
        branch: 'TTPOS',
        currentType: currentType,
        options: ExtraRequestOptions(
          showGlobalLoading: true,
          showFailToast: true,
        ),
      );

      // 如果服务器返回的版本号为空，说明没有更新
      if (response.versionName.isEmpty) {
        DialogManager.showToast('当前已是最新版本'.tr);
        return;
      }

      // 比较版本号
      if (!_compareVersions(response.versionName, currentVersion)) {
        DialogManager.showToast('当前已是最新版本'.tr);
        return;
      }

      _version.value = response.versionName;
      _updateContent.value = response.updateLog;
      _isForceUpdate.value = response.forcedUpdate == 1 ? true : false;
      _downloadUrl.value = response.downloadUrl;
      await Get.dialog(
        DismissKeyboardDialog(
          child: UpdateDialogView(),
        ),
        barrierDismissible: !isForceUpdate,
      );
    } catch (e) {
      logger.severe('检查更新异常: $e');
    }
  }

  Future<void> launchURL() async {
    if (_downloadUrl.value.isNotEmpty) {
      await launchUrl(
        Uri.parse(_downloadUrl.value),
        mode: LaunchMode.externalApplication,
      );
    } else {
      DialogManager.showToast('更新错误: $_downloadUrl');
    }
  }
}
