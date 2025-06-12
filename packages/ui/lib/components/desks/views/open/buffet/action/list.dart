import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenDialogContentBuffetActionBoardList extends StatelessWidget {
  final String tag;

  const DeskOpenDialogContentBuffetActionBoardList({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 顾客类型网格
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Obx(() {
                  // 每行显示3个子项
                  int itemsPerRow = 3;
                  // 每个子项的宽度
                  double itemWidth = (constraints.maxWidth - (itemsPerRow - 1) * 10) / itemsPerRow;
                  final types = controller.uniqueCustomerTypes;
                  // 计算需要多少行
                  final int rowCount = (types.length / itemsPerRow).ceil();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(rowCount, (rowIndex) {
                      // 计算当前行应该显示哪些类型
                      final int startIndex = rowIndex * itemsPerRow;
                      final int endIndex =
                          (startIndex + itemsPerRow) > types.length ? types.length : startIndex + itemsPerRow;

                      return Padding(
                        padding: EdgeInsets.only(bottom: rowIndex < rowCount - 1 ? 10.0 : 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(endIndex - startIndex, (index) {
                            final type = types[startIndex + index];
                            return Container(
                              width: itemWidth,
                              margin: EdgeInsets.only(
                                right: index < endIndex - startIndex - 1 ? 10.0 : 0,
                              ),
                              child: _CustomerTypeCounter(
                                customerType: type,
                                customerTypeCounts: controller.customerTypeCounts,
                                selectedCustomerTypeUuid: controller.selectedCustomerTypeUuid,
                                decrementCustomerCount: controller.decrementCustomerCount,
                                incrementCustomerCount: controller.incrementCustomerCount,
                                selectCustomerType: controller.selectCustomerType,
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                  );
                });
              },
            ),
          ],
        );
      },
    );
  }
}

class _CustomerTypeCounter extends StatelessWidget {
  final BuffetCustomerType customerType;
  final Map<int, int> customerTypeCounts;
  final int? selectedCustomerTypeUuid;
  final void Function(int uuid) decrementCustomerCount;
  final void Function(int uuid) incrementCustomerCount;
  final void Function(int uuid) selectCustomerType;

  const _CustomerTypeCounter({
    required this.customerType,
    required this.customerTypeCounts,
    required this.selectedCustomerTypeUuid,
    required this.decrementCustomerCount,
    required this.incrementCustomerCount,
    required this.selectCustomerType,
  });

  @override
  Widget build(BuildContext context) {
    final count = customerTypeCounts[customerType.uuid] ?? 0;
    final isSelected = selectedCustomerTypeUuid == customerType.uuid;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          customerType.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        GestureDetector(
          // 阻止点击事件冒泡
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: isSelected ? CustomTheme.primaryColor : CustomTheme.greyColor.shade300,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                // 减号按钮
                _CounterButton(
                  icon: Icons.remove,
                  onPressed: count > 0 ? () => decrementCustomerCount(customerType.uuid) : null,
                ),
                // 数量显示 - 可点击区域
                Expanded(
                  child: InkWell(
                    onTap: () => selectCustomerType(customerType.uuid),
                    child: Container(
                      height: 36,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
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
                        color: isSelected ? CustomTheme.primaryColor.shade50 : null,
                      ),
                      child: Text(
                        '$count',
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                // 加号按钮
                _CounterButton(
                  icon: Icons.add,
                  onPressed: () => incrementCustomerCount(customerType.uuid),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const _CounterButton({
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 36,
        height: 36,
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 20,
          color: onPressed == null ? CustomTheme.greyColor.shade400 : CustomTheme.primaryColor,
        ),
      ),
    );
  }
}
