import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/api/call/call_api.dart';
import 'package:pos/components/home/menu/menu_controller.dart' as menu;
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/count/customer_call_count_view.dart';

class NotificationIconButton extends StatelessWidget {
  const NotificationIconButton({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomerCallCountView(
      onUnprocessedCallCount: () async {
        final res = await CallAPI().getUnprocessedCount();
        if (res != null) {
          Get.find<menu.MenuController>().unprocessedH5OrderCount = res.unprocessedH5OrderCount ?? 0;
        }
        return res;
      },
      onUnprocessedCallList: (data) => CallAPI().getUnprocessedCallList(data),
      onUnprocessedCallFinish: (uuid) => CallAPI().callFinish(
        uuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      ),
      isShowPrint: true, // 是否显示打印
      onPrintList: (data) => CallAPI().getAbnormalPrintList(data), // 打印列表
      onReprint: (uuid) async {
        try {
          final res = await CallAPI().reprint(
            uuid,
            options: ExtraRequestOptions(
              showFailToast: true,
              showSuccessToast: true,
            ),
          );
          if (res != null) {
            return Future.value(true);
          }
          return Future.value(false);
        } catch (error, stackTrace) {
          debugPrint('onRePrint Error: $error');
          debugPrintStack(stackTrace: stackTrace);
          return Future.value(false);
        }
      }, // 重新打印
      onDeletePrint: (uuid) => CallAPI().deletePrint(
        uuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      ), // 删除打印
    );
  }
}
