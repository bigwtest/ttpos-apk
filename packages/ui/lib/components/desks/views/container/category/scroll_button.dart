import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/controllers/category_scroll.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ScrollLeftButton extends StatelessWidget {
  final String tag;
  const ScrollLeftButton({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskCategoryScrollController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(
          () => AnimatedSlide(
            duration: const Duration(milliseconds: 200),
            offset: Offset(controller.canScrollLeft.value ? 0.0 : -1.0, 0.0),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: controller.canScrollLeft.value ? 1.0 : 0.0,
              child: IgnorePointer(
                ignoring: !controller.canScrollLeft.value,
                child: Container(
                  width: 36.0.scaleWidth,
                  height: 36.0.scaleHeight,
                  padding: const EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.scrollLeft();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomTheme.primaryColor.shade300,
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: CustomTheme.greyColor.shade50,
                            blurRadius: 16,
                            offset: Offset(16, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: CustomTheme.secondaryColor,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ScrollRightButton extends StatelessWidget {
  final String tag;
  const ScrollRightButton({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskCategoryScrollController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(
          () => AnimatedSlide(
            duration: const Duration(milliseconds: 200),
            offset: Offset(controller.canScrollRight.value ? 0.0 : 1.0, 0.0),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: controller.canScrollRight.value ? 1.0 : 0.0,
              child: IgnorePointer(
                ignoring: !controller.canScrollRight.value,
                child: Container(
                  width: 36.0.scaleWidth,
                  height: 36.0.scaleHeight,
                  padding: const EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.scrollRight();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomTheme.primaryColor.shade300,
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: CustomTheme.greyColor.shade50,
                            blurRadius: 16,
                            offset: Offset(16, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: CustomTheme.secondaryColor,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
