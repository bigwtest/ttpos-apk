import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/login/login_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class LogoutIconButton extends StatelessWidget {
  const LogoutIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Iconfont.logout,
        size: 24.0.scaleWidth,
      ),
      color: CustomTheme.secondaryColor,
      padding: EdgeInsets.zero,
      onPressed: () async {
        await DialogManager.showConfirmDialog(
          title: '退出确认'.tr,
          message: '当前未交班，确定要退出登录吗？'.tr,
          onConfirm: () async {
            await LoginController.logout();
            return true;
          },
        );
      },
    );
  }
}
