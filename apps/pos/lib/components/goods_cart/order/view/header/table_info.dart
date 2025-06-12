// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/controllers/base/extension/time_count_down_extension.dart';
import 'package:pos/model/response/cart/cart_buffet.dart';
import 'package:pos/model/response/cart/cart_desk.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TableInfo extends StatelessWidget {
  final ResponseCartBuffet? buffet;
  final ResponseCartDesk? desk;
  final void Function(String type)? onTapEvent; // 点击事件

  const TableInfo({
    super.key,
    this.buffet,
    this.desk,
    this.onTapEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [CustomTheme.primaryColor, CustomTheme.primaryColor.shade200],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          '${desk?.deskNo ?? ''} (${desk?.mealNum ?? 0})',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                    ],
                  ),
                ),
                (buffet == null)
                    ? Obx(
                        () => Text(
                          '${'已就餐：'.tr} ${(desk?.duration ?? 0).timeUp}',
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          (buffet != null)
              ? Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 32.0,
                    children: [
                      Expanded(
                        child: Text(
                          (buffet?.localeName.translate ?? '') == '' ? '------' : (buffet?.localeName.translate ?? ''),
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '剩余时间：'.tr,
                            style: TextStyle(
                              fontSize: 13.0,
                              height: 2.0, // 添加行高，1.5 倍于字体大小
                            ),
                          ),
                          (buffet?.remainingSeconds ?? 0) < 0
                              ? Text(
                                  '不限时'.tr,
                                  style: TextStyle(
                                    color: CustomTheme.errorColor,
                                    fontSize: 13.0,
                                  ),
                                )
                              : Obx(
                                  () => Text(
                                    (buffet?.remainingSeconds ?? 0).timeDown,
                                    style: TextStyle(
                                      color: CustomTheme.errorColor,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          if ((buffet?.remainingSeconds ?? 0) >= 0)
                            SizedBox(
                              width: 32.0.scaleWidth,
                              height: 32.0.scaleHeight,
                              child: IconButton(
                                padding: EdgeInsets.all(0.0),
                                icon: Icon(
                                  Iconfont.addCircle,
                                  size: 20.0.scaleWidth,
                                ),
                                style: ButtonStyle(
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                color: CustomTheme.secondaryColor,
                                onPressed: () {
                                  onTapEvent?.call("clock");
                                },
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.all(5.0),
                ),
        ],
      ),
    );
  }
}
