// Flutter imports:
import 'package:flutter/material.dart';
import 'package:pos/components/goods_cart/action/view/index.dart';
// Project imports:
import 'package:pos/components/goods_cart/action/view/list/list_item.dart';

class ActionList extends StatelessWidget {
  final bool isTask; // 是否为桌台
  final bool isLock; // 是否锁定
  final bool isBuffet; // 是否自助餐
  final List<Map<String, dynamic>>? actionList;
  final void Function(ActionCommonType type, BuildContext context)? onTapEvent;

  const ActionList({
    super.key,
    this.isTask = false,
    this.isLock = false,
    this.isBuffet = false,
    this.actionList,
    this.onTapEvent,
  });

  @override
  Widget build(BuildContext context) {
    // 获取按钮数量
    final int itemCount = actionList?.length ?? 0;

    return LayoutBuilder(
      builder: (context, constraints) {
        // 计算每个按钮应该的高度（包括间距）
        final double availableHeight = constraints.maxHeight - 10;
        // 计算每个按钮的高度（考虑间距）
        final double buttonHeight = itemCount > 0 ? (availableHeight - (itemCount - 1) * 10) / itemCount : 0;

        return Wrap(
          runSpacing: 10.0, // 交叉轴方向的间距
          children: List.generate(
            itemCount,
            (index) {
              return SizedBox(
                width: double.infinity,
                height: buttonHeight > 0 ? buttonHeight : 0,
                child: ListItem(
                  text: actionList?[index]['text'],
                  buttonType: actionList?[index]['buttonType'],
                  isDisabled: actionList?[index]['isDisabled'],
                  onTap: () {
                    if (!actionList?[index]['isDisabled']) {
                      onTapEvent?.call(actionList?[index]['type'], context);
                    }
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
