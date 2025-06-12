import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:ttpos_dotenv/dotenv.dart';

class DotenvController extends GetxController {
  String get(String name, {String? fallback}) {
    String value =
        kIsWeb ? String.fromEnvironment(name, defaultValue: fallback ?? '') : dotenv.get(name, fallback: fallback);
    return value.isEmpty ? fallback ?? '' : value;
  }

  bool getBool(String name, {bool fallback = false}) =>
      kIsWeb ? bool.fromEnvironment(name, defaultValue: fallback) : dotenv.getBool(name, fallback: fallback);

  int getInt(String name, {int? fallback}) =>
      kIsWeb ? int.fromEnvironment(name, defaultValue: fallback ?? 0) : dotenv.getInt(name, fallback: fallback);

  void clean() => dotenv.clean();

  bool get isInitialized => dotenv.isInitialized;

  String? maybeGet(String name, {String? fallback}) =>
      kIsWeb ? String.fromEnvironment(name, defaultValue: fallback ?? '') : dotenv.maybeGet(name, fallback: fallback);

  @override
  void onInit() async {
    if (!kIsWeb && !dotenv.isInitialized) {
      await DotENV.loadEnv();
    }
    super.onInit();
  }
}
