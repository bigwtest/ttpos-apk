// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Package imports:
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class AcceptDetailsButton extends StatelessWidget {
  final Function orderRejection;
  final Function goToDesk;
  final Function takeOrders;
  final bool isButtonDisabled;
  const AcceptDetailsButton({
    super.key,
    required this.orderRejection,
    required this.goToDesk,
    required this.takeOrders,
    required this.isButtonDisabled,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.0.scaleHeight,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: TtButton(
              text: '拒单'.tr,
              fontWeight: FontWeight.w600,
              isDisabled: isButtonDisabled,
              buttonType: ActionButtonType.outline,
              onTap: () {
                orderRejection();
              },
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: TtButton(
              text: '进入桌台'.tr,
              fontWeight: FontWeight.w600,
              isDisabled: isButtonDisabled,
              buttonType: ActionButtonType.outline,
              onTap: () {
                goToDesk();
              },
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: TtButton(
              text: '接单'.tr,
              fontWeight: FontWeight.w600,
              isDisabled: isButtonDisabled,
              buttonType: ActionButtonType.primary,
              onTap: () {
                takeOrders();
              },
            ),
          ),
        ],
      ),
    );
  }
}
