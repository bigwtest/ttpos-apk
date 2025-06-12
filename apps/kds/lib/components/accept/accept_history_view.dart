// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:kds/components/accept/accept_history_table.dart';
import 'package:kds/controllers/accept/accept_history_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptHistoryView extends StatelessWidget {
  final AcceptHistoryController controller;
  const AcceptHistoryView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(32),
      child: Column(
        spacing: 24,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              '上菜历史'.tr,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.secondaryColor,
              ),
            ),
          ),
          Obx(
            () => Expanded(
              child: controller.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : controller.historyList.isEmpty
                      ? TtEmpty(
                          text: '当前无上菜历史'.tr,
                          imgWidth: 140.0,
                          fontSize: 18.0,
                        )
                      : SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Obx(
                            () => Column(
                              children: [
                                for (var item in controller.historyList)
                                  AcceptHistoryTable(
                                    item: item,
                                    getList: () {
                                      controller.getHistoryList();
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TtButton(
              text: '退出'.tr,
              fontWeight: FontWeight.w600,
              buttonType: ActionButtonType.outline,
              height: 56.0,
              fontSize: 18.0,
              onTap: () {
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
