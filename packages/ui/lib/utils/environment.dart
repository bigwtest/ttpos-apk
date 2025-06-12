import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EnvironmentUtils {
  static Future<void> checkEnvironment() async {
    final apiBaseUrl = const String.fromEnvironment('API_BASE_URL');
    if (apiBaseUrl.isEmpty || !apiBaseUrl.startsWith('http')) {
      runApp(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Text(
                'API_BASE_URL 未设置或格式不正确',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ),
      );

      await Future.delayed(const Duration(seconds: 3));

      if (!kIsWeb) {
        exit(0);
      }

      return;
    }
  }
}
