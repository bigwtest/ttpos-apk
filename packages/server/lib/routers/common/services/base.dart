// Package imports:
import 'package:logging/logging.dart' as logging;

// Project imports:
import 'package:server/prisma.dart' as prisma;
import 'package:server/prisma/client.dart';

abstract class ServerService {
  PrismaClient? get prismaClient;

  logging.Logger get log;

  Future<List<T>> getAll<T>(String modelName);
  Future<T> getById<T>(String modelName, String id);
  Future<T> create<T>(String modelName, Map<String, dynamic> data);
  Future<T> update<T>(String modelName, String id, Map<String, dynamic> data);
  Future<void> delete(String modelName, String id);
}

class BaseService implements ServerService {
  @override
  final PrismaClient? prismaClient = prisma.prismaClient;

  @override
  logging.Logger get log => logging.Logger('Base Service');

  @override
  Future<List<T>> getAll<T>(String modelName) async {
    throw UnimplementedError();
  }

  @override
  Future<T> getById<T>(String modelName, String id) async {
    throw UnimplementedError();
  }

  @override
  Future<T> create<T>(String modelName, Map<String, dynamic> data) async {
    throw UnimplementedError();
  }

  @override
  Future<T> update<T>(
    String modelName,
    String id,
    Map<String, dynamic> data,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String modelName, String id) async {
    throw UnimplementedError();
  }
}
