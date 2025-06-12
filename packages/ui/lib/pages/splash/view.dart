// Flutter imports:
// Package imports:
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
// Project imports:
import 'package:ttpos_ui/pages/splash/controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.isLogoShown = true,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
              child: SizedBox(
                width: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: TextLiquidFill(
                    text: 'TTPOS',
                    waveColor: Colors.orange,
                    loadDuration: const Duration(seconds: 3),
                    textStyle: Get.textTheme.headlineLarge!.copyWith(
                      fontFamily: 'BigShouldersStencilDisplay',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 8,
                    ),
                    boxBackgroundColor: Get.theme.scaffoldBackgroundColor.withRed(120),
                    boxHeight: 120,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Shimmer.fromColors(
                  baseColor: Get.theme.unselectedWidgetColor,
                  highlightColor: Get.theme.highlightColor,
                  child: Text(
                    'Welcome to TTPOS'.tr,
                    style: Get.textTheme.headlineSmall,
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Get.theme.unselectedWidgetColor,
                  highlightColor: Get.theme.highlightColor,
                  child: Text(
                    'Next Generation Point of Sale All In One'.tr,
                    style: Get.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
