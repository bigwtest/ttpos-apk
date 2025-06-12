// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/goods_cart/order/view/split_order/split_order_item.dart';
import 'package:pos/model/response/cart/cart_sale_order.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SplitOrder extends StatelessWidget {
  final bool isEdit; // 是否编辑模式
  final ResponseCartSaleOrder? saleOrder;
  final List<ResponseCartSaleOrder>? saleOrderList;
  final ValueChanged<ResponseCartSaleOrder?> onSelectedSaleOrder;
  final void Function(String, int)? onTapEvent;
  final int? selectedSaleOrderUuid;

  const SplitOrder({
    super.key,
    this.isEdit = false,
    this.saleOrder,
    this.saleOrderList,
    this.selectedSaleOrderUuid,
    required this.onSelectedSaleOrder,
    this.onTapEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isEdit ? CustomTheme.primaryColor.shade50 : Colors.transparent,
        borderRadius: BorderRadius.only(
          bottomLeft: isEdit ? Radius.circular(8.0) : Radius.circular(0.0),
          bottomRight: isEdit ? Radius.circular(8.0) : Radius.circular(0.0),
        ),
        border: Border(
          top: BorderSide(
            width: 0.7,
            color: CustomTheme.greyColor.shade300,
            style: isEdit ? BorderStyle.none : BorderStyle.solid,
          ),
        ),
      ),
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 10.0,
        bottom: 16.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isEdit
                  ? Text(
                      '将所选商品移至'.tr,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    )
                  : TextButton(
                      onPressed: () {
                        onTapEvent?.call('cancel_split_order', 0);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero, // 移除最小尺寸限制
                        padding: const EdgeInsets.only(
                          left: 0.0,
                          right: 0.0,
                          top: 4.0,
                          bottom: 10.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              4.0,
                            ),
                          ),
                        ),
                      ),
                      child: Text(
                        '撤销拆单'.tr,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                          color: CustomTheme.secondaryColor,
                        ),
                      ),
                    ),
              isEdit
                  ? Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            if ((saleOrderList?.length ?? 0) < 10) {
                              onTapEvent?.call('add_split_order', 0);
                            }
                          },
                          style: TextButton.styleFrom(
                            backgroundColor:
                                (saleOrderList?.length ?? 0) < 10
                                    ? CustomTheme.primaryColor.shade300
                                    : CustomTheme.greyColor.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  4.0,
                                ),
                              ),
                            ),
                            minimumSize: Size.zero, // 移除最小尺寸限制
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 10.0, // 设置高度小一点
                            ),
                          ),
                          child: Text(
                            '添加拆单'.tr,
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w600,
                              color:
                                (saleOrderList?.length ?? 0) < 10
                                    ? CustomTheme.secondaryColor
                                    : CustomTheme.greyColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        TextButton(
                          onPressed: () {
                            onTapEvent?.call('out_split_order', 0);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: CustomTheme.primaryColor.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  4.0,
                                ),
                              ),
                            ),
                            minimumSize: Size.zero, // 移除最小尺寸限制
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 10.0, // 设置高度小一点
                            ),
                          ),
                          child: Text(
                            '退出'.tr,
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w600,
                              color: CustomTheme.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox.shrink(),
            ],
          ),
          SizedBox(
            height: 50.0, // 限定 ListView 的高度
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // 设置为水平滚动
              itemCount: saleOrderList?.length ?? 0,
              itemBuilder: (_, int index) {
                return SplitOrderItem(
                  orderIndex: index + 1,
                  isActive: saleOrderList?[index].uuid == selectedSaleOrderUuid,
                  isDisabled: saleOrderList?[index].status == 1,
                  isEdit: isEdit,
                  onTap: (_) {
                    onSelectedSaleOrder(saleOrderList?[index]);
                  },
                  onClose: (_) {
                    onTapEvent?.call('close_split_order', saleOrderList?[index].uuid ?? 0);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
