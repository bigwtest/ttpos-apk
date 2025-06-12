import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingSelect extends StatelessWidget {
  final String labelText;
  final bool isDisabled;
  final dynamic value;
  final String? hintText;
  final bool isLabelIcon;
  final List<Map<String, dynamic>> selectList;
  final Function(Map<String, dynamic>? val)? onChanged;
  final FontSizeController fontSizeController = Get.find<FontSizeController>();

  SettingSelect({
    super.key,
    required this.labelText,
    this.isDisabled = false,
    this.value = '',
    this.hintText,
    this.selectList = const [],
    this.onChanged,
    this.isLabelIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isLabelIcon)
          Text(
            labelText,
            style: TextStyle(
              color: CustomTheme.greyColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        if (isLabelIcon)
          Row(
            children: [
              Text(
                labelText,
                style: TextStyle(
                  color: CustomTheme.greyColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 8.0.scaleWidth),
              GestureDetector(
                onTap: () async {
                  final RenderBox button = context.findRenderObject() as RenderBox;
                  final position = button.localToGlobal(Offset.zero);
                  final size = button.size;
                  final popupHeight = fontSizeController.currentFontSize == 24 ? 0 : fontSizeController.currentFontSize;
                  await showMenu(
                    context: context,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    menuPadding: EdgeInsets.zero,
                    position: RelativeRect.fromLTRB(
                      position.dx,
                      position.dy - size.height + popupHeight,
                      position.dx + size.width,
                      position.dy + size.height,
                    ),
                    items: [
                      PopupMenuItem(
                        enabled: false,
                        padding: EdgeInsets.zero,
                        height: 0.0,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0.scalePadding,
                                vertical: 8.0.scalePadding,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Text(
                                '来源商家后台所配置的商品打印'.tr,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                child: Icon(
                  Iconfont.kitchenTip,
                  size: 14.0.scaleWidth,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        TtSelect(
          height: 36.0.scaleHeight,
          fontSize: 14.0,
          selectList: selectList,
          isDisabled: isDisabled,
          value: value,
          hintText: hintText,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
