// Dart imports:
import 'dart:io';

// Package imports:
import 'package:intl/intl.dart';
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

// Project imports:
import 'middlewares/index.dart' show localeMiddleware;
import 'prisma.dart' show createPrismaClient, closePrismaClient;
import 'schedules/index.dart' show BackupSchedule, SyncSchedule;

import 'routers/index.dart'
    show
        CashierRootController,
        KitchenRootController,
        TabletRootController,
        AssistantRootController,
        DevRootController;

class Server {
  late HttpServer server;

  final int port;
  final String host;

  final logging.Logger log = logging.Logger('Server');

  late BackupSchedule backupSchedule;
  late SyncSchedule syncSchedule;

  Server({
    this.port = 8860,
    this.host = '0.0.0.0',
  }) {
    initIntl();
    // initLogger();
    initSchedules();
  }

  initIntl() {
    Intl.defaultLocale = 'en';
  }

  initLogger() {
    logging.Logger.root.level = logging.Level.ALL;
    logging.Logger.root.onRecord.listen((record) {
      // ignore: avoid_print
      print('[${record.level.name}] '
          '${record.time.toIso8601String()} '
          '[${record.loggerName}] '
          '${record.message.padLeft(7)}');
    });

    logging.Logger.root.onLevelChanged.listen((level) {
      // ignore: avoid_print
      print('Logger level changed to $level');
    });
  }

  initSchedules() {
    backupSchedule = BackupSchedule();
    syncSchedule = SyncSchedule();
  }

  Future<HttpServer> start() async {
    try {
      // NOTE: 创建 Prisma client 单例供所有模块使用
      await createPrismaClient();

      // NOTE: 启动定时任务
      // TODO: 传入 taskCallback 参数
      await backupSchedule.start();
      await syncSchedule.start();

      // NOTE: 挂载路由
      final router = Router();
      router.mount('/cashier', CashierRootController().router.call);
      router.mount('/kitchen', KitchenRootController().router.call);
      router.mount('/tablet', TabletRootController().router.call);
      router.mount('/assistant', AssistantRootController().router.call);
      router.mount('/dev', DevRootController().router.call);
      router.all('/', (shelf.Request request) async {
        await Future.delayed(const Duration(seconds: 1));
        return shelf.Response.ok('Hello, World!');
      });

      // NOTE: 创建请求处理管道
      final handler = const shelf.Pipeline()
          .addMiddleware(localeMiddleware())
          .addMiddleware(shelf.logRequests())
          .addHandler(router.call);

      // NOTE: 启动 HTTP 服务器
      server = await io.serve(handler, host, port);
      log.info('Server started on port ${server.port}');
      return server;
    } catch (error) {
      log.severe(error);
      rethrow;
    }
  }

  Future<void> stop() async {
    try {
      // NOTE: 停止并关闭定时任务
      await backupSchedule.stop();
      await backupSchedule.close();
      await syncSchedule.stop();
      await syncSchedule.close();

      // NOTE: 关闭 Prisma client
      await closePrismaClient();

      // NOTE: 关闭 HTTP 服务器
      await server.close(force: true);
      log.info('Server stopped');
    } catch (error) {
      log.severe(error);
    }
  }
}
