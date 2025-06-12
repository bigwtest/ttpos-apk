// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/accept/components/accept_details_info_line.dart';
import 'package:pos/components/accept/components/accept_details_title.dart';
import 'package:pos/model/view/accept/accept_log_item.dart';

class AcceptDetailsLog extends StatelessWidget {
  const AcceptDetailsLog({
    super.key,
    this.logs = const [],
  });

  final List<AcceptLogItemViewModel> logs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcceptDetailsTitle(
          title: '操作日志'.tr,
        ),
        SizedBox(height: 10),
        if (logs.isNotEmpty)
          ...logs.asMap().entries.map(
                (entry) => AcceptDetailsInfoLine(
                  logItem: entry.value,
                  isActive: entry.key == 0,
                ),
              ),
      ],
    );
  }
}
