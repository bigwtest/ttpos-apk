import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/components/open/controllers/container.dart';
import 'package:mobile/pages/home/controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenMenu extends StatelessWidget {
  const DeskOpenMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32.0,
      children: [
        GetBuilder<ConfigController>(
          builder: (controller) {
            return Obx(() {
              return Row(
                spacing: 16.0,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)), // 设置圆角半径
                    child: CachedNetworkImage(
                      imageUrl: controller.companyLogo,
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Image.asset(
                        'assets/images/logo_web.png',
                        fit: BoxFit.fill,
                        width: 80.0,
                        height: 80.0,
                      ),
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/images/logo_web.png',
                        fit: BoxFit.fill,
                        width: 80.0,
                        height: 80.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      controller.companyName,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: CustomTheme.secondaryColor,
                      ),
                    ),
                  ),
                ],
              );
            });
          },
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: CustomTheme.greyColor.shade100,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: GetBuilder<HomePageController>(
            builder: (controller) {
              return Obx(() {
                return Row(
                  children: [
                    Expanded(
                      child: Text(
                        controller.desk?.deskNo ?? '',
                        // '当前桌号: @deskNo'.trParams({'deskNo': controller.desk?.deskNo ?? ''}),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: CustomTheme.secondaryColor,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TtButton(
                      text: '点餐'.tr,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      onTap: controller.desk?.uuid == null || controller.desk?.uuid == 0
                          ? null
                          : () => DeskOpenContainerController.open(
                                deskUuid: controller.desk?.uuid ?? 0,
                                deskNo: controller.desk?.deskNo ?? '',
                              ),
                    ),
                  ],
                );
              });
            },
          ),
        ),
      ],
    );
  }
}
