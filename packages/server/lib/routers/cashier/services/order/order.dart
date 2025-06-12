// Package imports:
import 'package:logging/logging.dart' as logging;

// Project imports:
import 'package:server/routers/cashier/services/root.dart';

class CashierOrderService extends CashierRootService {
  @override
  logging.Logger get log => logging.Logger('Cashier Order Service');
}
