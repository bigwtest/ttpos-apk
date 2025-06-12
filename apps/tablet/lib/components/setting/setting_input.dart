import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingInput extends StatelessWidget {
  final String labelText;
  final bool isDisabled;
  final String value;
  final String? hintText;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final int? maxLength;
  const SettingInput({
    super.key,
    required this.labelText,
    this.isDisabled = false,
    this.value = '',
    this.hintText,
    this.onChanged,
    this.focusNode,
    this.maxLength,
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
        TtInput(
          height: 36.0.scaleHeight,
          isDisabled: isDisabled,
          fontSize: 14.0,
          value: value,
          hintText: hintText,
          onChanged: onChanged,
          focusNode: focusNode,
          maxLength: maxLength,
        ),
      ],
    );
  }
}
