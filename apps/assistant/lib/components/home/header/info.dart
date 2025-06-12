import 'package:assistant/api/auth/auth_api.dart';
import 'package:assistant/components/home/dialog/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class HeaderInfo extends GetView<ConfigController> {
  const HeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 42.0,
      mainAxisSize: MainAxisSize.min,
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
            );
          },
          child: Center(
            child: Obx(() {
              final String? logoUrl = controller.cloud.brandLogoLong;
              return logoUrl != null && logoUrl.isNotEmpty
                  ? Image.network(
                      logoUrl,
                      width: 96.0.scaleWidth,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/logo_ttpos.png',
                          width: 96.0.scaleWidth,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 96.0.scaleWidth,
                              color: Colors.transparent,
                            );
                          },
                        );
                      },
                    )
                  : Image.asset(
                      'assets/images/logo_ttpos.png',
                      width: 96.0.scaleWidth,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 96.0.scaleWidth,
                          color: Colors.transparent,
                        );
                      },
                    );
            }),
          ),
        ),
        Text(
          controller.companyName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
