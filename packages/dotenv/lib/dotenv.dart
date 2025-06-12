import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotENV {
  static Future<bool> assetExists(String path) async {
    try {
      await rootBundle.loadString(path);
      return true;
    } catch (error, stackTrace) {
      debugPrint('assetExists Error: $error\n$stackTrace');
      return false;
    }
  }

  static Future<void> loadFile(String path) async {
    try {
      if (await assetExists(path)) {
        await dotenv.load(fileName: path);
        debugPrint('File: [$path] loaded');
      } else {
        debugPrint('File: [$path] not found');
      }
    } catch (error, stackTrace) {
      debugPrint('File: [$path] error, $error\n$stackTrace');
    }
  }

  static Future<DotEnv> loadEnv({String? overrideEnv}) async {
    try {
      // NOTE: 应该不会再需要 .env 和 .env.local 了
      // 以后都按环境变量 ENV 来
      // github actions 写个脚本生成对应 ENV 的 .local 文件
      // final defaultFile = '.env';
      // await DotENV.loadFile(defaultFile);
      // final defaultLocalFile = '.env.local';
      // await DotENV.loadFile(defaultLocalFile);

      final env = overrideEnv ??
          (kIsWeb
              ? const String.fromEnvironment('ENV', defaultValue: 'development')
              : kDebugMode
                  ? 'development'
                  : 'production');

      final envLocalFile = '.env.$env.local';
      await loadFile(envLocalFile);

      debugPrint(
        'ENV: ${dotenv.env.entries.map((e) => '${e.key}=${e.value}').join(', ')}',
      );

      return dotenv;
    } catch (error, stackTrace) {
      debugPrint('DotENV loadEnv error, $error');
      debugPrintStack(stackTrace: stackTrace);
      dotenv.clean();
      return dotenv;
    }
  }
}
