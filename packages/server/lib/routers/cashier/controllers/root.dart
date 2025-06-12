// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/cashier/controllers/order/order.dart';
import 'package:server/routers/cashier/services/root.dart';
import 'package:server/routers/common/controllers/base.dart';
import 'package:server/routers/common/utils/output.dart';

class CashierRootController extends BaseController {
  @override
  logging.Logger get log => logging.Logger('Cashier Root Controller');

  final cashierRootService = CashierRootService();

  @override
  Router get router {
    final router = Router();

    router.mount('/order', CashierOrderController().router.call);
    router.all('/', (Request request) => outputNotImplemented());

    return router;
  }
}
