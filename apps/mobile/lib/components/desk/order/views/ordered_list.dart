import 'package:flutter/material.dart';
import 'package:mobile/components/desk/order/views/order_list_item.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/ordered_list_num.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/ordered_time.dart';

class OrderedList extends StatelessWidget {
  final bool isShowStatus; // 是否显示已制作
  final bool isShowTakeTime; // h5是否开启接单
  final List<SentKitchenItem> productList;

  const OrderedList({
    super.key,
    this.isShowStatus = false,
    this.isShowTakeTime = true,
    this.productList = const [],
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        final detail = productList[index];
        // 判断是不是商品类型，判断第一个商品是不是是否是自助餐顾客或者是否是加钟，焕哥说的这样可以判断
        final bool isProduct = detail.products.list.isNotEmpty &&
            (!detail.products.list[0].aboutBuffet.isCustomer && !detail.products.list[0].aboutBuffet.isDelay);
        // 如果是h5下单并且后台开启了h5接单配置
        final bool isH5Order = detail.h5OrderTime != null && detail.h5OrderTime != 0 && isShowTakeTime;
        // 是否为拒单
        final bool isAccept = detail.isAccept == false;
        return Column(
          children: [
            OrderedTime(
              isShowTakeTime: detail.isH5OrderNeedAudit == true,
              orderTime: isH5Order ? (detail.h5OrderTime ?? 0) : detail.sendKitchenTime, // 下单时间
              takeTime: detail.acceptTime, // 接单时间
              isAccept: !isAccept,
              isProduct: isProduct,
            ),
            ...detail.products.list.asMap().entries.map(
                  (item) => Opacity(
                    opacity: (isAccept && detail.acceptTime != 0) ? 0.6 : 1.0,
                    child: OrderListItem(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0.0),
                      ),
                      product: item.value,
                      isShowBorder: item.key != detail.products.list.length - 1,
                      // 是否为自助餐
                      btnWidget: item.value.aboutBuffet.isCustomer ||
                              // 是否为加钟
                              item.value.aboutBuffet.isDelay ||
                              // 是否拒单
                              isAccept ||
                              // 是否开启接单并且接单时间为零
                              (isShowTakeTime && detail.acceptTime == 0) ||
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
                ),
          ],
        );
      },
    );
  }
}
