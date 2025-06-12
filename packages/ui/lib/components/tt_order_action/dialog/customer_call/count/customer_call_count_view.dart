import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/customer_call/response/abnormal_print_item.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call_list.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/count/customer_call_count_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/list/customer_call_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CustomerCallCountView extends StatelessWidget {
  final bool isShowPrint; // 是否显示打印列表
  final Future<BaseList<ResponseUnprocessedCallList>?> Function(BasePageQuery data)? onUnprocessedCallList; // 呼叫列表接口
  final Future<bool> Function(int uuid)? onUnprocessedCallFinish; // 已处理接口
  final Future<ResponseUnprocessedCall?> Function()? onUnprocessedCallCount; // 统计接口
  final Future<BaseList<AbnormalPrintItem>?> Function(BasePageQuery data)? onPrintList; // 打印列表
  final Future<bool> Function(int uuid)? onReprint; // 重新打印
  final Future<bool> Function(int uuid)? onDeletePrint; // 删除打印

  const CustomerCallCountView({
    super.key,
    this.isShowPrint = false,
    this.onUnprocessedCallList,
    this.onUnprocessedCallFinish,
    this.onUnprocessedCallCount,
    this.onPrintList,
    this.onReprint,
    this.onDeletePrint,
  });

  @override
  Widget build(BuildContext context) {
    final FontSizeController fontSizeController = Get.find<FontSizeController>();
    return GetBuilder(
      init: CustomerCallCountController(
        isShowPrint: isShowPrint,
        fetchUnprocessedCallCount: onUnprocessedCallCount,
      ),
      dispose: (_) => Get.delete<CustomerCallCountController>(),
      builder: (controller) => Obx(
        () => Badge(
          label: Text(
            controller.totalUnprocessedCount > 99 ? '99+' : '${controller.totalUnprocessedCount}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            ),
          ),
          isLabelVisible: controller.totalUnprocessedCount > 0,
          // backgroundColor: CustomTheme.errorColor,
          // textStyle: const TextStyle(fontSize: 12.0),
          offset: fontSizeController.currentFontSize == 16 ? Offset(-2, 0) : Offset(-10, 5),
          child: SizedBox(
            width: 40.0.scaleWidth,
            height: 40.0.scaleHeight,
            child: IconButton(
              icon: Icon(Iconfont.volumeHigh, size: 24.0.scaleWidth),
              color: isShowPrint ? CustomTheme.secondaryColor : Colors.white,
              padding: EdgeInsets.zero,
              onPressed: () {
                Get.dialog(
                  DismissKeyboardDialog(
                    child: CustomerCallView(
                      initCount: controller.countNum,
                      onUnprocessedCallList: onUnprocessedCallList,
                      onUnprocessedCallFinish: (uuid) async {
                        final res = await onUnprocessedCallFinish?.call(uuid);
                        if (res != null && res) {
                          controller.loadUnprocessedCallCount(
                            forceRefresh: true,
                          );
                          return true;
                        }
                        return false;
                      },
                      isShowPrint: isShowPrint,
                      onPrintList: onPrintList,
                      onReprint: onReprint,
                      onDeletePrint: (uuid) async {
                        final res = await onDeletePrint?.call(uuid);
                        if (res != null && res) {
                          controller.loadUnprocessedCallCount(
                            forceRefresh: true,
                          );
                          return true;
                        }
                        return false;
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
