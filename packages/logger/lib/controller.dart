import 'package:get/get.dart';
import 'package:ttpos_logger/logger.dart';

export 'package:ttpos_logger/logger.dart' show Logger;

class LoggerController extends GetxController {
  LoggerController({this.appName = 'TTPOS'});

  final String appName;
  late Log _logger;
  Logger get logger => _logger.logger;

  @override
  void onInit() {
    _logger = Log(appName: appName);
    super.onInit();
  }

  @override
  void onClose() {
    _logger.dispose();
    super.onClose();
  }
}
