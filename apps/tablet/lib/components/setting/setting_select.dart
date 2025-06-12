import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingSelect extends StatelessWidget {
  final String labelText;
  final bool isDisabled;
  final dynamic value;
  final String? hintText;
  final List<Map<String, dynamic>> selectList;
  final Function(Map<String, dynamic>? val)? onChanged;

  const SettingSelect({
    super.key,
    required this.labelText,
    this.isDisabled = false,
    this.value = '',
    this.hintText,
    this.selectList = const [],
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: CustomTheme.greyColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        TtSelect(
          height: 36.0.scaleHeight,
          fontSize: 14.0,
          selectList: selectList,
          isDisabled: isDisabled,
          value: value,
          hintText: hintText,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
