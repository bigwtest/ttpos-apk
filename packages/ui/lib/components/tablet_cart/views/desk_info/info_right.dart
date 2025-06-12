import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tablet_cart/mixin/tablet_active.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class InfoRight extends StatelessWidget {
  final bool hasSettle;
  final List<Map<String, dynamic>> actionList;
  final void Function(TabletActiveType options)? onSelected;
  final void Function()? onBack;
  final void Function()? onConfirmPayment;

  const InfoRight({
    super.key,
    this.hasSettle = false,
    this.actionList = const [],
    this.onSelected,
    this.onBack,
    this.onConfirmPayment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.0,
      children: [
        SizedBox(
          height: 36.0.scaleHeight,
          child: TtButton(
            buttonType: ActionButtonType.normal,
            fontWeight: FontWeight.w600,
            fontSize: 13.0,
            text: '返回'.tr,
            onTap: onBack,
          ),
        ),
        if (actionList.isNotEmpty)
          PopupMenuButton<TabletActiveType>(
            offset: Offset(0, 8.0),
            position: PopupMenuPosition.under,
            initialValue: null,
            constraints: BoxConstraints(
              maxHeight: 240.0,
              minWidth: 120.0,
            ),
            itemBuilder: (context) => actionList
                .map(
                  (e) => PopupMenuItem<TabletActiveType>(
                    value: e['value'],
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e['label'],
                          style: TextStyle(
                            color: CustomTheme.secondaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            onSelected: onSelected,
            color: Colors.white,
            child: Container(
              alignment: Alignment.center,
              height: 36.0.scaleHeight,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: CustomTheme.secondaryColor.shade300,
                  ),
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                ),
              ),
              child: Text(
                '更多'.tr,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
        if (hasSettle)
          SizedBox(
            height: 36.0.scaleHeight,
            child: TtButton(
              isDisabled: false,
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              text: '结账'.tr,
              onTap: onConfirmPayment,
            ),
          ),
      ],
    );
  }
}
