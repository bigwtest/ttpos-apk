// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/home/header/dev.dart';
// Project imports:
import 'package:pos/components/home/menu/menu.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Sidebar extends StatelessWidget {
  Sidebar({super.key});
  final ConfigController configController = Get.find<ConfigController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0.scaleWidth,
      height: double.infinity,
      color: CustomTheme.secondaryColor,
      child: Column(
        children: [
          // Logo部分
          DevInfo(
            child: SizedBox(
              height: 56.0.scaleHeight,
              child: Obx(() {
                return Center(
                  child: configController.cloud.brandLogo != null
                      ? Image.network(
                          configController.cloud.brandLogo ?? '',
                          fit: BoxFit.fill,
                          height: 42.0,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.fill,
                              height: 42.0,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  height: 42.0,
                                  color: Colors.transparent,
                                );
                              },
                            );
                          },
                        )
                      : Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.fill,
                          height: 42.0,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 42.0,
                              color: Colors.transparent,
                            );
                          },
                        ),
                );
              }),
            ),
          ),
          // 主体部分使用 Expanded 充满剩余空间
          Expanded(child: Menu()),
        ],
      ),
    );
  }
}
