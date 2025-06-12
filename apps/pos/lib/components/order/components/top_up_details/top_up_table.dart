// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/components/top_up_details/top_up_table_text.dart';
import 'package:pos/model/response/top_up_details/top_up_details.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpTable extends StatelessWidget {
  final TopUpDetails details;
  const TopUpTable({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: CustomTheme.greyColor.shade300,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: CustomTheme.greyColor.shade100,
              ),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: TopUpTableText(
                      text: '充值金额'.tr,
                      textAlign: 'left',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TopUpTableText(
                      text: '赠送金额'.tr,
                      textAlign: 'left',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TopUpTableText(
                      text: '赠送积分'.tr,
                      textAlign: 'left',
                      type: 'th',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: CustomTheme.greyColor.shade200,
                  ),
                ),
              ),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: TopUpTableText(
                      text: details.rechargeAmount.toSafetyString(),
                      textAlign: 'left',
                      type: 'td',
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TopUpTableText(
                      text: details.giftAmount.toSafetyString(),
                      textAlign: 'left',
                      type: 'td',
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TopUpTableText(
                      text: details.giftPoint.toSafetyString(),
                      textAlign: 'left',
                      type: 'td',
                      isBold: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
