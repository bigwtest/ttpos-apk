import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/home/dialog/call_view_item.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 504,
      padding: EdgeInsets.all(32),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          Row(
            children: [
              SizedBox(
                child: Text(
                  '顾客呼叫'.tr,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 1,
                height: 34,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -5,
                      left: -10,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: CustomTheme.errorColor.shade500,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text(
                          '99+', // Replace with your dynamic number
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 240,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                spacing: 8,
                children: [
                  CallViewItem(),
                  CallViewItem(),
                  CallViewItem(),
                  CallViewItem(),
                  CallViewItem(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TtButton(
              text: '退出'.tr,
              buttonType: ActionButtonType.outline,
              height: 56.0,
              fontSize: 18.0,
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
