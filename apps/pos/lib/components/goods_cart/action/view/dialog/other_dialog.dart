// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
// Project imports:
import 'package:ttpos_ui/theme/theme.dart';

class OtherDialog extends StatelessWidget {
  final List<Map<String, dynamic>> actionList;
  final void Function(dynamic)? onTap; // 点击

  const OtherDialog({
    super.key,
    this.actionList = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0.scaleWidth,
      padding: EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '其他操作'.tr,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // 假设每行显示3个子项
              int itemsPerRow = 2;
              // 每个子项的宽度
              double itemWidth = (constraints.maxWidth - 22) / itemsPerRow; // 20是因为左右的总padding是10+10，边框有两个像素

              return Wrap(
                spacing: 10.0, // 主轴方向的间距
                runSpacing: 10.0, // 交叉轴方向的间距
                children: List.generate(actionList.length, (index) {
                  return SizedBox(
                    width: itemWidth,
                    height: 40.0,
                    child: TtButton(
                      text: actionList[index]['text'],
                      buttonType: ActionButtonType.secondary,
                      isDisabled: actionList[index]['isDisabled'],
                      onTap: () {
                        if (onTap != null && !actionList[index]['isDisabled']) {
                          onTap!(actionList[index]['type']);
                        }
                      },
                    ),
                  );
                }),
              );
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 40.0,
            child: TtButton(
              text: '退出'.tr,
              buttonType: ActionButtonType.normal,
              fontWeight: FontWeight.w600,
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
