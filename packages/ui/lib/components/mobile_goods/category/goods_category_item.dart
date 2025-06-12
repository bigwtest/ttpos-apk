import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsCategoryItem extends StatelessWidget {
  final bool isActive; // 是否高亮
  final String title;
  final int count;
  final void Function()? onTap;

  const GoodsCategoryItem({
    super.key,
    this.isActive = false,
    this.title = '',
    this.count = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none, // 允许超出 Stack 边界的部分显示
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 8.0.scalePadding,
            ),
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.transparent,
              border: Border(
                left: BorderSide(
                  width: 2,
                  color: isActive ? CustomTheme.primaryColor : Colors.transparent,
                ),
              ),
            ),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isActive ? CustomTheme.primaryColor : CustomTheme.secondaryColor,
                fontSize: 14.0,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
          if (count > 0)
            Positioned(
              right: 4.0.scaleWidth,
              top: 4.0.scaleHeight,
              child: Container(
                width: 16.0.scaleWidth,
                height: 16.0.scaleHeight,
                decoration: BoxDecoration(
                  color: CustomTheme.errorColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    count > 99 ? '99+' : '$count',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
