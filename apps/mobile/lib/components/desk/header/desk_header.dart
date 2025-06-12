import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/controllers/base/main_controller.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/components/tablet_cart/views/desk_info/info_left_time.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskHeader extends StatelessWidget {
  final bool isLoading;
  final Desk? deskInfo;
  final ResponseBuffet? buffetInfo;
  final void Function()? onCheckout;

  DeskHeader({
    super.key,
    this.isLoading = false,
    this.onCheckout,
    this.deskInfo,
    this.buffetInfo,
  });

  //
  final baseInfoController = Get.find<BaseInfoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        8.0.scalePadding,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: CustomTheme.greyColor.shade100,
          ),
        ),
      ),
      child: Row(
        spacing: 8.0,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2.0,
              children: [
                Text(
                  '${'人数'.tr}: ${deskInfo?.customerCount ?? 0}  ${'桌号'.tr}: ${deskInfo?.deskNo ?? ''}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (deskInfo?.isBuffet != null && deskInfo!.isBuffet) ...[
                  Row(
                    spacing: 4.0,
                    children: [
                      Text(
                        '剩余用餐'.tr,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InfoLeftTime(
                        time: buffetInfo?.remainingSeconds ?? 0,
                        type: InfoLeftTimeType.mealTime,
                        reminderTime: baseInfoController.buffet?.tabletEndTime ?? 0,
                      ),
                    ],
                  ),
                  // 如果剩余时间为-1，表示不限时
                  if (buffetInfo?.remainingSeconds != -1 && buffetInfo?.isTabletH5TimeSet == true)
                    Row(
                      spacing: 4.0,
                      children: [
                        Text(
                          '剩余点餐'.tr,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        InfoLeftTime(
                          time: buffetInfo?.remainingOrderingTime ?? 0,
                          type: InfoLeftTimeType.orderingTime,
                          reminderTime: buffetInfo?.reminderOrderTime ?? 0,
                        ),
                      ],
                    ),
                ],
              ],
            ),
          ),
          TtButton(
            isLoading: isLoading,
            text: '结账'.tr,
            height: 40.0.scaleHeight,
            sizeType: SizeButtonType.large,
            fontWeight: FontWeight.w600,
            onTap: onCheckout,
          ),
        ],
      ),
    );
  }
}
