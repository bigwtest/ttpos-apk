// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/models/category.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.list,
    required this.onSelectionChanged,
    required this.selected,
  });

  final List<DeskCategoryItemModel> list;
  final Function(Set<String>) onSelectionChanged;
  final Set<String> selected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Obx(() {
          if (constraints.maxHeight < 12.0.scaleHeight) {
            return const SizedBox.shrink();
          }

          return ToggleButtons(
            isSelected: list.map((e) => selected.contains(e.value)).toList(),
            onPressed: (index) {
              final newSelected = {list[index].value};
              onSelectionChanged(newSelected);
            },
            fillColor: CustomTheme.primaryColor.shade300,
            color: CustomTheme.secondaryColor,
            borderColor: CustomTheme.greyColor.shade50,
            selectedBorderColor: CustomTheme.primaryColor.shade300,
            selectedColor: CustomTheme.secondaryColor,
            constraints: BoxConstraints(
              minHeight: 36.0.scaleHeight,
              minWidth: 68.0.scaleWidth,
              maxWidth: 120.0.scaleWidth,
            ),
            borderRadius: BorderRadius.circular(4),
            children: list
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0.scalePadding,
                    ),
                    child: Text(
                      e.label,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                .toList(),
          );
        });
      },
    );
  }
}
