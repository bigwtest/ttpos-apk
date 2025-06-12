// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/goods_cart/action/view/drawer/pick_order_view.dart';
import 'package:pos/controllers/order/pick_order_controller.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DrawerPickOrder extends StatelessWidget {
  const DrawerPickOrder({
    super.key,
    this.pickOrderCallBack,
  });

  final void Function(ResponseCart? cart)? pickOrderCallBack;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 552.08.scaleWidth,
      child: GetBuilder(
        init: ControllerPickOrder(),
        dispose: (_) => Get.delete<ControllerPickOrder>(),
        builder: (controller) => PickOrderView(pickOrderCallBack: pickOrderCallBack),
      ),
    );
  }
}
