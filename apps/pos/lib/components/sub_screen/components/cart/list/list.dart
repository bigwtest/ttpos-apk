// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_order_list_controller.dart';
// Package imports:
import 'package:pos/components/sub_screen/components/cart/list/list_item.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final CartOrderListController controller = Get.find<CartOrderListController>();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    //
    super.dispose();
  }

  @override
  void didUpdateWidget(CartList oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 是否可以滚动
    if (!_scrollController.hasClients || _scrollController.position.maxScrollExtent == 0) {
      return;
    }
    //
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      // _scrollController.animateTo(
      //   _scrollController.position.maxScrollExtent,
      //   duration: const Duration(milliseconds: 200),
      //   curve: Curves.linear,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.cartList.isNotEmpty
          ? ListView.builder(
              controller: _scrollController,
              itemCount: controller.cartList.length,
              itemBuilder: (_, int index) {
                return ListItem(
                  product: controller.cartList[index],
                  isShowBorder: index != controller.cartList.length - 1,
                );
              },
            )
          : EmptyDataView(imgWidth: 100.0, fontSize: 14.0),
    );
  }
}
