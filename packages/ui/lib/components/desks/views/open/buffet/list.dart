// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/views/open/buffet/item.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenDialogContentBuffetList extends StatelessWidget {
  final String tag;
  final bool isBuffetListSelectable;

  const DeskOpenDialogContentBuffetList({
    super.key,
    required this.tag,
    required this.isBuffetListSelectable,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Container(
          constraints: const BoxConstraints(
            minHeight: 40.0,
            maxHeight: 480.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              width: 1,
              color: CustomTheme.secondaryColor.shade300,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 列表部分 - 占用剩余空间并可滚动
              Obx(() {
                return Expanded(
                  child: controller.buffetList.isNotEmpty
                      ? Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: controller.buffetList.length,
                                itemBuilder: (_, int index) {
                                  return Obx(() {
                                    final buffet = controller.buffetList[index];
                                    final isSelected = controller.selectedBuffetUuids.contains(buffet.uuid);
                                    final isDisabled = !controller.isBuffetSelectable(buffet.uuid);
                                    final ActionButtonType type =
                                        isSelected ? ActionButtonType.primary : ActionButtonType.normal;

                                    return Padding(
                                      padding:
                                          EdgeInsets.only(bottom: index < controller.buffetList.length - 1 ? 8.0 : 0),
                                      child: DeskOpenDialogBuffetItem(
                                        text: buffet.localeName.translate,
                                        price: buffet.price.toSafetyString(),
                                        type: type,
                                        isDisabled: isDisabled,
                                        onTap: isDisabled
                                            ? () => DialogManager.showToast(
                                                  controller.selectedBuffetUuids.length == 2
                                                      ? '最多只能选择2个'.tr
                                                      : '此套餐不支持组合'.tr,
                                                )
                                            : () => controller.toggleSelectedBuffet(buffet.uuid),
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                            if (!isBuffetListSelectable)
                              Positioned.fill(
                                child: Material(
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Color.fromRGBO(0, 0, 0, 0.38),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Center(
                                      child: Text(
                                        '已点自助餐商品，当前不可修改套餐'.tr,
                                        style: TextStyle(
                                          color: CustomTheme.greyColor.shade50,
                                          fontSize: 16.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        )
                      : Center(
                          child: Text(
                            '暂无可选自助餐'.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
