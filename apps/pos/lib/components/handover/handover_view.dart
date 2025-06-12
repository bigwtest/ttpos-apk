// ignore_for_file: unused_element

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/controllers/handover/handover_controller.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HandoverView extends StatelessWidget {
  HandoverView({super.key});
  final HandoverController controller = Get.find<HandoverController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 24.0,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.0,
                top: 24.0,
                right: 24.0,
              ),
              child: Column(
                spacing: 8.0,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft, // 左对齐
                          child: Text(
                            '交班'.tr,
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: controller.onPrint,
                          style: TextButton.styleFrom(
                            minimumSize: Size(
                              56.28,
                              32.16,
                            ),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: CustomTheme.greyColor.shade300,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                          ),
                          child: Text(
                            "打印".tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: SingleChildScrollView(
                      child: _HandoverInfo(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft, // 左对齐
                    child: Text(
                      '本班取出现金'.tr,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.44,
                      ),
                    ),
                  ),
                  Obx(
                    () => TtInput(
                      height: 36.0.scaleHeight,
                      value: controller.currentWithdrawAmountText,
                      hintText: '请输入金额'.tr,
                      readOnly: true,
                      isShowDelete: true,
                      focusNode: controller.currentWithdrawFocusNode,
                      useFocusedBorderAsEnabled: controller.isCurrentWithdrawActive.value,
                      onChanged: controller.onCurrentWithdrawTextChanged,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft, // 左对齐
                    child: Text(
                      '本班遗留备用现金'.tr,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.44,
                      ),
                    ),
                  ),
                  Obx(
                    () => TtInput(
                      height: 36.0.scaleHeight,
                      value: controller.currentReserveAmountText,
                      hintText: '请输入金额'.tr,
                      readOnly: true,
                      isShowDelete: true,
                      focusNode: controller.currentReserveFocusNode,
                      useFocusedBorderAsEnabled: controller.isCurrentReserveActive.value,
                      onChanged: controller.onCurrentReserveTextChanged,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 214.4,
            child: Keyboard(
              borderRadius: BorderRadius.zero,
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              onNumberTap: controller.onNumberTap,
              onClearTap: controller.onClearTap,
              onExitTap: () => Get.back(),
              onConfirmTap: () => controller.execHandover(),
            ),
          ),
        ],
      ),
    );
  }
}

class _HandoverInfo extends StatelessWidget {
  const _HandoverInfo();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HandoverController>();
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        spacing: 8.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 上面一行3个统计
          Row(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Obx(
                  () => _Statistic(
                    title: '交班人'.tr,
                    value: controller.handoverUserName,
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => _Statistic(
                    title: '上一班遗留备用金'.tr,
                    value: controller.previousShiftCash.primaryCurrency,
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => _Statistic(
                    title: '中途存入现金'.tr,
                    value: controller.depositCash.primaryCurrency,
                    suffixButton: TextButton(
                      onPressed: controller.onDeposit,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // 移除内边距
                        minimumSize: Size.zero, // 移除最小尺寸限制
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),
                      child: Text(
                        "存钱".tr,
                        style: TextStyle(
                          color: CustomTheme.primaryColor.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          height: 1.44,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Obx(
                  () => _Statistic(
                    title: '中途取出现金'.tr,
                    value: controller.withdrawCash.primaryCurrency,
                    suffixButton: TextButton(
                      onPressed: controller.onWithdraw,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // 移除内边距
                        minimumSize: Size.zero, // 移除最小尺寸限制
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),
                      child: Text(
                        "取钱".tr,
                        style: TextStyle(
                          color: CustomTheme.primaryColor.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          height: 1.44,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => _Statistic(
                    title: '当前钱箱现金总计'.tr,
                    value: controller.currentCashTotal.primaryCurrency,
                  ),
                ),
              ),
              Expanded(child: SizedBox()), // 占位，保持对齐
            ],
          ),

          // 下面一行2个统计
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 0.5,
              child: CustomPaint(
                painter: DashedBorder(
                  dashSpace: 3.0,
                  dashWidth: 5.0,
                  color: CustomTheme.greyColor.shade300,
                ),
              ),
            ),
          ),

          Obx(
            () => Column(
              spacing: 4.0,
              children: [
                for (final item in controller.incomes)
                  _HandoverInfoItem(
                    label: item.name,
                    value: item.amount.toSafetyString(),
                  ),
                _HandoverInfoItem(
                  label: '退款金额'.tr,
                  value: controller.refundAmount,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Statistic extends StatelessWidget {
  final String title;
  final String value;
  final String? prefix;
  final String? suffix;
  final bool precision;
  final Color? valueColor;
  final double? valueSize;
  final FontWeight? valueWeight;
  final Widget? suffixButton; // 添加按钮参数

  const _Statistic({
    required this.title,
    required this.value,
    this.prefix,
    this.suffix,
    this.precision = false,
    this.valueColor,
    this.valueSize,
    this.valueWeight,
    this.suffixButton, // 初始化按钮参数
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: CustomTheme.secondaryColor.shade800,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            height: 1.44,
          ),
        ),
        SizedBox(height: 2.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, // 让 Row 宽度适应内容
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                if (prefix != null)
                  Text(
                    prefix!,
                    style: TextStyle(
                      fontSize: valueSize ?? 12.0,
                      color: valueColor ?? CustomTheme.secondaryColor,
                      fontWeight: valueWeight ?? FontWeight.w600,
                      height: 1.44,
                    ),
                  ),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: valueSize ?? 12.0,
                    color: valueColor ?? CustomTheme.secondaryColor,
                    fontWeight: valueWeight ?? FontWeight.w600,
                    height: 1.44,
                  ),
                ),
                if (suffix != null)
                  Text(
                    suffix!,
                    style: TextStyle(
                      fontSize: valueSize ?? 12.0,
                      color: valueColor ?? CustomTheme.secondaryColor,
                      fontWeight: valueWeight ?? FontWeight.w600,
                      height: 1.44,
                    ),
                  ),
              ],
            ),
            // 按钮部分
            if (suffixButton != null) ...[
              SizedBox(width: 8.0),
              suffixButton!,
            ],
          ],
        ),
      ],
    );
  }
}

class _HandoverInfoItem extends StatelessWidget {
  const _HandoverInfoItem({
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: CustomTheme.secondaryColor.shade800,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
        Obx(() {
          return Text(
            value.primaryCurrency,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              height: 1.50,
            ),
          );
        }),
      ],
    );
  }
}
