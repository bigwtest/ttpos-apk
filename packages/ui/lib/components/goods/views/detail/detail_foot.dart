// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DetailFoot extends StatelessWidget {
  final bool isLoading;
  final GlobalKey? confirmKey;
  final void Function()? onSubmit; // 点击

  const DetailFoot({
    super.key,
    this.isLoading = false,
    this.confirmKey,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Obx(
            () => SizedBox(
              height: 40.0.scaleHeight,
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        4.0,
                      ),
                    ),
                  ),
                  side: BorderSide(
                    color: CustomTheme.secondaryColor.shade300,
                    width: 1,
                  ),
                ),
                child: Text(
                  '取消'.tr,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Obx(
            () => SizedBox(
              height: 40.0.scaleHeight,
              child: TextButton(
                key: confirmKey,
                onPressed: isLoading ? null : onSubmit,
                style: TextButton.styleFrom(
                  backgroundColor: CustomTheme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        4.0,
                      ),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLoading
                        ? Padding(
                            padding: EdgeInsets.only(right: 6.0),
                            child: SizedBox(
                              width: 14.0,
                              height: 14.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  CustomTheme.greyColor.shade300,
                                ),
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    Text(
                      '确定'.tr,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
