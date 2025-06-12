// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
// Project imports:
import 'package:ttpos_ui/theme/theme.dart';

class MustItemTitle extends StatelessWidget {
  final bool isShowSelect;
  final MustGoodsItem detail; // 商品详情

  MustItemTitle({
    super.key,
    this.isShowSelect = true,
    required this.detail,
  });
  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  bool get isComplete => detail.needNum == 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: RichText(
            textScaler: TextScaler.linear(fontSizeController.textScaler),
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '【${detail.name}】',
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // 规则说明
                ..._ruleExplanation(detail),
                // 已选择了多少
                ..._ruleSelected(detail),
                // 还差多少
                if (!isComplete) ..._ruleShort(detail),
              ],
            ),
          ),
        ),
        if (isComplete) ...[
          SizedBox(
            width: 32,
          ),
          Row(
            spacing: 4.0,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: CustomTheme.greenColor,
                  shape: BoxShape.circle, // 设置形状为圆
                ),
                height: 18.0.scaleHeight,
                width: 18.0.scaleWidth,
                child: Icon(
                  Iconfont.success,
                  size: 10.0.scaleWidth,
                  color: Colors.white,
                ),
              ),
              if (isShowSelect)
                Text(
                  '选好了'.tr,
                  style: TextStyle(
                    color: CustomTheme.greenColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

List<TextSpan> _ruleExplanation(MustGoodsItem detail) {
  // must_rule == 1 就是可选商品，提示词：每单需选择XX份
  // must_rule == 0 && must_type == 1 是固定商品+每人必点，提示词为：每人需对以下商品各选 1 份
  // must_rule == 0 && must_type == 0 是固定商品+每单必点，提示词为：每单需对以下商品各选 1 份
  return <TextSpan>[
    TextSpan(
      text: detail.mustRule == 0 && detail.mustType == 1
          ? '每人需对以下商品各选'.tr
          : detail.mustRule == 0 && detail.mustType == 0
              ? '每单需对以下商品各选'.tr
              : '每单需选择'.tr,
      style: TextStyle(
        color: CustomTheme.secondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    TextSpan(
      text: detail.mustRule == 1 && detail.mustType == 1 ? ' ${detail.mealNum.toString()} ' : ' 1 ',
      style: TextStyle(
        color: CustomTheme.errorColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    TextSpan(
      text: '份'.tr,
      style: TextStyle(
        color: CustomTheme.secondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  ];
}

List<TextSpan> _ruleSelected(MustGoodsItem detail) {
  return <TextSpan>[
    TextSpan(
      text: '，已选择'.tr,
      style: TextStyle(
        color: CustomTheme.secondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    TextSpan(
      text: ' ${detail.selectedNum.toString()} ',
      style: TextStyle(
        color: CustomTheme.greenColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    TextSpan(
      text: '份'.tr,
      style: TextStyle(
        color: CustomTheme.secondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  ];
}

List<TextSpan> _ruleShort(MustGoodsItem detail) {
  return <TextSpan>[
    TextSpan(
      text: '，还差'.tr,
      style: TextStyle(
        color: CustomTheme.secondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    TextSpan(
      text: ' ${detail.needNum.toString()} ',
      style: TextStyle(
        color: CustomTheme.errorColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    TextSpan(
      text: '份'.tr,
      style: TextStyle(
        color: CustomTheme.secondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  ];
}
