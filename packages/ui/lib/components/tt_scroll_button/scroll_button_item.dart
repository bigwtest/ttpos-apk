import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum ScrollButtonItemType {
  left,
  right,
}

class ScrollButtonItem extends StatelessWidget {
  final bool isShow; // 是否显示
  final ScrollButtonItemType direction;
  final void Function()? onTap; // 点击

  const ScrollButtonItem({
    super.key,
    this.isShow = false,
    this.direction = ScrollButtonItemType.left,
    this.onTap,
  });

  // 定义一个 Map
  static Map<ScrollButtonItemType, Map<String, dynamic>> directionTypeMap = {
    ScrollButtonItemType.left: {
      'icon': Icons.arrow_back_ios_new,
      'offsetShadow': 16.0, // 阴影偏移量
      'offset': -1.0, // 隐藏偏移量
    },
    ScrollButtonItemType.right: {
      'icon': Icons.arrow_forward_ios,
      'offsetShadow': -16.0, // 阴影偏移量
      'offset': 1.0, // 隐藏偏移量
    },
  };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的对象
    final action = directionTypeMap[direction];

    return AnimatedSlide(
      duration: const Duration(milliseconds: 200),
      offset: Offset(isShow ? 0 : action!['offset'], 0.0),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: isShow ? 1.0 : 0.0,
        child: IgnorePointer(
          ignoring: false,
          child: Container(
            width: 40.0.scaleWidth,
            height: 40.0.scaleHeight,
            padding: const EdgeInsets.all(4.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!();
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: CustomTheme.primaryColor.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: CustomTheme.greyColor.shade50,
                      blurRadius: 16,
                      offset: Offset(action!['offsetShadow'], 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    action['icon'],
                    color: CustomTheme.secondaryColor,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
