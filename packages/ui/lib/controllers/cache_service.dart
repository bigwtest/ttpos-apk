import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheService extends GetxService {
  Future<SharedPreferences> initLegacy() async {
    try {
      return await SharedPreferences.getInstance();
    } catch (error, stackTrace) {
      debugPrint('SharedPreferences 损坏检测: $error');
      debugPrintStack(stackTrace: stackTrace);

      // 清除损坏的数据存储
      await clearCorruptedData();

      final storage = await SharedPreferences.getInstance();
      await storage.clear();

      return storage;
    }
  }

  Future<SharedPreferencesAsync> initAsync() async {
    try {
      if (kDebugMode && !kIsWeb) {
        // 获取应用数据目录
        final directory = await getApplicationSupportDirectory();
        debugPrint('应用数据目录: ${directory.path}');
      }
      return SharedPreferencesAsync();
    } catch (error, stackTrace) {
      debugPrint('SharedPreferences 损坏检测: $error');
      debugPrintStack(stackTrace: stackTrace);

      // 清除损坏的数据存储
      await clearCorruptedData();

      final storage = SharedPreferencesAsync();
      await storage.clear();

      return storage;
    }
  }

  Future<SharedPreferencesWithCache> initWithCache({SharedPreferencesWithCacheOptions? cacheOptions}) async {
    try {
      if (kDebugMode && !kIsWeb) {
        // 获取应用数据目录
        final directory = await getApplicationSupportDirectory();
        debugPrint('应用数据目录: ${directory.path}');
      }
      return await SharedPreferencesWithCache.create(
        cacheOptions: cacheOptions ?? SharedPreferencesWithCacheOptions(),
      );
    } catch (error, stackTrace) {
      debugPrint('SharedPreferencesWithCache 初始化失败: $error');
      debugPrintStack(stackTrace: stackTrace);

      // 清除损坏的数据存储
      await clearCorruptedData();

      final storage = await SharedPreferencesWithCache.create(
        cacheOptions: cacheOptions ?? SharedPreferencesWithCacheOptions(),
      );
      await storage.clear();

      return storage;
    }
  }

  /// 清除损坏的数据
  static Future<void> clearCorruptedData() async {
    try {
      if (kIsWeb) return;

      // 获取应用数据目录
      final directory = await getApplicationSupportDirectory();

      if (Platform.isAndroid) {
        final dataStoreDir = Directory('${directory.path}/datastore');
        if (await dataStoreDir.exists()) {
          // 删除 DataStore 文件
          await dataStoreDir.delete(recursive: true);
          debugPrint('已清除损坏的 DataStore 文件');
        }
      } else if (Platform.isWindows) {
        final dataStoreDir = File('${directory.path}/shared_preferences.json');
        if (await dataStoreDir.exists()) {
          // 删除 DataStore 文件
          await dataStoreDir.delete();
          debugPrint('已清除损坏的 SharedPreferences 文件');
        }
      } else {
        // TODO: 其他平台
      }
    } catch (error, stackTrace) {
      debugPrint('清除损坏数据失败: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
}
