import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/components/desk/views/bind.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:ttpos_ui/components/language_select.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DeskBindView extends StatelessWidget {
  const DeskBindView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskBindController>(
      builder: (controller) {
        return Obx(() {
          if (!controller.isFirstLoaded || controller.desk != null) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          return Scaffold(
            body: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'packages/ttpos_ui/assets/images/login_bg.png',
                    fit: BoxFit.fill,
                    width: 720.0,
                    height: 420.0,
                  ),
                ), // 语言选择
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 8.0,
                  child: LanguageSelect(),
                ),
                Center(
                  child: Container(
                    width: 640.0.scaleWidth,
                    padding: EdgeInsets.all(24.0.scalePadding),
                    constraints: BoxConstraints(
                      maxHeight: 400.0.scaleHeight,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: BindDeskView(),
                  ),
                ),
              ],
            ),
            backgroundColor: const Color.fromRGBO(255, 246, 222, 1),
          );
        });
      },
    );
  }
}
