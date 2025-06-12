// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'package:server/prisma.dart' as prisma;
import 'package:server/prisma/client.dart';
import 'package:server/routers/common/services/base.dart';
import 'package:server/routers/common/utils/multipart.dart';
import 'package:server/routers/common/utils/output.dart';
import 'package:server/routers/common/utils/validator.dart';

abstract class ServerController {
  PrismaClient? get prismaClient;

  Router get router;

  logging.Logger get log;

  Future<Response> getAll(Request request);
  Future<Response> getById(Request request, String id);
  Future<Response> create(Request request);
  Future<Response> update(Request request, String id);
  Future<Response> delete(Request request, String id);
}

class BaseController implements ServerController {
  @override
  final PrismaClient? prismaClient = prisma.prismaClient;

  final baseService = BaseService();

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
  logging.Logger get log => logging.Logger('Base Controller');

  @override
  Future<Response> getAll(Request request) async {
    return outputNotImplemented();
  }

  @override
  Future<Response> getById(Request request, String id) async {
    final validateIdResult = await validateValue<String>(value: id);
    if (!validateIdResult.isValid) {
      return outputValidateError(data: validateIdResult.errors);
    }
    return outputNotImplemented();
  }

  @override
  Future<Response> create(Request request) async {
    final inputData = await getInputData(request);
    log.info(inputData);
    return outputNotImplemented();
  }

  @override
  Future<Response> update(Request request, String id) async {
    final validateIdResult = await validateValue<String>(value: id);
    if (!validateIdResult.isValid) {
      return outputValidateError(data: validateIdResult.errors);
    }
    final inputData = await getInputData(request);
    log.info(inputData);
    return outputNotImplemented();
  }

  @override
  Future<Response> delete(Request request, String id) async {
    final validateIdResult = await validateValue<String>(value: id);
    if (!validateIdResult.isValid) {
      return outputValidateError(data: validateIdResult.errors);
    }
    return outputNotImplemented();
  }
}
