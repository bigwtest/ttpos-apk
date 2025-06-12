import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/member/controllers/recharge.dart';
import 'package:ttpos_ui/components/member/view/payment/item.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class RechargePayment extends StatelessWidget {
  const RechargePayment({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft, // 左对齐
          child: Text(
            '选择支付方式'.tr,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Expanded(
          child: GetBuilder<MemberRechargeController>(
            id: tag,
            tag: tag,
            builder: (controller) {
              return Obx(() {
                if (controller.paymentMethods.isEmpty) {
                  return const EmptyDataView();
                }

                return GridView.builder(
                  shrinkWrap: false,
                  physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    crossAxisCount: 3,
                    mainAxisExtent: 96.0.scaleHeight,
                  ),
                  itemCount: controller.paymentMethods.length,
                  itemBuilder: (context, index) {
                    return RechargePaymentItem(
                      tag: tag,
                      paymentMethod: controller.paymentMethods[index],
                    );
                  },
                );
              });
            },
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
