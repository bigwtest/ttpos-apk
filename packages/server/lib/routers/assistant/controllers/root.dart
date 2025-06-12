// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/routers/assistant/services/root.dart';
import 'package:server/routers/common/controllers/base.dart';
import 'package:server/routers/common/utils/output.dart';

class AssistantRootController extends BaseController {
  @override
  logging.Logger get log => logging.Logger('Assistant Root Controller');

  final assistantRootService = AssistantRootService();

  @override
  Router get router {
    final router = Router();

    router.all('/', (Request request) => outputNotImplemented());

    return router;
  }
}
