// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum CounterType {
  up, // 加
  down, // 减
}

class TtOrderCounter extends StatelessWidget {
  final int num; // 数量
  final double iconWidth;
  final bool isDisabledMinus; // 是否禁用-减号
  final bool isDisabledPlus; // 是否禁用-加号
  final void Function(CounterType, {GlobalKey? startKey})? onChange; // 点击

  const TtOrderCounter({
    super.key,
    this.num = 1,
    this.iconWidth = 30.0,
    this.isDisabledMinus = false,
    this.isDisabledPlus = false,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    // 为每个商品创建独立的GlobalKey
    final plusKey = GlobalKey();
    //
    return IntrinsicWidth(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (num > 0) ...[
            SizedBox(
              width: iconWidth, // 设置按钮宽度
              height: iconWidth, // 设置按钮高度
              child: TextButton(
                onPressed: isDisabledMinus ? null : () => onChange?.call(CounterType.down),
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  backgroundColor: WidgetStateProperty.all(Colors.transparent),
                  shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
                    (Set<WidgetState> states) {
                      return CircleBorder(
                        side: BorderSide(
                          color: isDisabledMinus
                              ? const Color(0x40FFBE00)
                              : states.contains(WidgetState.pressed)
                                  ? CustomTheme.primaryColor
                                  : CustomTheme.primaryColor,
                          width: 1,
                        ),
                      );
                    },
                  ),
                  overlayColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return Colors.white;
                      }
                      return null;
                    },
                  ),
                ),
                child: Icon(
                  Iconfont.minus,
                  size: 16,
                  color: isDisabledMinus ? CustomTheme.secondaryColor.shade400 : CustomTheme.secondaryColor,
                ),
              ),
            ),
            Container(
              width: 28.0, // 固定宽度，足够显示两位数
              alignment: Alignment.center, // 居中对齐
              child: Text(
                '$num',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center, // 文本居中
              ),
            ),
          ],
          SizedBox(
            width: iconWidth, // 设置按钮宽度
            height: iconWidth, // 设置按钮高度
            child: TextButton(
              key: plusKey,
              onPressed: isDisabledPlus ? null : () => onChange?.call(CounterType.up, startKey: plusKey),
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                backgroundColor: WidgetStateProperty.all(
                  isDisabledPlus ? const Color(0x40FFBE00) : CustomTheme.primaryColor,
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                overlayColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return CustomTheme.primaryColor.shade400;
                    }
                    return null;
                  },
                ),
              ),
              child: Center(
                child: Icon(
                  Iconfont.plus,
                  size: 16,
                  color: isDisabledPlus ? CustomTheme.secondaryColor.shade400 : CustomTheme.secondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
