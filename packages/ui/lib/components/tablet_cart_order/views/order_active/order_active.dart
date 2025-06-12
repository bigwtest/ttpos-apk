import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderActive extends StatelessWidget {
  final List<Map<String, dynamic>> actionList;
  final void Function(OrderActionType options)? onSelected;
  const OrderActive({
    super.key,
    this.actionList = const [],
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<OrderActionType>(
      offset: Offset(0, 8.0),
      position: PopupMenuPosition.under,
      initialValue: null,
      constraints: BoxConstraints(
        maxHeight: 240.0,
        minWidth: 120.0,
      ),
      itemBuilder: (context) => actionList
          .map(
            (e) => PopupMenuItem<OrderActionType>(
              value: e['value'],
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    e['label'],
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
      onSelected: onSelected,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: CustomTheme.secondaryColor.shade300,
            ),
            borderRadius: BorderRadius.circular(
              4.0,
            ),
          ),
        ),
        child: Text(
          '更多操作'.tr,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 13.0,
          ),
        ),
      ),
    );
  }
}
