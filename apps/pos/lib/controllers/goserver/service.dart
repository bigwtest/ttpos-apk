import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class GoServerService {
  static Future<void> startServer() async {
    const channel = MethodChannel('goserver.startServer');
    if (!Platform.isAndroid) return;

    runZonedGuarded(
      () async {
        final documentDirectory = await getApplicationDocumentsDirectory();
        final dbPath = join(documentDirectory.path, 'gomobile', 'gorm.db');
        final file = File(dbPath);
        if (!await file.exists()) {
          await file.create(recursive: true);
        }
        await channel.invokeMethod('startServer', {'dbPath': dbPath});
      },
      (error, stackTrace) {
        debugPrint('GoServerService startServer error: $error\n$stackTrace');
      },
    );
  }
}
