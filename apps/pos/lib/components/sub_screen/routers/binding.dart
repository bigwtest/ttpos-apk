// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_order_list_controller.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_statistics_controller.dart';
import 'package:pos/components/sub_screen/components/recharge/controllers/recharge_controller.dart';
import 'package:pos/components/sub_screen/controllers/sub_screen_controller.dart';
// Package imports:
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_i18n/controllers/language_second_controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    /// 字体
    Get.put(
      FontSizeController(),
      permanent: true,
    );

    /// 语言
    Get.put(
      LanguageController(),
      permanent: true,
    );

    /// 语言-副屏
    Get.put(
      LanguageSecondController(),
      permanent: true,
    );

    /// 配置
    Get.put<ConfigController>(
      ConfigController(),
      permanent: true,
    );

    /// 购物车订单列表
    Get.lazyPut<CartOrderListController>(() => CartOrderListController(), fenix: true);

    /// 购物车统计
    Get.lazyPut<CartStatisticsController>(() => CartStatisticsController(), fenix: true);

    /// 充值
    Get.lazyPut<RechargeController>(() => RechargeController(), fenix: true);

    /// 副屏控制器
    Get.put(
      SubScreenController(),
      permanent: true,
    );
  }
}
