import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/components/open/swiper/controllers/open_swiper_controller.dart';
import 'package:tablet/components/open/swiper/views/open_swiper_item.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OpenSwiper extends StatefulWidget {
  const OpenSwiper({super.key});

  @override
  State<OpenSwiper> createState() => _OpenSwiperState();
}

class _OpenSwiperState extends State<OpenSwiper> {
  late OpenSwiperController controller;

  @override
  void initState() {
    super.initState();
    try {
      controller = Get.find<OpenSwiperController>();
    } catch (e) {
      controller = Get.put(OpenSwiperController());
    }
  }

  @override
  void dispose() {
    Get.delete<OpenSwiperController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OpenSwiperController>(
      builder: (controller) {
        return Stack(
          children: [
            Obx(
              () => CarouselSlider(
                carouselController: controller.carouselController,
                options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    controller.swiperIndex = index;
                    debugPrint('onPageChanged: $index, $reason');
                  },
                ),
                items: controller.swiperList.map((item) {
                  return LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return SizedBox(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                        child: OpenSwiperItem(
                          item: item,
                          onNextPage: controller.swiperList.length == 1
                              ? () {}
                              : controller.carouselController.nextPage,
                          isSingle: controller.swiperList.length == 1,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Positioned(
              bottom: 32.0,
              left: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8.0,
                    children: [
                      for (var i = 0; i < controller.swiperList.length; i++)
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color:
                                controller.swiperIndex == i ? CustomTheme.primaryColor : CustomTheme.greyColor.shade500,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
