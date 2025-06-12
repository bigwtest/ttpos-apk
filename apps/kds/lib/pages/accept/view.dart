import 'package:flutter/material.dart';
import 'package:kds/components/accept/accept_button.dart';
import 'package:kds/components/accept/accept_menu.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class AcceptView extends StatelessWidget {
  const AcceptView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        spacing: 16,
        children: [
          Expanded(
            child: AcceptMenu(),
          ),
          SizedBox(
            width: double.infinity,
            height: 44.0.scaleHeight,
            child: AcceptButton(),
          ),
        ],
      ),
    );
  }
}
