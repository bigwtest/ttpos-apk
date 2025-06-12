// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/goods_cart/order/view/list/list_item_checkbox.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListHeader extends StatelessWidget {
  final bool isEdit; // 是否编辑模式
  final bool isSelectAll; // 是否编辑模式
  final String numberText; // 数量
  final double numberWidth; // 数量宽度
  final String totalText; // 小计
  final double totalWidth; // 数量宽度
  final void Function(bool)? onChangeCheckbox;

  const ListHeader({
    super.key,
    this.isEdit = false,
    this.isSelectAll = false,
    required this.numberText,
    this.numberWidth = 65.0,
    required this.totalText,
    this.totalWidth = 98.0,
    this.onChangeCheckbox,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 14.0,
        right: 16.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              if (isEdit) ...[
                ListItemCheckbox(
                  isChecked: isSelectAll,
                  onChangeCheckbox: onChangeCheckbox,
                ),
              ],
              Expanded(
                child: Text(
                  '商品名称'.tr,
                  style: TextStyle(
                    color: CustomTheme.greyColor.shade600,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Container(
                width: numberWidth,
                alignment: Alignment.center,
                child: Text(
                  numberText,
                  style: TextStyle(
                    color: CustomTheme.greyColor.shade600,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Container(
                width: totalWidth,
                alignment: Alignment.centerRight,
                child: Text(
                  totalText,
                  style: TextStyle(
                    color: CustomTheme.greyColor.shade600,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
          // 线开始
          const SizedBox(
            height: 14.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 0.5,
            child: CustomPaint(
              painter: DashedBorder(
                dashSpace: 0,
                dashWidth: 5.0,
                color: CustomTheme.greyColor.shade300,
              ),
            ),
          ),
          // 线结束
        ],
      ),
    );
  }
}
