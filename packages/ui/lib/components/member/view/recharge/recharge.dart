import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/member/controllers/recharge.dart';
import 'package:ttpos_ui/components/member/view/action/action.dart';
import 'package:ttpos_ui/components/member/view/action/hint.dart';
import 'package:ttpos_ui/components/member/view/action/input.dart';
import 'package:ttpos_ui/components/member/view/card.dart';
import 'package:ttpos_ui/components/member/view/content/content.dart';
import 'package:ttpos_ui/components/member/view/payment/payment.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class MemberRechargeView extends StatelessWidget {
  MemberRechargeView({super.key, required this.tag});

  final String tag;
  final _inputGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemberRechargeController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '会员充值'.tr,
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Row(
                              spacing: 8.0,
                              children: [
                                Expanded(
                                  child: Obx(
                                    () => TtInput(
                                      height: 36.0.scaleHeight,
                                      inputFieldKey: _inputGlobalKey,
                                      value: controller.keyword,
                                      autoFocus: true,
                                      hintText: '昵称/手机号/会员ID'.tr,
                                      focusNode: controller.searchMemberFocusNode,
                                      onChanged: controller.onKeywordChanged,
                                      isShowDelete: true,
                                    ),
                                  ),
                                ),
                                Obx(() {
                                  return TtButton(
                                    text: '查找'.tr,
                                    onTap: controller.keyword.isEmpty || controller.isSearchingMember
                                        ? null
                                        : () =>
                                            controller.searchMember(controller.keyword, inputFieldKey: _inputGlobalKey),
                                    sizeType: SizeButtonType.small,
                                    buttonType: ActionButtonType.secondary,
                                    isDisabled: controller.keyword.isEmpty || controller.isSearchingMember,
                                  );
                                }),
                              ],
                            ),
                            Obx(() {
                              if (controller.selectedMember != null) {
                                return Container(
                                  padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                                  child: MemberCardView(
                                    nickname: controller.currentMemberDiscountMemberNickname,
                                    levelName: controller.currentMemberDiscountMemberLevelName,
                                    balance: controller.currentMemberDiscountMemberBalance,
                                    points: controller.currentMemberDiscountMemberPoints,
                                    onAction: controller.onRemoveMemberTap,
                                  ),
                                );
                              }
                              return SizedBox.shrink();
                            }),
                            SizedBox(height: 8.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8.0,
                              children: [
                                SizedBox(
                                  width: 90.0.scaleWidth,
                                  child: Row(
                                    children: [
                                      Text(
                                        '*',
                                        style: TextStyle(
                                          color: CustomTheme.errorColor,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '充值金额'.tr,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: CustomTheme.secondaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Obx(
                                    () => TtInput(
                                      height: 36.0.scaleHeight,
                                      value: controller.rechargeAmountInput,
                                      hintText: '请输入充值金额'.tr,
                                      readOnly: true,
                                      focusNode: controller.rechargeAmountFocusNode,
                                      useFocusedBorderAsEnabled: controller.activeNode == ActiveNode.rechargeAmount,
                                      onChanged: controller.onChangeRechargeAmount,
                                      isShowDelete: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8.0,
                              children: [
                                SizedBox(
                                  width: 90.0.scaleWidth,
                                  child: Text(
                                    '赠送金额'.tr,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: CustomTheme.secondaryColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Obx(
                                    () => TtInput(
                                      height: 36.0.scaleHeight,
                                      value: controller.giftAmountInput,
                                      hintText: '请输入赠送金额'.tr,
                                      readOnly: true,
                                      focusNode: controller.giftAmountFocusNode,
                                      useFocusedBorderAsEnabled: controller.activeNode == ActiveNode.giftAmount,
                                      onChanged: controller.onChangeGiftAmount,
                                      isShowDelete: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 90.0.scaleWidth,
                                  child: Text(
                                    '赠送积分'.tr,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: CustomTheme.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.0), // 添加间距
                                Expanded(
                                  child: Obx(
                                    () => TtInput(
                                      height: 36.0.scaleHeight,
                                      value: controller.giftPointInput,
                                      hintText: '请输入赠送积分'.tr,
                                      readOnly: true,
                                      focusNode: controller.giftPointFocusNode,
                                      useFocusedBorderAsEnabled: controller.activeNode == ActiveNode.giftPoint,
                                      onChanged: controller.onChangeGiftPoint,
                                      isShowDelete: true,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.0), // 添加间距
                                Obx(() {
                                  return TtButton(
                                    text: '确定'.tr,
                                    onTap: controller.isCanGenerateRechargeOrder ? controller.onGenerateOrderTap : null,
                                    isDisabled: !controller.isCanGenerateRechargeOrder,
                                    sizeType: SizeButtonType.small,
                                    buttonType: ActionButtonType.secondary,
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Expanded(
                          child: RechargePayment(tag: tag),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: double.infinity,
                  color: CustomTheme.greyColor.shade300,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '会员充值记录'.tr,
                            style: TextStyle(
                              color: Colors.transparent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Expanded(child: RechargeContent(tag: tag)),
                        SizedBox(height: 12.0),
                        RechargeInput(tag: tag),
                        RechargeHint(tag: tag),
                        SizedBox(height: 12.0),
                        SizedBox(
                          height: 220.0,
                          child: Obx(() {
                            return Keyboard(
                              showConfirmButton: false,
                              showFunctionButtons: false,
                              padding: EdgeInsets.all(16.0),
                              onNumberTap: controller.onSelectedPaymentAmountInputChangedByKeyboard,
                              showShortDash: controller.activeNode == ActiveNode.unset,
                            );
                          }),
                        ),
                        SizedBox(height: 16.0),
                        SizedBox(
                          width: double.infinity,
                          height: 0.5,
                          child: CustomPaint(
                            painter: DashedBorder(dashSpace: 4, dashWidth: 3),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        RechargeAction(tag: tag),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
