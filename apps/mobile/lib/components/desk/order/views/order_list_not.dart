import 'package:flutter/material.dart';
import 'package:mobile/components/desk/order/views/order_list_item.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/tablet_cart_order/models/num_change_model.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';

//===========================================================================
// 未下单
//===========================================================================

class OrderListNot extends StatelessWidget {
  final Product? activeProduct;
  final List<Product> productList;
  final bool isNumChangeLoading;
  final GoodsNumChangeModel? changeProduct;
  final void Function(CounterType type, Product item)? onChangeCounter; // 点击
  final void Function(Product)? onTap; // 点击

  const OrderListNot({
    super.key,
    this.activeProduct,
    this.productList = const [],
    this.isNumChangeLoading = false,
    this.changeProduct,
    this.onChangeCounter,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        final item = productList[index];
        return OrderListItem(
          onTap: () {
            if (onTap != null) onTap?.call(item);
          },
          isActive: activeProduct?.uuid == item.uuid,
          product: item,
          isShowBorder: index != productList.length - 1,
          btnWidget: TtOrderCounter(
            // 如果是必点商品，关闭顾客可修改必点数量
            isDisabledMinus: (item.isMust && !item.canChangeNum) ||
                isNumChangeLoading &&
                    changeProduct?.type == CounterType.down &&
                    changeProduct?.saleOrderProductUuid == item.uuid,
            isDisabledPlus: isNumChangeLoading &&
                changeProduct?.type == CounterType.up &&
                changeProduct?.saleOrderProductUuid == item.uuid,
            num: item.num,
            onChange: (type, {startKey}) {
              if (onChangeCounter == null) return;
              onChangeCounter?.call(type, item);
            },
          ),
        );
      },
    );
  }
}
