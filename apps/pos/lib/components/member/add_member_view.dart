// Flutter imports:
import 'package:get/get.dart';
import 'package:pos/api/member/member_api.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/add_member/add_member_view.dart';

void showAddMemberDialog() {
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
  );
}
