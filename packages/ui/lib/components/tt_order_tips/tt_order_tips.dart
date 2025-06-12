// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum TipType {
  gift, // 赠
  refund, // 退
  must, // 必点
}

class TtOrderTips extends StatelessWidget {
  final TipType type; // 使用枚举类型代替字符串

  const TtOrderTips({
    super.key,
    this.type = TipType.gift, // 默认使用 'gift'
  });

  // 定义一个 Map，将枚举类型映射到文本和颜色
  static Map<TipType, Map<String, dynamic>> get tipsMap => {
        TipType.gift: {
          'text': '赠'.tr,
          'textColor': Colors.white,
          'bgColor': Get.theme.colorScheme.error,
        },
        TipType.refund: {
          'text': '退'.tr,
          'textColor': Colors.white,
          'bgColor': CustomTheme.greyColor,
        },
        TipType.must: {
          'text': '必点'.tr,
          'textColor': Get.theme.colorScheme.secondary,
          'bgColor': Get.theme.colorScheme.primary,
        },
      };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final tip = Rx<Map<String, dynamic>>(tipsMap[type]!);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 7.0,
        vertical: 1,
      ),
      decoration: ShapeDecoration(
        color: tip.value['bgColor'],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Text(
        tip.value['text'] ?? '',
        style: TextStyle(
          color: tip.value['textColor'],
          fontSize: 10.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
