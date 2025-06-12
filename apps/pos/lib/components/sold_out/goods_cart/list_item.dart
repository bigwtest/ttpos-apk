// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/sold_out/sold_out_list.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

// Package imports:

class ListItem extends StatelessWidget {
  final int index;
  final bool isLoadingCancel;
  final int cancelId;
  final bool isActive; // 是否选中
  final bool isShowBorder; // 是否显示边框
  final ResponseSoldOutList detail;
  final void Function()? onTap; // 点击事件
  final void Function(int id, int index)? onCancel; // 点击取消

  const ListItem({
    super.key,
    this.index = 0,
    this.isLoadingCancel = false,
    this.cancelId = 0,
    this.isActive = false,
    this.isShowBorder = true,
    required this.detail,
    this.onTap,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null
          ? () {
              if (onTap != null) {
                onTap!();
              }
            }
          : null,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.scalePadding,
        ),
        decoration: BoxDecoration(
          color: isActive ? CustomTheme.greyColor.shade300 : Colors.transparent,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.0.scalePadding,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                style: isShowBorder ? BorderStyle.solid : BorderStyle.none,
                color: CustomTheme.greyColor.shade300,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      detail.localeProductName.translate,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Obx(
                    () => Container(
                      width: 98.0.scaleWidth,
                      alignment: Alignment.center,
                      child: Text(
                        detail.localeProductBomName.translate,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Obx(
                    () => Container(
                      width: 64.0.scaleWidth,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          if (onCancel != null) {
                            onCancel!(detail.productBomUuid, index);
                          }
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          backgroundColor: CustomTheme.errorColor.shade900,
                          shape: RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                4.0,
                              ),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            isLoadingCancel && (cancelId == detail.productBomUuid)
                                ? Padding(
                                    padding: EdgeInsets.only(right: 6.0),
                                    child: SizedBox(
                                      width: 14.0,
                                      height: 14.0,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor: AlwaysStoppedAnimation<Color>(
                                          CustomTheme.greyColor.shade300,
                                        ),
                                      ),
                                    ),
                                  )
                                : SizedBox.shrink(),
                            Text(
                              '取消'.tr,
                              style: TextStyle(
                                color: CustomTheme.errorColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
