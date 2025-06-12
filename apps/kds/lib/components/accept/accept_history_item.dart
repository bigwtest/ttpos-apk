import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';
import 'package:kds/model/response/resp_history_list.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptHistoryItem extends StatelessWidget {
  final bool? isborder;
  final RespProductionItem? item;
  final Function() getList;
  AcceptHistoryItem({
    super.key,
    this.isborder = true,
    this.item,
    required this.getList,
  });
  final AcceptListController acceptListController = Get.find<AcceptListController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isborder == true ? CustomTheme.greyColor.shade300 : Colors.transparent,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 32,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Text(
                        item?.localeName.translate ?? '',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: CustomTheme.secondaryColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        item?.productAttributeNames.translate ?? '',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: CustomTheme.secondaryColor.shade200,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  spacing: 4,
                  children: [
                    Text(
                      'X${item?.num ?? 0}',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: CustomTheme.secondaryColor,
                      ),
                    ),
                    Text(
                      '${item?.finishedTime.tz} ${'出餐完成'.tr}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: CustomTheme.secondaryColor.shade200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          ElevatedButton(
            onPressed: () async {
              await acceptListController.productionRecovery(item?.uuid ?? 0);
              getList();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomTheme.primaryColor.shade300,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0, // Remove shadow by setting elevation to 0
              shadowColor: Colors.transparent, //
            ),
            child: Text(
              '恢复'.tr,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
