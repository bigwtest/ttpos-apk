// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SplitOrderItem extends StatelessWidget {
  final int orderIndex;
  final bool isActive;
  final bool isDisabled;
  final bool isEdit; // 是否编辑模式
  final void Function(int?)? onTap; // 点击
  final void Function(int?)? onClose; // 点击

  const SplitOrderItem({
    super.key,
    required this.orderIndex,
    this.isActive = false,
    this.isDisabled = false,
    this.isEdit = false,
    this.onTap,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 56.0,
          height: 42.0,
          margin: const EdgeInsets.only(right: 12.0, top: 12.0),
          child: TextButton(
            onPressed: () {
              if (onTap != null && !isDisabled) {
                onTap!(orderIndex);
              }
            },
            style: TextButton.styleFrom(
              backgroundColor: isActive
                  ? CustomTheme.primaryColor
                  : isDisabled
                      ? CustomTheme.greyColor.shade100
                      : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(7.0)),
              ),
              side: BorderSide(
                color: isActive ? CustomTheme.primaryColor : CustomTheme.greyColor.shade300,
                width: 1,
              ),
            ),
            child: Text(
              orderIndex.toString(),
              style: TextStyle(
                fontSize: 16.0,
                color: isDisabled ? Colors.grey : CustomTheme.secondaryColor,
              ),
            ),
          ),
        ),
        !isEdit && !isDisabled && orderIndex != 1
            ? Positioned(
                top: 4.0,
                right: 4.0,
                child: SizedBox(
                  width: 18.0,
                  height: 18.0,
                  child: TextButton(
                    onPressed: () {
                      if (onClose != null && !isDisabled) {
                        onClose!(orderIndex);
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromARGB(255, 156, 156, 156),
                    ),
                    child: const Icon(
                      Iconfont.close,
                      size: 16,
                      color: Color.fromARGB(255, 205, 205, 205),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
        isDisabled
            ? Positioned(
                top: 12.0,
                right: 12.0,
                child: Image.asset(
                  'assets/images/split_order_item_complete.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
