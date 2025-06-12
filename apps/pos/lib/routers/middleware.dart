// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';

class MainMiddleware {
  static handleRoute(Routing? routing) async {
    final controller = Get.find<LoggerController>();
    controller.logger.info(routing?.current);
    controller.logger.info(
      '\n'
      '----------- handleRoute --------\n'
      'current route: ${routing?.current}\n'
      'previous route: ${routing?.previous}\n'
      'isDialog: ${routing?.isDialog}\n'
      'isBottomSheet: ${routing?.isBottomSheet}\n'
      'removed: ${routing?.removed}\n'
      '--------------------------------',
    );
  }
}
