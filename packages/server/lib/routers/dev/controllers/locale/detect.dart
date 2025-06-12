// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/common/utils/output.dart';
import 'package:server/routers/dev/controllers/root.dart';

class DevLocaleDetectController extends DevRootController {
  @override
  logging.Logger get log => logging.Logger('Dev Locale Detect Controller');

  @override
  Router get router {
    final router = Router();

    router.all('/detect', detect);

    return router;
  }

  Future<Response> detect(Request request) async {
    return outputSuccess(data: request.context['locale']);
  }
}
