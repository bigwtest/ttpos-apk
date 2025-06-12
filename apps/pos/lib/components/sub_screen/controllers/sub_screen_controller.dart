// Flutter imports:
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/carousel/controllers/swiper_controller.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_order_list_controller.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_statistics_controller.dart';
import 'package:pos/components/sub_screen/components/qrcode/qrcode.dart';
import 'package:pos/components/sub_screen/components/recharge/controllers/recharge_controller.dart';
import 'package:pos/model/response/cart/cart_amount_info.dart';
import 'package:pos/model/response/cart/cart_sale_order.dart';
// Package imports:
import 'package:ttpos_flutter_subscreen_plugin/flutter_subscreen_plugin.dart';
import 'package:ttpos_i18n/controllers/language_second_controller.dart';
import 'package:ttpos_model/carousel/carousel_item.dart';
import 'package:ttpos_model/options/currency.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/sub_screen/cart_data_type.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SubScreenController extends GetxController {
  final languageSecondController = Get.find<LanguageSecondController>();
  final fontSizeController = Get.find<FontSizeController>();
  final cartStatisticsController = Get.find<CartStatisticsController>();
  final cartListController = Get.find<CartOrderListController>();
  final rechargeController = Get.find<RechargeController>();

  @override
  void onReady() {
    super.onReady();

    // 初始化语言
    setSubScreenLanguage();
    // 监听主屏发过来的消息
    SubScreenPlugin.viceStream.listen((event) {
      // 根据枚举类型，执行不同方法
      handleMessage(event.method, event.arguments);
      // 判断消息是否存在
      debugPrint('SubScreenPlugin => $event');
    });
  }

  // 处理消息的方法
  void handleMessage(String path, dynamic data) {
    switch (ScreenMessageType.fromPath(path)) {
      case ScreenMessageType.carouselName:
        handleToPath(path);
        // 设置数据
        handleCarousel(data);
        break;
      case ScreenMessageType.cartName:
        handleToPath(path);
        // 设置数据
        handleCart(data);
        break;
      case ScreenMessageType.rechargeName:
        handleToPath(path);
        // 设置数据
        handleRecharge(data);
        break;
      case ScreenMessageType.setLanguage:
        // 设置语言
        if (data['language'] is String) setSubScreenLanguage(lang: data['language']);
        break;
      case ScreenMessageType.setFontSize:
        // 设置字体
        if (data['fontSize'] is int) setFontSize(data['fontSize']);
        break;
      case ScreenMessageType.setCurrency:
        // 更新货币
        try {
          if (Get.isRegistered<ConfigController>()) {
            Get.find<ConfigController>().setConfig(currency: Currency.fromJson(jsonDecode(data['currency'])));
          }
        } catch (error) {
          debugPrint('setCurrency, 发生错误： error:$error');
        }
        break;
      default:
        debugPrint('ScreenMessageType path=>$path，data=>$data');
    }
  }

  // 处理轮播图
  void handleCarousel(dynamic data) {
    // 判断是否需要更新
    if (data['update'] != true) return;
    try {
      final List<dynamic> decodedList = jsonDecode(data['carouselList']);
      final List<ResponseCarouselItem> carouselList =
          decodedList.map((item) => ResponseCarouselItem.fromJson(item)).toList();

      if (Get.isRegistered<SwiperController>()) {
        Get.find<SwiperController>().carouselList = carouselList;
      } else {
        Get.put(SwiperController()).carouselList = carouselList;
      }
    } catch (error, stackTrace) {
      debugPrint('handleCarousel, 发生错误： error:$error\n$stackTrace');
    }
  }

  // 处理订单
  void handleCart(dynamic data) {
    try {
      switch (CartDataType.fromName(data['dataType'])) {
        case CartDataType.updataData:
          // 数据列表
          if (data['orderList'] != null && data['orderList'] != '{}') {
            final orderList = ResponseCartSaleOrder.fromJson(jsonDecode(data['orderList']));
            cartListController.cartList = orderList.productList;
          } else {
            cartListController.reset();
          }

          // 统计数据
          if (data['amountInfo'] != null && data['amountInfo'] != '{}') {
            final amountInfo = jsonDecode(data['amountInfo']);
            cartStatisticsController.amountInfo = ResponseCartAmountInfo.fromJson(amountInfo);
          } else {
            cartStatisticsController.reset();
          }
          break;
        case CartDataType.showPayQrcode:
          cartListController.showQrcodePayDialog(QrcodeModel.fromJson(jsonDecode(data['qrcode'])));
          break;
        case CartDataType.hidePayQrcode:
          Get.back();
          break;
        default:
          debugPrint('handleCart, 没有类型 CartDataType， data=>$data');
      }
    } catch (error, stackTrace) {
      debugPrint('handleCart, 发生错误： error:$error\n$stackTrace');
    }
  }

  // 会员充值，扫码
  void handleRecharge(dynamic data) {
    rechargeController.payDetail = QrcodeModel.fromJson(jsonDecode(data['qrcode']));
  }

  // 跳转
  void handleToPath(String? path) {
    // 如果路径不存在
    if (path == null) return;
    // 如果路由相等
    if (path == Get.currentRoute) return;
    // 如果是充值页面
    if (Get.currentRoute == ScreenMessageType.rechargeName.path && path == ScreenMessageType.cartName.path) {
      return;
    }
    // 跳转
    Get.offNamed(path);
  }

  // 根据本地存储设置语言
  void setSubScreenLanguage({String? lang}) {
    if (lang != null) languageSecondController.saveSecondLanguage(lang);
    // 获取当前语言
    final String currentLanguage = lang ?? languageSecondController.languageSecond;
    // 获取语言和国家
    final [languageCode, countryCode] = languageSecondController.getLanguageParts(currentLanguage);
    // 判断是否一致
    if (Get.locale ==
        Locale(
          languageCode,
          countryCode,
        )) {
      return;
    }
    // 设置字体
    changeFontFamily(currentLanguage, kIsWeb);
    // 更新
    Get.updateLocale(
      Locale(
        languageCode,
        countryCode,
      ),
    );
  }

  // 设置字体
  void changeFontFamily(String currentLanguage, bool isBold) {
    try {
      final theme = CustomTheme.getThemeData(currentLanguage: currentLanguage);
      Get.changeTheme(theme);
    } catch (error, stack) {
      debugPrint('FontFamilyController changeFontFamily error: $error');
      debugPrintStack(stackTrace: stack);
    }
  }

  // 设置字体大小
  void setFontSize(int num) {
    try {
      fontSizeController.setFontSize(num);
    } catch (error, stackTrace) {
      debugPrint('LocaleNameTranslate=>translateSecond, num=>$num, error:$error\n$stackTrace');
    }
  }

  // 发送消息到主屏
  // void sendMsgToMainScreen() {
  //   SubScreenPlugin.sendMsgToMainScreen("text", params: {"num": '测试数据'});
  // }
}
