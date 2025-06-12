import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskListItemInfoView extends StatelessWidget {
  const DeskListItemInfoView({
    super.key,
    required this.isAvailable,
    required this.isWait,
    required this.label,
    required this.customerCount,
    required this.remark,
    required this.priceString,
    required this.timeString,
    required this.timerColor,
  });

  final bool isAvailable;
  final bool isWait;
  final String label;
  final int customerCount;
  final String remark;
  final String priceString;
  final String timeString;
  final Color timerColor;

  @override
  Widget build(BuildContext context) {
    return isAvailable
        ? Text(
            label,
            style: TextStyle(
              color: CustomTheme.greyColor,
              fontSize: 14.0,
            ),
          )
        : isWait
            ? Text(
                label,
                style: TextStyle(
                  color: CustomTheme.errorColor,
                  fontSize: 14.0,
                ),
              )
            : Obx(() {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8.0.scalePadding,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 16.0.scalePadding,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 4.0.scalePadding,
                          children: [
                            Icon(
                              Iconfont.user,
                              size: 16.0.scaleWidth,
                              color: CustomTheme.secondaryColor,
                            ),
                            SizedBox(
                              width: 48.0.scaleWidth,
                              child: Text(
                                '$customerCount',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: remark.isNotEmpty
                              ? Tooltip(
                                  message: remark,
                                  triggerMode: TooltipTriggerMode.tap,
                                  showDuration: const Duration(seconds: 3),
                                  child: Text(
                                    remark,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 4.0.scalePadding,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Icon(
                            Iconfont.wallet1,
                            size: 16.0.scaleWidth,
                            color: CustomTheme.secondaryColor,
                          ),
                        ),
                        Expanded(
                          child: Obx(
                            () => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  priceString.primaryCurrency,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: CustomTheme.secondaryColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                if (priceString.secondaryCurrency.isNotEmpty)
                                  Text(
                                    priceString.secondaryCurrency,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomTheme.greyColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 4.0.scalePadding,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Iconfont.clock,
                          size: 16.0.scaleWidth,
                          color: CustomTheme.secondaryColor,
                        ),
                        Expanded(
                          child: Text(
                            timeString,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: timerColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              });
  }
}
