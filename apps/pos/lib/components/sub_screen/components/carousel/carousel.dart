import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/carousel/carousel_item.dart';
import 'package:pos/components/sub_screen/components/carousel/controllers/swiper_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Swiper extends StatefulWidget {
  const Swiper({super.key});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  @override
  void initState() {
    super.initState();

    debugPrint('Swiper initState');
  }

  @override
  void dispose() {
    debugPrint('Swiper dispose');

    if (Get.isRegistered<SwiperController>()) {
      Get.find<SwiperController>().swiperIndex = 0;
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 获取屏幕尺寸
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return GetBuilder<SwiperController>(
      builder: (controller) => Container(
        color: CustomTheme.greyColor.shade100,
        child: Obx(
          () => Center(
            child: controller.carouselList.isNotEmpty
                ? CarouselSlider(
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                      height: screenHeight,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        controller.swiperIndex = index;
                        debugPrint('Swiper onPageChanged $index $reason');
                      },
                    ),
                    items: controller.carouselList.asMap().entries.map((entry) {
                      final index = entry.key;
                      final item = entry.value;

                      return SizedBox(
                        width: screenWidth,
                        height: screenHeight,
                        child: controller.swiperIndex == index
                            ? SwiperItem(
                                item: item,
                                onNextPage: controller.carouselList.length == 1
                                    ? () {}
                                    : controller.carouselController.nextPage,
                                isSingle: controller.carouselList.length == 1,
                              )
                            : const SizedBox.shrink(),
                      );
                    }).toList(),
                  )
                : Image.asset(
                    'assets/images/sub_screen_advertising.png',
                    width: screenWidth,
                    height: screenHeight,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}
