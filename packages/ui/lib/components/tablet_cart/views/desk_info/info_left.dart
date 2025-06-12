import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/components/tablet_cart/views/desk_info/info_left_time.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class InfoLeft extends StatelessWidget {
  final Desk? deskInfo;
  final ResponseBuffet? buffetInfo;
  final bool isReminderDialog; // 是否提示弹窗 (点餐助手不需要提示弹窗)
  final int mealReminderTime; // 用餐还有 @time 分钟，单位：秒

  InfoLeft({
    super.key,
    this.deskInfo,
    this.buffetInfo,
    this.isReminderDialog = true,
    this.mealReminderTime = 5,
  });
  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
        textScaler: TextScaler.linear(fontSizeController.textScaler),
        text: TextSpan(
          children: [
            TextSpan(
              text: '${'桌号'.tr}: ${deskInfo?.deskNo ?? ''}',
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            WidgetSpan(
              child: SizedBox(
                width: 20.0,
              ),
            ),
            if (deskInfo?.isBuffet != null && deskInfo!.isBuffet) ...[
              TextSpan(
                text: '${'剩余用餐'.tr}: ',
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              WidgetSpan(
                child: InfoLeftTime(
                  isTextSpan: true,
                  time: buffetInfo?.remainingSeconds ?? 0,
                  type: InfoLeftTimeType.mealTime,
                  isReminderDialog: isReminderDialog,
                  reminderTime: mealReminderTime,
                ),
              ),
              // 如果剩余时间为-1，表示不限时
              if (buffetInfo?.remainingSeconds != -1 && buffetInfo?.isTabletH5TimeSet == true) ...[
                WidgetSpan(
                  child: SizedBox(
                    width: 8.0,
                  ),
                ),
                TextSpan(
                  text: '(${'剩余点餐'.tr}: ',
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                WidgetSpan(
                  child: InfoLeftTime(
                    isTextSpan: true,
                    time: buffetInfo?.remainingOrderingTime ?? 0,
                    type: InfoLeftTimeType.orderingTime,
                    isReminderDialog: isReminderDialog,
                    reminderTime: buffetInfo?.reminderOrderTime ?? 0,
                  ),
                ),
                TextSpan(
                  text: ')',
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}
