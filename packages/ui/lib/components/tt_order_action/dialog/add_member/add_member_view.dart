// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/member/request/add_member.dart';
import 'package:ttpos_model/member/response/member_level.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/add_member/add_member_controller.dart';
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AddMemberView extends StatelessWidget {
  final Future<List<ResponseMemberLevel>> Function()? onMemberLevelList; // 请求列表api
  final Future<bool> Function(RequestAddMember data)? onConfirm; // 确认按钮

  const AddMemberView({
    super.key,
    this.onMemberLevelList,
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 关闭键盘
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        init: AddMemberController(
          fetchMemberLevelList: onMemberLevelList,
          fetchConfirm: onConfirm,
        ),
        dispose: (_) => Get.delete<AddMemberController>(),
        builder: (controller) => Container(
          width: 550.0.scaleWidth,
          padding: EdgeInsets.all(24.0.scalePadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft, // 左对齐
                  child: Text(
                    '添加会员'.tr,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0.scaleHeight,
                ),
                FormBuilder(
                  child: Column(
                    spacing: 10.0.scalePadding,
                    children: [
                      Column(
                        spacing: 4.0.scalePadding,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              '昵称'.tr,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TtInput(
                            fontSize: 13.0,
                            isShowDelete: true,
                            maxLength: 50,
                            height: 40.0.scaleHeight,
                            hintText: '请输入昵称'.tr,
                            value: controller.formData.value.nickname,
                            onChanged: (val) {
                              controller.formData.update((data) {
                                data?.nickname = val;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        spacing: 4.0.scalePadding,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              '手机号'.tr,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TtInput(
                            fontSize: 13.0,
                            isShowDelete: true,
                            maxLength: 20,
                            height: 40.0.scaleHeight,
                            hintText: '请输入手机号'.tr,
                            value: controller.formData.value.phone,
                            onChanged: (val) {
                              controller.formData.update((data) {
                                data?.phone = val;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        spacing: 4.0.scalePadding,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              '密码'.tr,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TtInput(
                            fontSize: 13.0,
                            isShowDelete: true,
                            maxLength: 16,
                            height: 40.0.scaleHeight,
                            hintText: '请输入密码'.tr,
                            obscureText: true,
                            keyboardType: TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            value: controller.formData.value.password,
                            onChanged: (val) {
                              controller.formData.update((data) {
                                data?.password = val;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        spacing: 4.0.scalePadding,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              '会员等级'.tr,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Obx(
                            () => TtSelect(
                              height: 40.0.scaleHeight,
                              fontSize: 13.0,
                              hintText: '请选择会员等级'.tr,
                              value: controller.formData.value.levelUuid,
                              selectList: controller.memberLevelList
                                  .map(
                                    (item) => {
                                      'label': item.name,
                                      'value': item.uuid,
                                    },
                                  )
                                  .toList(),
                              clearIcon: true,
                              onChanged: (val) {
                                controller.formData.update((data) {
                                  data?.levelUuid = val?['value'] ?? 0;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0.scaleHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  spacing: 10.0.scalePadding,
                  children: [
                    Expanded(
                      child: TtButton(
                        text: '退出'.tr,
                        buttonType: ActionButtonType.normal,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        onTap: () {
                          if (controller.isLoading) return;
                          //
                          Get.back();
                        },
                      ),
                    ),
                    Expanded(
                      child: Obx(
                        () => TtButton(
                          text: '确定'.tr,
                          isLoading: controller.isLoading,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          onTap: controller.handleConfirm,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
