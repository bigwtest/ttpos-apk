// Package imports:
import 'package:logging/logging.dart' as logging;

// Project imports:
import 'package:server/routers/common/services/base.dart';

class AssistantRootService extends BaseService {
  @override
  logging.Logger get log => logging.Logger('Assistant Root Service');
}
