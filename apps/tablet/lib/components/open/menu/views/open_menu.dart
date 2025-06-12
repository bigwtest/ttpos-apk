import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/components/open/menu/controllers/open_menu.controller.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OpenMenu extends StatelessWidget {
  OpenMenu({super.key});
  final ConfigController configController = Get.find<ConfigController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 80.0,
        left: 48.0,
        right: 48.0,
      ),
      child: Column(
        spacing: 56.0,
        children: [
          Obx(() {
            return Row(
              spacing: 16.0,
              children: [
                configController.companyLogo.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          configController.companyLogo,
                          fit: BoxFit.fill,
                          width: 80.0,
                          height: 80.0,
                          errorBuilder: (context, error, stackTrace) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                'assets/images/logo.png',
                                fit: BoxFit.fill,
                                width: 80.0,
                                height: 80.0,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 80.0,
                                    height: 80.0,
                                    color: Colors.transparent,
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.fill,
                          width: 80.0,
                          height: 80.0,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 80.0,
                              height: 80.0,
                              color: Colors.transparent,
                            );
                          },
                        ),
                      ),
                GetBuilder<ConfigController>(
                  builder: (controller) {
                    return Obx(() {
                      return Expanded(
                        child: Text(
                          controller.companyName,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: CustomTheme.secondaryColor,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    });
                  },
                ),
              ],
            );
          }),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: CustomTheme.greyColor.shade100,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: GetBuilder<DeskBindController>(
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
                        text: '开始点餐'.tr,
                        fontWeight: FontWeight.w600,
                        onTap: controller.desk?.uuid == null || controller.desk?.uuid == 0
                            ? null
                            : () {
                                OpenMenuController.open(
                                  deskUuid: controller.desk?.uuid ?? 0,
                                  deskNo: controller.desk?.deskNo ?? '',
                                );
                              },
                      ),
                    ],
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
