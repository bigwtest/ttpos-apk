import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';
import 'package:kds/controllers/common/drawer_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

import 'accept_button_item.dart';

class AcceptButtonHistory extends StatelessWidget {
  AcceptButtonHistory({super.key});
  final AcceptListController acceptListController = Get.find<AcceptListController>();
  final CustomDrawerController customDrawerController = Get.find<CustomDrawerController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44.0.scaleHeight,
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              customDrawerController.openEndDrawer('acceptHistory');
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: CustomTheme.secondaryColor.shade700,
                  width: 1,
                ),
              ),
            ),
            child: Text(
              '上菜历史'.tr,
              style: TextStyle(
                fontSize: 18.0,
                color: CustomTheme.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Obx(
                () => Row(
                  spacing: 8,
                  children: [
                    for (var item in acceptListController.productionOrderList.finishedList.list)
                      AcceptButtonItem(
                        item: item,
                        onTap: () {
                          acceptListController.productionRecovery(item.uuid);
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
