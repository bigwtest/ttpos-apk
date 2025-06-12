import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/auth/auth_api.dart';
import 'package:tablet/components/home/header/header_setting.dart';
import 'package:tablet/components/setting/setting.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Header extends StatelessWidget {
  Header({super.key});
  final ConfigController configController = Get.find<ConfigController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64.0.scaleHeight,
      color: CustomTheme.secondaryColor,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onDoubleTap: () async {
              String password = '';
              password = await DialogManager.showPasswordDialog(
                title: '请输入密码'.tr,
                hintText: '请输入密码'.tr,
                onConfirm: ({required String password}) async {
                  final res = await AuthAPI().verifyAdvancedPassword(password: password);
                  return res;
                },
              );
              if (password.isEmpty) return;
              Get.dialog(
                DismissKeyboardDialog(
                  child: HeadSetting(),
                ),
                barrierDismissible: true,
              );
            },
            child: Obx(() {
              return configController.brandLogoFull != null
                  ? Image.network(
                      configController.brandLogoFull ?? '',
                      fit: BoxFit.fill,
                      height: 24.0.scaleHeight,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/logo_ttpos.png',
                          fit: BoxFit.fill,
                          height: 24.0.scaleHeight,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 24.0.scaleWidth,
                              height: 24.0.scaleHeight,
                              color: Colors.transparent,
                            );
                          },
                        );
                      },
                    )
                  : Image.asset(
                      'assets/images/logo_ttpos.png',
                      fit: BoxFit.fill,
                      height: 24.0.scaleHeight,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 24.0.scaleWidth,
                          height: 24.0.scaleHeight,
                          color: Colors.transparent,
                        );
                      },
                    );
            }),
          ),
          HeaderSetting(),
        ],
      ),
    );
  }
}
