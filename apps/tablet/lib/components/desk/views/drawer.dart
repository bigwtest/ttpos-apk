import 'package:flutter/material.dart';
import 'package:tablet/components/desk/views/bind.dart';

class BindDeskDrawer extends StatelessWidget {
  const BindDeskDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 480.0,
      child: BindDeskView(),
    );
  }
}
