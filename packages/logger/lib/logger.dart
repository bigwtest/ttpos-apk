import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart' as logging;

export 'package:logging/logging.dart' show Logger;

class Log {
  // 私有构造函数
  Log._internal({this.appName = 'TTPOS'}) : logger = logging.Logger(appName) {
    initialize();
  }

  // 工厂构造函数
  factory Log({String appName = 'TTPOS'}) {
    return Log._internal(appName: appName);
  }

  final String appName;
  final logging.Logger logger;

  static StreamSubscription<logging.LogRecord>? _recordSubscription;
  static StreamSubscription<logging.Level?>? _levelSubscription;

  void initialize() {
    if (_recordSubscription != null && _levelSubscription != null) return;

    logging.Logger.root.level =
        kDebugMode ? logging.Level.ALL : logging.Level.WARNING;

    _recordSubscription = logging.Logger.root.onRecord.listen(
      (record) {
        // ignore: avoid_print
        print('[${record.level.name}] '
            '${record.time.toIso8601String()} '
            '[${record.loggerName}] '
            '${record.message.padLeft(7)}');
      },
    );

    _levelSubscription = logging.Logger.root.onLevelChanged.listen(
      (logging.Level? level) {
        // ignore: avoid_print
        print('Logger level changed to $level');
      },
      onError: (Object error) {
        // ignore: avoid_print
        print('Logger level change error: $error');
      },
    );
  }

  void dispose() {
    _recordSubscription?.cancel();
    _levelSubscription?.cancel();
  }
}
