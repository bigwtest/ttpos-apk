// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/model/view/operation_log/operation_log.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderDetailsLogLine extends StatelessWidget {
  OrderDetailsLogLine({
    super.key,
    required this.index,
    required this.operationLog,
    this.onTap,
  });

  final int index;
  final OperationLogView operationLog;
  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  final void Function(int, int, String, String, String)? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          top: 0,
          child: SizedBox(
            width: 8,
            height: double.infinity,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: 2,
                  height: 4,
                  color: index == 0 ? Colors.transparent : CustomTheme.secondaryColor.shade700,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: index == 0 ? CustomTheme.primaryColor.shade600 : CustomTheme.greyColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 2,
                    color: CustomTheme.secondaryColor.shade700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          operationLog.source ?? '',
                          style: TextStyle(
                            color: CustomTheme.secondaryColor.shade200,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      operationLog.time?.tz ?? '',
                      style: TextStyle(
                        color: CustomTheme.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    // 退款拼接
                    Text(
                      '${operationLog.remark}',
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (operationLog.payType?.isNotEmpty ?? false) ...[
                      if (operationLog.refundType == 1)
                        Text(
                          ':',
                          style:
                              TextStyle(color: CustomTheme.secondaryColor, fontSize: 13.0, fontWeight: FontWeight.w600),
                        ),
                      if (operationLog.refundType == 2)
                        Text(
                          ' ( ',
                          style:
                              TextStyle(color: CustomTheme.secondaryColor, fontSize: 13.0, fontWeight: FontWeight.w600),
                        ),
                      for (var i = 0; i < operationLog.payType!.length; i++) ...[
                        Text(
                          '${operationLog.payType![i].name}:${operationLog.payType![i].refundMoney.primaryCurrency}',
                          style: TextStyle(
                            color: CustomTheme.secondaryColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (operationLog.payType![i].bankCode.isNotEmpty) ...[
                          SizedBox(width: 4),
                          PopupMenuButton<String>(
                            color: CustomTheme.secondaryColor.shade600,
                            position: PopupMenuPosition.under,
                            offset: Offset(13.0.scaleWidth, 0),
                            child: Icon(
                              Iconfont.kitchenTip,
                              size: 14.0.scaleWidth,
                              color: Colors.black,
                            ),
                            onSelected: (e) {},
                            itemBuilder: (context) {
                              return <PopupMenuEntry<String>>[
                                PopupMenuItem<String>(
                                  value: 'refund',
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${'银行：'.tr}${operationLog.payType![i].bankCode}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        '${'账户名：'.tr}${operationLog.payType![i].accountName}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        '${'账户：'.tr}${operationLog.payType![i].accountNo}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ];
                            },
                          ),
                        ],
                        if (operationLog.payType![i].refundStatus == 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: TtButton(
                              text: '退款失败，重试'.tr,
                              buttonType: ActionButtonType.error,
                              sizeType: SizeButtonType.small,
                              onTap: () {
                                onTap!(
                                  operationLog.payType![i].returnAmountUuid,
                                  operationLog.payType![i].returnOrderUuid,
                                  operationLog.payType![i].bankCode,
                                  operationLog.payType![i].accountName,
                                  operationLog.payType![i].accountNo,
                                );
                              },
                            ),
                          ),
                        if (i != operationLog.payType!.length - 1)
                          Text(
                            ', ',
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                      if (operationLog.refundType == 2)
                        Text(
                          ' ) ',
                          style:
                              TextStyle(color: CustomTheme.secondaryColor, fontSize: 13.0, fontWeight: FontWeight.w600),
                        ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
