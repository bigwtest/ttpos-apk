import 'package:package_info_plus/package_info_plus.dart';

final class PackageInfoHelper {
  PackageInfoHelper._();

  static String _appName = '';
  static String get appName => _appName;

  static String _packageName = '';
  static String get packageName => _packageName;

  static String? _version;
  static String get version => _version ?? 'unknown';

  static String _buildNumber = '';
  static String get buildNumber => _buildNumber;

  static Future<void> init() async {
    final packageInfo = await PackageInfo.fromPlatform();
    _appName = packageInfo.appName;
    _packageName = packageInfo.packageName;
    _version = packageInfo.version;
    _buildNumber = packageInfo.buildNumber;
  }
}
