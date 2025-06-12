// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/cashier/controllers/root.dart';
import 'package:server/routers/cashier/services/order/order.dart';
import 'package:server/routers/common/utils/output.dart';

class CashierOrderController extends CashierRootController {
  @override
  logging.Logger get log => logging.Logger('Cashier Order Controller');

  final cashierOrderService = CashierOrderService();

  @override
  Router get router {
    final router = Router();

    router.get('/', getAll);
    router.get('/<id>', getById);
    router.post('/', create);
    router.put('/<id>', update);
    router.delete('/<id>', delete);

    return router;
  }

  @override
  Future<Response> getAll(Request request) async {
    return outputSuccess();
  }
}
