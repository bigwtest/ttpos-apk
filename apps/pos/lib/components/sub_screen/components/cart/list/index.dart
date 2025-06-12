// Flutter imports:
import 'package:flutter/material.dart';
import 'package:pos/components/sub_screen/components/cart/list/list.dart';
// Package imports:
import 'package:pos/components/sub_screen/components/cart/list/list_header.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 482.0,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Column(
        children: [
          ListHeader(),
          Expanded(
            child: CartList(),
          ),
        ],
      ),
    );
  }
}
