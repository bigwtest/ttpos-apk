// Package imports:
import 'package:logging/logging.dart' as logging;

// Project imports:
import 'package:server/routers/common/services/base.dart';

class CashierRootService extends BaseService {
  @override
  logging.Logger get log => logging.Logger('Cashier Root Service');
}
