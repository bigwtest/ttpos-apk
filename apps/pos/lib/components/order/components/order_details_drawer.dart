// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/components/order_details/order_details.dart';
import 'package:pos/controllers/order_list/order_details_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class OrderDetailsDrawer extends StatelessWidget {
  const OrderDetailsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 800.0.scaleWidth,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: GetBuilder(
          init: OrderDetailsController(),
          dispose: (_) => Get.delete<OrderDetailsController>(),
          builder: (controller) {
            return OrderDetails();
          },
        ),
      ),
    );
  }
}
