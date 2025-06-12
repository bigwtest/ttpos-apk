import 'package:ttpos_dotenv/dotenv.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  group('DotENV', () {
    test('loadEnv() 应该正确加载存在的文件', () async {
      await DotENV.loadEnv(overrideEnv: 'test');
      expect(dotenv.get('env', fallback: 'test_value'), equals('test_value'));
    });

    test('loadEnv() 应该处理不存在的文件', () async {
      await DotENV.loadEnv(overrideEnv: 'abc');
      expect(dotenv.get('NOT_EXIST_KEY'), isNull);
    });

    test('assetExists() 应该正确检测文件是否存在', () async {
      expect(await DotENV.assetExists('pubspec.yaml'), isTrue);
      expect(await DotENV.assetExists('pubspec.yaml.not_exist'), isFalse);
    });
  });
}
