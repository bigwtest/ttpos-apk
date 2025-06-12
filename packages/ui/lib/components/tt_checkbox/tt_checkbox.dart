import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TtCheckbox extends StatefulWidget {
  final bool isChecked;
  final Function(bool val)? onChanged; // 值变化时的回调

  const TtCheckbox({
    super.key,
    this.isChecked = false,
    this.onChanged,
  });

  @override
  State<TtCheckbox> createState() => _TtCheckboxState();
}

class _TtCheckboxState extends State<TtCheckbox> {
  bool? _isChecked;

  @override
  void initState() {
    _isChecked = widget.isChecked;
    //
    super.initState();
  }

  @override
  void didUpdateWidget(TtCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.isChecked 发生变化
    if (_isChecked != widget.isChecked) {
      _isChecked = widget.isChecked;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      side: BorderSide(
        color: CustomTheme.greyColor.shade50, // 边框颜色
        width: 1.0, // 边框宽度
      ),
      visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0), // 自定义密度
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // 缩小触摸目标
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      onChanged: (val) {
        if (widget.onChanged != null) {
          setState(() {
            _isChecked = val ?? false;
          });
          //
          widget.onChanged?.call(val ?? false);
        }
      },
    );
  }
}
