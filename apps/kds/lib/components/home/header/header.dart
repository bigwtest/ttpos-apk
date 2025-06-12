import 'package:flutter/material.dart';
import 'package:kds/components/home/header/header_nav.dart';
import 'package:kds/components/home/header/header_setting.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58.0.scaleHeight,
      color: CustomTheme.secondaryColor,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 24,
        children: [
          HeaderNav(),
          HeaderSetting(),
        ],
      ),
    );
  }
}
