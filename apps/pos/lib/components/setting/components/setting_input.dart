// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingInput extends StatefulWidget {
  final double width;
  final double height;
  final String name;
  final String? hintText;
  final String label;
  final String value;
  final bool isDisabled;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final int? maxLength;
  const SettingInput({
    super.key,
    this.width = 360.0,
    this.height = 36.0,
    this.name = '请输入',
    this.hintText = '请输入',
    this.label = '请输入',
    this.value = '',
    this.isDisabled = false,
    this.onChanged,
    this.focusNode,
    this.maxLength,
  });

  @override
  State<SettingInput> createState() => _SettingInputState();
}

class _SettingInputState extends State<SettingInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 13.0,
            color: CustomTheme.secondaryColor,
          ),
        ),
        Obx(() {
          return TtInput(
            width: widget.width.scaleWidth,
            height: widget.height.scaleHeight,
            isDisabled: widget.isDisabled,
            value: widget.value,
            onChanged: widget.onChanged,
            focusNode: widget.focusNode,
            maxLength: widget.maxLength,
          );
        }),
      ],
    );
  }
}
