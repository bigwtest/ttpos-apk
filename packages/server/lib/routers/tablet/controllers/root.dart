// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/common/controllers/base.dart';
import 'package:server/routers/common/utils/output.dart';
import 'package:server/routers/tablet/services/root.dart';

class TabletRootController extends BaseController {
  @override
  logging.Logger get log => logging.Logger('Tablet Root Controller');

  final tabletRootService = TabletRootService();

  @override
  Router get router {
    final router = Router();

    router.all('/', (Request request) => outputNotImplemented());

    return router;
  }
}
