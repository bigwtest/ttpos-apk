// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/common/controllers/base.dart';
import 'package:server/routers/common/utils/output.dart';
import 'package:server/routers/kitchen/services/root.dart';

class KitchenRootController extends BaseController {
  @override
  logging.Logger get log => logging.Logger('Kitchen Root Controller');

  final kitchenRootService = KitchenRootService();

  @override
  Router get router {
    final router = Router();

    router.all('/', (Request request) => outputNotImplemented());

    return router;
  }
}
