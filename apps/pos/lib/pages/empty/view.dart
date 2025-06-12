import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Text(
          '欢迎使用 TTPOS'.tr,
          style: TextStyle(
            color: CustomTheme.greyColor,
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
