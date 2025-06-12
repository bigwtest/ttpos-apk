import 'package:assistant/api/member/member_api.dart';
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/add_member/add_member_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class HeaderAddMember extends StatelessWidget {
  const HeaderAddMember({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseInfoController>(
      builder: (controller) {
        return Obx(() {
          return controller.hasAddMember
              ? SizedBox(
                  height: 36.0.scaleHeight,
                  child: OutlinedButton(
                    onPressed: controller.hasAddMember ? _showAddMemberDialog : null,
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0.scalePadding,
                        vertical: 4.0,
                      ),
                      side: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                    ),
                    child: Row(
                      spacing: 4.0,
                      children: [
                        Icon(
                          Iconfont.addCircle,
                          size: 16.0.scaleWidth,
                          color: Colors.white,
                        ),
                        Text(
                          '添加会员'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink();
        });
      },
    );
  }
}

void _showAddMemberDialog() {
  //
  Get.dialog(
    DismissKeyboardDialog(
      child: AddMemberView(
        onMemberLevelList: () => MemberAPI().getMemberLevelList(),
        onConfirm: (data) => MemberAPI().createMember(
          data,
          options: ExtraRequestOptions(
            showFailToast: true,
            showSuccessToast: true,
          ),
        ),
      ),
    ),
    barrierDismissible: false,
  );
}
