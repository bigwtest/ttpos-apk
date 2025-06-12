// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Package imports:
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskListItemCloseButton extends StatelessWidget {
  final void Function()? onTap; // 点击

  const DeskListItemCloseButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Positioned(
        right: 0,
        bottom: 0,
        child: SizedBox(
          width: 24.0.scaleWidth,
          height: 24.0.scaleHeight,
          child: TextButton(
            onPressed: onTap,
            style: TextButton.styleFrom(
              backgroundColor: CustomTheme.errorColor,
              padding: EdgeInsets.all(2.0.scalePadding),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
            ),
            child: const Icon(
              Iconfont.close,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      );
    });
  }
}
