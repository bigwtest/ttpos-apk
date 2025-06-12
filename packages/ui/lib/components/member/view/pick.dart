// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/payment/request/member.dart';
import 'package:ttpos_model/payment/response/member.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/member/controllers/pick.dart';
import 'package:ttpos_ui/components/member/view/card.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class MemberPickView extends StatelessWidget {
  MemberPickView({
    super.key,
    required this.onSearch,
    required this.onConfirm,
    required this.onGetMemberDiscount,
    required this.amount,
    required this.saleBillUuid,
    required this.saleOrderUuid,
  });

  // 搜索事件方法
  final Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) onSearch;
  // 确认事件方法
  final Future<bool> Function(int memberUuid, {String? password}) onConfirm;
  // 获取会员折扣
  final Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      onGetMemberDiscount;
  // 金额
  final double amount;
  // 销售单UUID
  final int saleBillUuid;
  // 销售订单UUID
  final int saleOrderUuid;

  final _inputGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemberPickController>(
      init: MemberPickController(
        onSearch: onSearch,
        onGetMemberDiscount: onGetMemberDiscount,
        amount: amount,
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
      ),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            width: 552.08,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft, // 左对齐
                          child: Text(
                            '会员'.tr,
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 16.0,
                          children: [
                            Expanded(
                              child: Obx(
                                () => TtInput(
                                  inputFieldKey: _inputGlobalKey,
                                  fontSize: 13.0,
                                  value: controller.keyword,
                                  autoFocus: true,
                                  hintText: '昵称/手机号/会员ID'.tr,
                                  height: 40.0.scaleHeight,
                                  onChanged: controller.onKeywordChanged,
                                  isShowDelete: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0.scaleHeight,
                              child: Obx(() {
                                return TtButton(
                                  text: '查找'.tr,
                                  fontSize: 13.0,
                                  onTap: controller.keyword.isEmpty || controller.isSearchingMember
                                      ? null
                                      : () =>
                                          controller.searchMember(controller.keyword, inputFieldKey: _inputGlobalKey),
                                  buttonType: ActionButtonType.secondary,
                                  isDisabled: controller.keyword.isEmpty || controller.isSearchingMember,
                                );
                              }),
                            ),
                          ],
                        ),
                        Obx(
                          () => controller.currentMemberDiscount == null
                              ? const SizedBox.shrink()
                              : Container(
                                  margin: EdgeInsets.only(top: 16.0),
                                  child: MemberCardView(
                                    nickname: controller.currentMemberDiscountMemberNickname,
                                    levelName: controller.currentMemberDiscountMemberLevelName,
                                    balance: controller.currentMemberDiscountMemberBalance,
                                    points: controller.currentMemberDiscountMemberPoints,
                                    showHeader: false,
                                  ),
                                ),
                        ),
                        Obx(
                          () => controller.currentMemberDiscount == null
                              ? const SizedBox.shrink()
                              : Container(
                                  margin: EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    spacing: 8.0,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        '会员折扣应收金额'.tr,
                                        style: TextStyle(
                                          color: CustomTheme.secondaryColor,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        controller.discountAmount.primaryCurrency,
                                        style: TextStyle(
                                          color: CustomTheme.errorColor,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        controller.discountAmount.secondaryCurrency,
                                        style: TextStyle(
                                          color: CustomTheme.greyColor,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      bottom: 24.0,
                    ),
                    child: Row(
                      spacing: 12.0,
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
                            onTap: () async {
                              final memberUuid = controller.currentMemberDiscount?.member.uuid;

                              if (memberUuid == null) {
                                DialogManager.showToast('请选择会员'.tr);
                                return;
                              }
                              final hasPassword = controller.currentMemberDiscount?.hasPassword ?? false;
                              bool result = false;
                              if (hasPassword) {
                                await DialogManager.showPasswordDialog(
                                  title: '会员密码'.tr,
                                  hintText: '请输入会员密码'.tr,
                                  onConfirm: ({required String password}) async {
                                    result = await onConfirm.call(memberUuid, password: password);
                                    return result;
                                  },
                                );
                              } else {
                                result = await onConfirm.call(memberUuid);
                              }

                              if (result != true) return;
                              Get.back(result: true);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
