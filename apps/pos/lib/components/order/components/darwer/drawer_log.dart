// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:pos/components/order/components/darwer/drawer_log_line.dart';
import 'package:pos/model/view/operation_log/operation_log.dart';

class OrderDetailsLog extends StatelessWidget {
  const OrderDetailsLog({
    super.key,
    required this.operationLogList,
    this.onTap,
  });

  final List<OperationLogView> operationLogList;
  final void Function(int, int, String, String, String)? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < operationLogList.length; i++)
          OrderDetailsLogLine(
            index: i,
            operationLog: operationLogList[i],
            onTap: (returnAmountUuid, returnOrderUuid, bankCode, accountName, accountNo) {
              onTap!(returnAmountUuid, returnOrderUuid, bankCode, accountName, accountNo);
            },
          ),
      ],
    );
  }
}
