// Flutter imports:
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:pos/api/print/print_api.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';

class CashBoxController {
  static final MethodChannel channel = MethodChannel('cashbox.channel');

  static void openCashBox() async {
    //判断是否为安卓平台
    if (Platform.isAndroid) {
      try {
        final result = await PrintAPI().openCashBox();
        if (result?.data != "") {
          PrintController.sendPrint(result!, isReport: false);
        }
        channel.invokeMethod('open');
      } catch (error, stackTrace) {
        debugPrint('openCashBox error: $error\n$stackTrace');
      }
    }
  }

  static void initScanner() {
    if (Platform.isAndroid) {
      try {
        channel.invokeMethod('initScanner');
      } catch (error, stackTrace) {
        debugPrint('initScanner error: $error\n$stackTrace');
      }
    }
  }
}
