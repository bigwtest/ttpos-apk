import 'package:flutter/material.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/order_item.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/ordered_list_num.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/ordered_time.dart';

class OrderedList extends StatelessWidget {
  final bool isShowStatus; // 是否显示已制作
  final List<SentKitchenItem> productList;
  final Product? activeProduct;
  final void Function(Product)? onTap; // 点击

  const OrderedList({
    super.key,
    this.isShowStatus = false,
    this.activeProduct,
    this.productList = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: productList.length,
      separatorBuilder: (context, index) => SizedBox(
        height: 16.0,
      ),
      itemBuilder: (_, int index) {
        final product = productList[index];
        return Column(
          children: [
            // 时间
            OrderedTime(
              isShowTakeTime: false,
              orderTime: product.sendKitchenTime,
            ),
            // 列表
            ...product.products.list.asMap().entries.map(
                  (item) => OrderItem(
                    onTap: () {
                      if (onTap != null) onTap?.call(item.value);
                    },
                    isActive: activeProduct?.uuid == item.value.uuid,
                    product: item.value,
                    isShowBorder: item.key != product.products.list.length - 1,
                    numWidget:
                        // 是否为自助餐
                        item.value.aboutBuffet.isCustomer ||
                                // 是否为加钟
                                item.value.aboutBuffet.isDelay ||
                                // 是否为退菜
                                item.value.isCancel ||
                                // 是否显示在厨显
                                item.value.isShowKitchen != 1
                            ? Text(
                                item.value.num.toString(),
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : OrderedListNum(
                                isShowStatus: isShowStatus,
                                finishedNum: item.value.finishedNum ?? 0,
                                num: item.value.num,
                              ),
                  ),
                ),
          ],
        );
      },
    );
  }
}
