import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenContentBuffet extends StatelessWidget {
  final String tag;

  const DeskOpenContentBuffet({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            spacing: 16.0,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  color: CustomTheme.greyColor.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: controller.selectedBuffets.isEmpty
                    ? SizedBox(
                        height: 120.0,
                        child: Center(
                          child: Text(
                            '请选择自助餐套餐'.tr,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ...controller.selectedBuffets.map(
                            (e) => Text(
                              e.localeName.translate,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: CustomTheme.greyColor.shade300,
                            margin: const EdgeInsets.symmetric(vertical: 12.0),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Obx(() {
                                  // 假设每行显示3个子项
                                  int itemsPerRow = 2;
                                  // 每个子项的宽度
                                  double itemWidth =
                                      (constraints.maxWidth - 16) / itemsPerRow; // 20是因为左右的总padding是10+10
                                  final int count = controller.uniqueCustomerTypes.length;
                                  return Wrap(
                                    spacing: 16.0, // 主轴方向的间距
                                    runSpacing: 8.0, // 交叉轴方向的间距
                                    children: [
                                      ...List.generate(count, (index) {
                                        final type = controller.uniqueCustomerTypes[index];
                                        return _buildPersonTypeCounter(
                                          customerType: type,
                                          customerTypeCounts: controller.customerTypeCounts,
                                          selectedCustomerTypeUuid: controller.selectedCustomerTypeUuid,
                                          decrementCustomerCount: controller.decrementCustomerCount,
                                          incrementCustomerCount: controller.incrementCustomerCount,
                                          selectCustomerType: controller.selectCustomerType,
                                          width: itemWidth,
                                        );
                                      }),
                                      Container(
                                        width: itemWidth,
                                        margin: EdgeInsets.only(top: count % 2 == 0 ? 0 : 36),
                                        child: Row(
                                          children: [
                                            Text(
                                              '共'.tr,
                                              style: TextStyle(
                                                color: CustomTheme.secondaryColor,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Text(
                                                '${controller.totalCustomerCount}',
                                                style: TextStyle(
                                                  color: CustomTheme.primaryColor,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '人'.tr,
                                              style: TextStyle(
                                                color: CustomTheme.secondaryColor,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                });
                              },
                            ),
                          ),
                        ],
                      ),
              ),
              Obx(() {
                return controller.buffetList.isNotEmpty
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 8.0,
                        children: List.generate(controller.buffetList.length, (index) {
                          final buffet = controller.buffetList[index];
                          final isSelected = controller.selectedBuffetUuids.contains(buffet.uuid);
                          final isDisabled = !controller.isBuffetSelectable(buffet.uuid);

                          return _buildBuffetOption(
                            buffet.localeName.translate,
                            buffet.price.primaryCurrency,
                            buffet.price.secondaryCurrency,
                            isSelected: isSelected,
                            isDisabled: isDisabled,
                            onTap: isDisabled
                                ? () => DialogManager.showToast(
                                      controller.selectedBuffetUuids.length == 2 ? '最多只能选择2个'.tr : '此套餐不支持组合'.tr,
                                    )
                                : () => controller.toggleSelectedBuffet(buffet.uuid),
                          );
                        }),
                      )
                    : EmptyDataView();
              }),
            ],
          );
        });
      },
    );
  }

  Widget _buildPersonTypeCounter({
    required BuffetCustomerType customerType,
    required Map<int, int> customerTypeCounts,
    required int? selectedCustomerTypeUuid,
    required void Function(int uuid) decrementCustomerCount,
    required void Function(int uuid) incrementCustomerCount,
    required void Function(int uuid) selectCustomerType,
    double width = 60.0,
  }) {
    final count = customerTypeCounts[customerType.uuid] ?? 0;

    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4.0,
        children: [
          Text(
            customerType.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          Container(
            height: 48.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: CustomTheme.greyColor.shade300),
            ),
            child: Row(
              children: [
                _buildCounterButton(
                  icon: Iconfont.minus,
                  onTap: count > 0 ? () => decrementCustomerCount(customerType.uuid) : null,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          color: CustomTheme.greyColor.shade300,
                          width: 1,
                        ),
                        right: BorderSide(
                          color: CustomTheme.greyColor.shade300,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      '$count',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: CustomTheme.secondaryColor,
                      ),
                    ),
                  ),
                ),
                _buildCounterButton(
                  icon: Iconfont.plus,
                  onTap: () => incrementCustomerCount(customerType.uuid),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCounterButton({
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 48.0,
        height: 48.0,
        child: Icon(
          icon,
          size: 20.0,
          color: onTap == null ? CustomTheme.greyColor.shade400 : CustomTheme.primaryColor,
        ),
      ),
    );
  }

  Widget _buildBuffetOption(
    String title,
    String price,
    String priceUSD, {
    bool isSelected = false,
    bool isDisabled = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        spacing: 12.0,
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isDisabled
                  ? CustomTheme.greyColor.shade100
                  : isSelected
                      ? CustomTheme.primaryColor
                      : Colors.white,
              border: Border.all(
                color: isDisabled
                    ? CustomTheme.greyColor.shade400
                    : isSelected
                        ? CustomTheme.primaryColor
                        : CustomTheme.secondaryColor.shade700,
              ),
            ),
            child: isSelected && !isDisabled
                ? const Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.white,
                  )
                : null,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: isDisabled
                    ? CustomTheme.greyColor.shade300
                    : isSelected
                        ? CustomTheme.primaryColor.shade50
                        : Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? CustomTheme.primaryColor : CustomTheme.greyColor.shade300,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 24.0,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: isDisabled ? CustomTheme.greyColor : CustomTheme.secondaryColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: isDisabled ? CustomTheme.greyColor : CustomTheme.secondaryColor,
                        ),
                      ),
                      Text(
                        priceUSD,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: CustomTheme.greyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
