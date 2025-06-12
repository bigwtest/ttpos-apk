// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingSelect extends StatefulWidget {
  final String? hintText;
  final String label;
  final bool clearIcon;
  final List<Map<String, dynamic>> selectList;
  final Function(Map<String, dynamic>? val)? onChanged;
  final dynamic value;
  final double width;
  final double height;

  const SettingSelect({
    super.key,
    this.hintText = '请选择',
    required this.label,
    this.clearIcon = true,
    this.selectList = const [],
    this.onChanged,
    this.value,
    this.width = 360.0,
    this.height = 36.0,
  });

  @override
  State<SettingSelect> createState() => _SettingSelectState();
}

class _SettingSelectState extends State<SettingSelect> {
  late dynamic _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  @override
  void didUpdateWidget(SettingSelect oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      setState(() {
        _selectedValue = widget.value;
      });
    }
  }

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
          return TtSelect(
            clearIcon: widget.clearIcon,
            selectList: widget.selectList,
            value: _selectedValue,
            hintText: widget.hintText,
            width: widget.width.scaleWidth,
            height: widget.height.scaleHeight,
            onChanged: (val) {
              setState(() {
                _selectedValue = val;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(val);
              }
            },
          );
        }),
      ],
    );
  }
}
