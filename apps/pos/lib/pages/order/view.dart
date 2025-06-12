// Package imports

// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:pos/components/order/tabs.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        16.0,
        12.0,
        16.0,
        12.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: OrderTabBar(),
    );
  }
}
