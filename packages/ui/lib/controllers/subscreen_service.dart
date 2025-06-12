import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ttpos_flutter_subscreen_plugin/flutter_subscreen_plugin.dart';
import 'package:ttpos_model/options/currency.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/sub_screen/cart_data_type.dart';

class SubScreenService {
  SubScreenService._();
  static final SubScreenService _instance = SubScreenService._();

  // 是否打开过副屏
  bool isShow = false;

  static Future<bool> isSupportMultipleScreen() async {
    if (kIsWeb || !Platform.isAndroid) return Future.value(false);

    try {
      // NOTE: 不需要检查权限，以前 uniapp 为什么需要呢
      // final hasOverlayPermission = await SubScreenPlugin.checkOverlayPermission();
      // debugPrint('hasOverlayPermission: $hasOverlayPermission');
      // if (!hasOverlayPermission) {
      //   showCheckOverlayPermission();
      //   return false;
      // }

      final isMultipleScreen = await SubScreenPlugin.isMultipleScreen();
      debugPrint('isMultipleScreen: $isMultipleScreen');
      if (isMultipleScreen) {
        // NOTE: 不需要打开重新副屏，会出现闪屏
        if (!_instance.isShow) {
          _instance.isShow = true;
          SubScreenPlugin.doubleScreenShow();
        }
        return Future.value(true);
      }
      return Future.value(false);
    } catch (error, stackTrace) {
      debugPrint('SubScreenService isSupportMultipleScreen,error: $error\n$stackTrace');
      return Future.value(false);
    }
  }

  static Future<bool> showCheckOverlayPermission() async {
    bool result = false;

    await DialogManager.showConfirmDialog(
      title: '权限申请'.tr,
      message: '已检测到副屏，将副屏设置为持久窗口需开启权限，是否设置?'.tr,
      onConfirm: () async {
        final hasPermission = await SubScreenPlugin.checkOverlayPermission();
        if (!hasPermission) {
          SubScreenPlugin.requestOverlayPermission();
          result = false;
        } else {
          SubScreenPlugin.doubleScreenShow();
          result = true;
        }
        return result;
      },
    );
    return result;
  }

  static Future<bool> send({
    required ScreenMessageType method,
    required Map<String, dynamic> data,
  }) async {
    try {
      if (kIsWeb || !Platform.isAndroid) return false;

      final isSupport = await isSupportMultipleScreen();
      if (!isSupport) throw Exception('副屏功能不可用');
      // 发送
      await SubScreenPlugin.sendMsgToViceScreen(method.path, params: data);
      return true;
    } catch (error, stackTrace) {
      debugPrint('SubScreenService send error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }

  static void setCartData({
    required CartDataType dataType,
    Map<String, dynamic>? orderList,
    Map<String, dynamic>? amountInfo,
  }) {
    send(
      method: ScreenMessageType.cartName,
      data: {
        'dataType': dataType.name,
        'orderList': orderList != null ? jsonEncode(orderList) : '{}',
        'amountInfo': amountInfo != null ? jsonEncode(amountInfo) : '{}',
      },
    );
  }

  static void resetCartData() {
    setCartData(dataType: CartDataType.updataData, orderList: null, amountInfo: null);
  }

  static void setCarouselData(List<dynamic> data) {
    send(
      method: ScreenMessageType.carouselName,
      data: {
        'update': true,
        'carouselList': jsonEncode(data),
      },
    );
  }

  static void resetCarouselData() {
    setCarouselData([]);
  }

  static void setCurrency(Currency currency) {
    send(
      method: ScreenMessageType.setCurrency,
      data: {
        'currency': jsonEncode(currency),
      },
    );
  }

  static void setLanguage(String language) {
    send(
      method: ScreenMessageType.setLanguage,
      data: {
        'language': language,
      },
    );
  }

  static void setFontSize(int fontSize) {
    send(
      method: ScreenMessageType.setFontSize,
      data: {
        'fontSize': fontSize,
      },
    );
  }
}

// 消息枚举，根据路由分发消息
enum ScreenMessageType {
  setLanguage('setLanguage'), // 设置语言
  setFontSize('setFontSize'), // 设置字体
  setCurrency('setCurrency'), // 设置货币
  //
  carouselName(SubScreenRouteNames.carousel), // 轮播图页面
  cartName(SubScreenRouteNames.cart), // 购物车页面
  rechargeName(SubScreenRouteNames.recharge); // 扫码支付页面

  final String path;
  const ScreenMessageType(this.path);

  // 静态方法，通过字符串获取枚举值
  static ScreenMessageType? fromPath(String path) {
    try {
      for (var item in ScreenMessageType.values) {
        if (item.path == path) {
          return item;
        }
      }
      return null;
    } catch (error) {
      debugPrint('ScreenMessageType=>fromPath, path=>$path, error:$error');
      return null;
    }
  }
}

class SubScreenRouteNames {
  static const String carousel = '/'; // 默认轮播图
  static const String cart = '/cart'; // 购物车
  static const String recharge = '/recharge'; // 充值页面
}
