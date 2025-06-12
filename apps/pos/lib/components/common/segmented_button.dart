// Flutter imports:
import 'package:flutter/material.dart';
import 'package:pos/model/view/segmented_button/segmented_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

// ignore: must_be_immutable
class SegmentedButtonExample extends StatelessWidget {
  final List<SegmentedButtonView> data;
  Set<dynamic> selected;

  final void Function(dynamic)? onSelectionChangedCallback;
  final double minWidth;

  SegmentedButtonExample({
    super.key,
    required this.data,
    required this.selected,
    this.minWidth = 80.0,
    this.onSelectionChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: data.map((e) => selected.contains(e.value)).toList(),
      onPressed: (index) {
        final newSelected = data[index].value;
        onSelectionChangedCallback!(newSelected);
      },
      fillColor: CustomTheme.primaryColor.shade200,
      color: CustomTheme.secondaryColor,
      borderColor: CustomTheme.secondaryColor.shade700,
      selectedBorderColor: CustomTheme.primaryColor.shade200,
      selectedColor: CustomTheme.secondaryColor,
      constraints: BoxConstraints(
        minHeight: 34.0.scaleHeight,
        minWidth: minWidth.scaleWidth,
      ),
      borderRadius: BorderRadius.circular(4),
      children: data
          .map(
            (e) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0.scalePadding,
              ),
              child: Text(
                e.label,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          )
          .toList(),
    );
  }
}
