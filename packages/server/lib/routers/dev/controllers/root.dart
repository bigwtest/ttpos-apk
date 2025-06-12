// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/common/controllers/base.dart';
import 'package:server/routers/dev/controllers/locale/detect.dart';
import 'package:server/routers/dev/controllers/printer/generate.dart';

class DevRootController extends BaseController {
  @override
  logging.Logger get log => logging.Logger('Dev Root Controller');

  @override
  Router get router {
    final router = Router();

    router.mount('/printer', DevPrinterGenerateController().router.call);
    router.mount('/locale', DevLocaleDetectController().router.call);

    return router;
  }
}
