// Flutter imports:
import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class MenuItem extends GetView<MenuController> {
  final String title;
  final IconData? icon;
  final String? route;
  final bool isRoute;
  final VoidCallback? onTap;
  final int? num;
  MenuItem({
    super.key,
    required this.title,
    this.icon,
    this.route,
    this.onTap,
    this.isRoute = true,
    this.num,
  }) {
    if (isRoute) {
      if (route == null) {
        debugPrint('route is required when isRoute is true, $title');
      }
    } else {
      if (onTap == null) {
        debugPrint('onTap is required when isRoute is false, $title');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: isRoute ? () => controller.setCurrentRoute(route) : onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6.0.scalePadding),
          padding: EdgeInsets.symmetric(vertical: 4.0.scalePadding),
          decoration: BoxDecoration(
            color: controller.currentRoute.value == route ? CustomTheme.primaryColor.shade600 : Colors.transparent,
            borderRadius: BorderRadius.circular(
              6.0.scalePadding,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none, // 允许超出 Stack 边界的部分显示
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null)
                      Icon(
                        icon,
                        color:
                            controller.currentRoute.value == route ? CustomTheme.secondaryColor : CustomTheme.greyColor,
                        size: 28.0.scaleHeight,
                      ),
                    SizedBox(height: 2.0.scalePadding),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:
                            controller.currentRoute.value == route ? CustomTheme.secondaryColor : CustomTheme.greyColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              if (num != null && num! > 0)
                Positioned(
                  right: 8.0.scalePadding,
                  top: -2.0.scalePadding,
                  child: Container(
                    width: 16.0.scaleWidth,
                    height: 16.0.scaleHeight,
                    decoration: BoxDecoration(
                      color: CustomTheme.errorColor.shade500,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        num != null && num! > 99 ? '99+' : num.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
