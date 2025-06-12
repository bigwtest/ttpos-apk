import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

/// 显示开台提示弹窗的方法
Future<bool?> showOpenTipsDialog() {
  return Get.dialog<bool>(
    DismissKeyboardDialog(
      child: OpenTipsDialog(),
    ),
  );
}

class OpenTipsDialog extends StatelessWidget {
  const OpenTipsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0.scaleWidth,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '提示'.tr,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          const SizedBox(height: 16.0),
          Column(
            spacing: 8.0,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _tipsItem('如有剩余食物，可能产生额外费用'.tr),
              _tipsItem('点菜时请考虑您的饱食量，只订购能够完全使用的食品数量'.tr),
              _tipsItem('对于食品和饮品过度点单，可能会引发额外费用'.tr),
              _tipsItem('如有多余食物或饮品浪费的情况，我们可能会视情况追加费用'.tr),
              _tipsItem('我们鼓励客人谨慎点菜，仅订购会使用完的食品，避免剩菜问题和额外费用'.tr, isIcon: false),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TtButton(
                  text: '取消'.tr,
                  buttonType: ActionButtonType.outline,
                  fontSize: 13.0,
                  height: 48.0,
                  fontWeight: FontWeight.w600,
                  onTap: () {
                    Get.back(result: false);
                  },
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: TtButton(
                  text: '确定'.tr,
                  fontSize: 13.0,
                  height: 48.0,
                  fontWeight: FontWeight.w600,
                  onTap: () {
                    Get.back(result: true);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _tipsItem(String text, {bool isIcon = true}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      if (isIcon)
        Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.only(top: 6.7),
          decoration: BoxDecoration(
            color: CustomTheme.primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      if (isIcon) const SizedBox(width: 8.0),
      Expanded(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13.0,
            color: CustomTheme.secondaryColor,
          ),
        ),
      ),
    ],
  );
}
