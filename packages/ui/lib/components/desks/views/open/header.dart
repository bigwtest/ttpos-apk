// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/views/open/header_button.dart';

class DeskOpenDialogHeader extends StatelessWidget {
  final bool isBuffetOrNot;
  final void Function() toggleBuffetOrNot;
  const DeskOpenDialogHeader({
    super.key,
    required this.isBuffetOrNot,
    required this.toggleBuffetOrNot,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.0,
      children: [
        Expanded(
          child: DeskOpenDialogHeaderButton(
            text: '自助餐'.tr,
            type: isBuffetOrNot ? ActionButtonType.primary : ActionButtonType.normal,
            onTap: toggleBuffetOrNot,
          ),
        ),
        Expanded(
          child: DeskOpenDialogHeaderButton(
            text: '非自助餐'.tr,
            type: isBuffetOrNot ? ActionButtonType.normal : ActionButtonType.primary,
            onTap: toggleBuffetOrNot,
          ),
        ),
      ],
    );
  }
}
