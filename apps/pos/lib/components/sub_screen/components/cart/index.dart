// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_header_controller.dart';
// Package imports:
import 'package:pos/components/sub_screen/components/cart/list/index.dart' as list; // 桌台列表
import 'package:pos/components/sub_screen/components/cart/statistics/index.dart' as statistics; // 桌台点单
import 'package:ttpos_ui/theme/theme.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CartHeaderController(),
      dispose: (_) => Get.delete<CartHeaderController>(),
      builder: (controller) => Container(
        color: CustomTheme.greyColor.shade100,
        child: Column(
          children: [
            Container(
              height: 58.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: CustomTheme.secondaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo部分
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Obx(
                      () => CachedNetworkImage(
                        imageUrl: controller.appLogo,
                        width: 98.0,
                        height: 48.0,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Image.asset(
                          'assets/images/logo_ttpos.png',
                          width: 98.0,
                          height: 48.0,
                          fit: BoxFit.cover,
                        ),
                        errorWidget: (context, url, error) => Image.asset(
                          'assets/images/logo_ttpos.png',
                          width: 98.0,
                          height: 48.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      '欢迎使用@name点餐系统'.trParams({
                        'name': controller.appName,
                      }),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    list.Index(),
                    const SizedBox(width: 10.0),
                    statistics.Index(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
