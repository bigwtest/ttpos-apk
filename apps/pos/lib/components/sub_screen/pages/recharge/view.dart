// Package imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:pos/components/sub_screen/components/recharge/recharge.dart';

class RechargeView extends StatelessWidget {
  const RechargeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Recharge(),
    );
  }
}
