import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/home/header/header_button.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HeaderNav extends StatelessWidget {
  HeaderNav({super.key});
  final AcceptListController acceptListController = Get.find<AcceptListController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            Obx(
              () => HeaderButton(
                text: '按订单'.tr,
                onTap: () {
                  if (acceptListController.isLoading || acceptListController.type == 1) return;
                  acceptListController.type = 1;
                  acceptListController.categoryUuid = 0;
                  acceptListController.pageNo = 1;
                  acceptListController.getProductionOrderList(showLoading: true);
                },
                active: acceptListController.type == 1,
              ),
            ),
            Obx(
              () => HeaderButton(
                text: '按分类'.tr,
                onTap: () {
                  if (acceptListController.isLoading || acceptListController.type == 2) return;
                  acceptListController.type = 2;
                  acceptListController.categoryUuid = 0;
                  acceptListController.pageNo = 1;
                  acceptListController.getProductionOrderListByCategory(showLoading: true);
                },
                active: acceptListController.type == 2,
              ),
            ),
            if (acceptListController.type == 2)
              Container(
                width: 1,
                height: 24,
                color: CustomTheme.greyColor,
              ),
            if (acceptListController.type == 2)
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => Row(
                      spacing: 16,
                      children: [
                        for (var item in acceptListController.categoryList)
                          HeaderButton(
                            text: item.localeName.translate,
                            onTap: () {
                              if (acceptListController.isLoading || acceptListController.categoryUuid == item.uuid) {
                                return;
                              }
                              acceptListController.categoryUuid = item.categoryKey == 'all' ? 0 : item.uuid;
                              acceptListController.pageNo = 1;
                              acceptListController.getProductionOrderListByCategory(showLoading: true);
                            },
                            active: acceptListController.categoryUuid == item.uuid ||
                                (item.categoryKey == 'all' && acceptListController.categoryUuid == 0),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
