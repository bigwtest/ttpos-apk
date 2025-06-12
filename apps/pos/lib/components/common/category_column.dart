// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:pos/components/common/category_item_solid.dart';
import 'package:pos/model/view/category/first_category_model.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class CategoryColumn extends StatelessWidget {
  final List<FirstCategoryViewModel> dataList;
  final int selectedIndex;
  final Function(int)? onTap;
  const CategoryColumn({
    super.key,
    required this.dataList,
    required this.selectedIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 32.0.scaleHeight,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 10.0.scaleWidth), // 间距
            scrollDirection: Axis.horizontal, // 设置为水平滚动
            itemCount: dataList.length,
            itemBuilder: (_, int index) {
              final data = dataList[index];
              return CategoryItemSolid(
                text: data.name,
                isActive: index == selectedIndex,
                onTap: onTap != null ? () => onTap!(index) : null,
              );
            },
          ),
        ),
      ],
    );
  }
}
