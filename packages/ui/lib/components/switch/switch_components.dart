// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SwitchComponents extends StatefulWidget {
  final String label;
  final bool isSwitch;
  final Function(bool) onSwitchChanged;
  final double labelFontSize;
  final bool isHorizontal;

  const SwitchComponents({
    super.key,
    required this.label,
    required this.isSwitch,
    required this.onSwitchChanged,
    this.labelFontSize = 13,
    this.isHorizontal = false,
  });

  @override
  State<SwitchComponents> createState() => _SwitchComponents();
}

class _SwitchComponents extends State<SwitchComponents> {
  @override
  Widget build(BuildContext context) {
    return widget.isHorizontal
        ? Row(
            children: [
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: widget.labelFontSize,
                  color: CustomTheme.secondaryColor,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 25,
                ),
                child: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: widget.isSwitch,
                    activeTrackColor: CustomTheme.primaryColor.shade600,
                    onChanged: (bool? value) {
                      if (value != widget.isSwitch) {
                        widget.onSwitchChanged(value!);
                      }
                    },
                  ),
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: widget.labelFontSize,
                  color: CustomTheme.secondaryColor,
                ),
              ),
              SizedBox(
                width: 40,
                child: Transform.scale(
                  scale: 0.7.scaleWidth,
                  child: CupertinoSwitch(
                    value: widget.isSwitch,
                    activeTrackColor: CustomTheme.primaryColor.shade600,
                    onChanged: (bool? value) {
                      if (value != widget.isSwitch) {
                        widget.onSwitchChanged(value!);
                      }
                    },
                  ),
                ),
              ),
            ],
          );
  }
}
