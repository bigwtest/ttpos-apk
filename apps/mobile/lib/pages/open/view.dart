import 'package:flutter/material.dart';
import 'package:mobile/components/open/menu.dart';

class OpenView extends StatelessWidget {
  const OpenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 88.0,
        left: 16.0,
        right: 16.0,
      ),
      color: Colors.white,
      child: DeskOpenMenu(),
    );
  }
}
