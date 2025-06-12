// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/accept/components/accept_details_info_text.dart';
import 'package:pos/components/accept/components/accept_details_title.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class AcceptDetailsInfo extends StatelessWidget {
  const AcceptDetailsInfo({
    super.key,
    this.deskNo,
    this.operatorName,
    this.handleTime,
    this.orderAmount,
    this.status,
  });
  final String? deskNo;
  final String? operatorName;
  final String? handleTime;
  final double? orderAmount;
  final int? status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcceptDetailsTitle(
          title: '订单信息'.tr,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AcceptDetailsInfoText(
                text: '${'桌号'.tr}: $deskNo',
              ),
              if (operatorName != '')
                AcceptDetailsInfoText(
                  text: status == 2 ? '${'接单人'.tr}: $operatorName' : '${'拒单人'.tr}: $operatorName',
                ),
              if (status == 2)
                AcceptDetailsInfoText(
                  text: '${'接单时间'.tr}：$handleTime',
                ),
              if (status == 3)
                AcceptDetailsInfoText(
                  text: '${'拒单时间'.tr}：$handleTime',
                ),
              AcceptDetailsInfoText(
                text: '${'订单金额'.tr}：',
                subText: orderAmount.toString().primaryCurrency,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
