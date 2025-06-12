import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class CheckoutAction extends StatelessWidget {
  const CheckoutAction({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutContainerController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return SizedBox(
          width: double.infinity,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Obx(() {
                final maxWidth = constraints.maxWidth;
                final lastButtonMinWidth = 120.0.scaleWidth;
                final spacing = 8.0;

                // 获取字体大小控制器
                final fontSizeController = Get.find<FontSizeController>();

                // 计算按钮文本宽度
                final exitTextWidth = _calculateTextWidth('退出'.tr, 13.0 * fontSizeController.textScaler);
                final printTextWidth = _calculateTextWidth('打印'.tr, 13.0 * fontSizeController.textScaler);
                final memberTextWidth = controller.isModuleAvailableMember
                    ? _calculateTextWidth('会员'.tr, 13.0 * fontSizeController.textScaler)
                    : 0.0;

                // 按钮内边距和边框宽度
                final buttonPadding = 16.0;
                final minButtonWidth = 80.0.scaleWidth;

                // 计算每个按钮所需的最小宽度
                final exitButtonWidth = _getButtonWidth(exitTextWidth, buttonPadding, minButtonWidth);
                final printButtonWidth = _getButtonWidth(printTextWidth, buttonPadding, minButtonWidth);
                final memberButtonWidth = controller.isModuleAvailableMember
                    ? _getButtonWidth(memberTextWidth, buttonPadding, minButtonWidth)
                    : 0.0;

                // 计算前三个按钮加间距的总宽度
                final threeButtonsWidth = exitButtonWidth + printButtonWidth + memberButtonWidth + 2 * spacing;

                // 判断是否有任何按钮内容超过最小按钮宽度或总宽度超过可用空间
                final isAnyButtonOverflow = exitButtonWidth > minButtonWidth ||
                    printButtonWidth > minButtonWidth ||
                    memberButtonWidth > minButtonWidth ||
                    threeButtonsWidth + lastButtonMinWidth + spacing > maxWidth;

                // 如果有按钮溢出或总宽度不足，最后按钮换行
                final isLastButtonWrapped = isAnyButtonOverflow;

                // 如果最后按钮换行，计算前三个按钮的宽度（平分第一行）
                final buttonWidth = isLastButtonWrapped ? (maxWidth - 2 * spacing) / 3 : minButtonWidth;

                // 计算最后按钮的宽度
                final lastButtonWidth = isLastButtonWrapped ? double.infinity : maxWidth - threeButtonsWidth - spacing;

                return Wrap(
                  spacing: spacing,
                  runSpacing: 8.0,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: [
                    SizedBox(
                      width: buttonWidth,
                      child: TtButton(
                        text: '退出'.tr,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        onTap: () {
                          Get.back();
                          controller.onRefreshCart.call();
                        },
                        sizeType: SizeButtonType.small,
                        buttonType: ActionButtonType.outline,
                      ),
                    ),
                    SizedBox(
                      width: buttonWidth,
                      child: TtButton(
                        text: '打印'.tr,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        onTap: () => controller.onActionPrintTap(),
                        sizeType: SizeButtonType.small,
                        buttonType: ActionButtonType.outline,
                      ),
                    ),
                    if (controller.isModuleAvailableMember)
                      SizedBox(
                        width: buttonWidth,
                        child: TtButton(
                          text: '会员'.tr,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          onTap: () => controller.onActionMemberTap(),
                          sizeType: SizeButtonType.small,
                          buttonType: ActionButtonType.outline,
                        ),
                      ),
                    SizedBox(
                      width: lastButtonWidth,
                      child: TtButton(
                        text: controller.isUnCompleted
                            ? '${'还差'.tr}: ${(controller.unpaidAmount.primaryCurrency)}'
                            : '付款完成，确认结账'.tr,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        onTap: controller.isUnCompleted ? null : () => controller.onFinishOrderTap(),
                        isDisabled: controller.isUnCompleted,
                        sizeType: SizeButtonType.small,
                      ),
                    ),
                  ],
                );
              });
            },
          ),
        );
      },
    );
  }

  double _calculateTextWidth(String text, double fontSize) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.width;
  }

  double _getButtonWidth(double textWidth, double padding, double minWidth) {
    return math.max(textWidth + padding * 2, minWidth);
  }
}
