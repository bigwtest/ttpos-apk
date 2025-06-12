// Dart imports:
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

// Package imports:
import 'package:ffi/ffi.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ttpos_logger/logger.dart';

// 定义 C 函数签名
typedef StartHttpServiceC = Void Function(Pointer<Utf8>);
typedef StartHttpServiceDart = void Function(Pointer<Utf8>);

class GoServer {
  final _logger = Log(appName: 'GoServer');
  Logger get logger => _logger.logger;
  late Isolate isolate;

  Future<void> copyAssetToFileSystem(String assetPath, String fileName) async {
    final byteData = await rootBundle.load(assetPath);
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(byteData.buffer.asUint8List());

    logger.info('File copied to: ${file.path}');
    logger.info('File size: ${await file.length()} bytes');
  }

  // 隔离入口函数
  void isolateEntry(List<dynamic> args) async {
    final sendPort = args[0] as SendPort;
    final soPath = args[1] as String;
    final serverPath = args[2] as String;

    try {
      sendPort.send('soPath in isolate: $soPath');
      sendPort.send('serverPath in isolate: $serverPath');

      // 加载共享库
      final dylib = DynamicLibrary.open(soPath);

      // 查找并调用 C 函数
      final StartHttpServiceDart startHttpService = dylib
          .lookup<NativeFunction<StartHttpServiceC>>(
            'StartHTTPServer',
          )
          .asFunction();

      sendPort.send('Starting HTTP server...');

      startHttpService(
        serverPath.toNativeUtf8(),
      );
    } catch (error, stackTrace) {
      sendPort.send('Error starting HTTP server');
      logger.severe('Error starting HTTP server:', error, stackTrace);
    }
  }

  void start() async {
    try {
      await copyAssetToFileSystem(
        'assets/libhttpserver.so',
        'libhttpserver.so',
      );

      final directory = await getApplicationDocumentsDirectory();
      final soPath = join(directory.path, 'libhttpserver.so');
      final serverPath = join(directory.path, 'server');

      final serverDir = Directory(serverPath);
      if (!serverDir.existsSync()) {
        await serverDir.create(recursive: true);
      }

      logger.info('soPath: $soPath');
      logger.info('serverPath: $serverPath');

      final receivePort = ReceivePort('GoServer');

      isolate = await Isolate.spawn(
        isolateEntry,
        [receivePort.sendPort, soPath, serverPath],
        errorsAreFatal: false,
        onError: receivePort.sendPort,
        onExit: receivePort.sendPort,
        debugName: 'Go HTTP Server Isolate',
      );

      receivePort.listen(
        (message) {
          if (message is List) {
            final error = message[0];
            final stackTrace = message[1];
            logger.severe(
              'Received error message from isolate: ',
              error,
              stackTrace,
            );
            return;
          }

          logger.info('Received message from isolate: $message');
        },
      );
    } catch (error, stackTrace) {
      logger.severe('Error starting Go HTTP server:', error, stackTrace);
    }
  }

  Future<void> stop() async {
    try {
      isolate.kill(priority: Isolate.immediate);
    } catch (error, stackTrace) {
      logger.severe('Error stopping Go HTTP server:', error, stackTrace);
    }
  }
}
