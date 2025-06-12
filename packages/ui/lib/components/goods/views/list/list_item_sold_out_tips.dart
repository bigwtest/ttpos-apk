// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

// Package imports:

enum SoldOutType {
  restrictedPurchase, // 已限购
  soldOut, // 已售罄
  allSoldOut, // 全部售罄
  partiallySoldOut, // 部分售罄
}

class ListItemSoldOutTips extends StatelessWidget {
  final SoldOutType type; // 使用枚举类型代替字符串

  ListItemSoldOutTips({
    super.key,
    this.type = SoldOutType.soldOut, // 默认使用 'soldOut'
  });

  // 定义一个 Map，将枚举类型映射到文本和颜色
  final Map<SoldOutType, Map<String, dynamic>> soldOutMap = {
    SoldOutType.restrictedPurchase: {
      'text': '已限购'.tr,
      'textColor': Colors.white,
      'bgColor': CustomTheme.secondaryColor.shade100,
    },
    SoldOutType.soldOut: {
      'text': '已售罄'.tr,
      'textColor': Colors.white,
      'bgColor': CustomTheme.secondaryColor.shade100,
    },
    SoldOutType.allSoldOut: {
      'text': '全部售罄'.tr,
      'textColor': Colors.white,
      'bgColor': CustomTheme.errorColor,
    },
    SoldOutType.partiallySoldOut: {
      'text': '部分售罄'.tr,
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.primaryColor,
    },
  };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final soldOut = soldOutMap[type];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: soldOut?['bgColor'],
        borderRadius: BorderRadius.all(
          Radius.circular(
            48.0,
          ),
        ),
      ),
      child: Text(
        soldOut?['text'],
        style: TextStyle(
          color: soldOut?['textColor'],
          fontSize: 12.0,
        ),
      ),
    );
  }
}
