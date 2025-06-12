import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class PrintDeviceView extends StatelessWidget {
  const PrintDeviceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550.0.scaleWidth,
      height: 400.0.scaleHeight,
      padding: EdgeInsets.all(24.0.scalePadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            '检测到USB打印机'.tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 24.0.scaleHeight,
          ),
          Text(
            '系统检测到已连接USB打印机，是否选择该打印机作为收银打印机？'.tr,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 12.0.scaleHeight,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(
                height: 12.0,
              ),
              itemBuilder: (context, index) {
                return TtButton(
                  text: 'text',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  buttonType: index == 0 ? ActionButtonType.secondary : ActionButtonType.secondaryLight,
                );
              },
            ),
          ),
          SizedBox(
            height: 16.0.scaleHeight,
          ),
          Row(
            spacing: 12.0.scaleWidth,
            children: [
              Expanded(
                child: TtButton(
                  text: '取消'.tr,
                  buttonType: ActionButtonType.normal,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              Expanded(
                child: TtButton(
                  text: '确定'.tr,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
