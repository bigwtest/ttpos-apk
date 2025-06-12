// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:ttpos_ui/utils/util.dart';

class HandoverCashDialogView extends StatelessWidget {
  HandoverCashDialogView({
    super.key,
    this.title = '现金',
    this.subTitle = '商品名称',
    this.amount = '0.00',
    this.hintText = '取出',
    this.onConfirm,
  });

  final String title;
  final String subTitle;
  // 金额
  final String amount;
  // 提示文本
  final String hintText;
  // 确认回调
  final Future<bool> Function(double amount)? onConfirm;

  final RxString _amountText = ''.obs;
  final RxBool _isConfirmLoading = false.obs;

  void onNumberTap(String value) {
    final currentText = _amountText.value;
    final newValue = Util.validateNumberInput(currentText, value);
    if (newValue != null) {
      _amountText.value = newValue;
    }
  }

  void onConfirmTap() async {
    if (_amountText.value.isEmpty) {
      DialogManager.showToast(hintText);
      return;
    }
    if (_isConfirmLoading.value) {
      return;
    }
    _isConfirmLoading.value = true;
    try {
      if (onConfirm == null) return;
      final price = double.tryParse(_amountText.value) ?? 0;
      final res = await onConfirm!(price);
      if (!res) return;
      Get.back();
    } finally {
      _isConfirmLoading.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: EdgeInsets.only(
                top: 24.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Column(
                spacing: 16.0,
                children: [
                  Align(
                    alignment: Alignment.centerLeft, // 左对齐
                    child: Text(
                      title.tr,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        height: 1.50,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start, // 添加顶部对齐
                      children: [
                        Flexible(
                          // 使用 Flexible 包裹文本
                          child: Text(
                            '${'已中途'.tr}$subTitle：',
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              height: 1.44,
                            ),
                          ),
                        ),
                        Text(
                          // 确保金额格式正确
                          amount.primaryCurrency,
                          style: TextStyle(
                            color: CustomTheme.errorColor.shade500,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            height: 1.44,
                          ),
                        ),
                        Flexible(
                          // 使用 Flexible 包裹文本
                          child: Text(
                            '，请输入本次@subTitle的金额'.trParams(
                              {"subTitle": subTitle},
                            ),
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              height: 1.44,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Obx(
                          () => TtInput(
                            value: _amountText.value,
                            hintText: hintText,
                            height: 40.0.scaleHeight,
                            readOnly: true,
                            useFocusedBorderAsEnabled: true,
                            onChanged: (value) => _amountText.value = value,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0), // 添加间距
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 320.0,
              margin: EdgeInsets.only(top: 16.0),
              color: CustomTheme.greyColor.shade100,
              child: Obx(
                () => Keyboard(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    left: 24.0,
                    right: 24.0,
                    bottom: 24.0,
                  ),
                  isConfirmLoading: _isConfirmLoading.value,
                  onConfirmTap: _isConfirmLoading.value ? null : onConfirmTap,
                  onNumberTap: _isConfirmLoading.value ? null : onNumberTap,
                  onClearTap: _isConfirmLoading.value ? null : () => _amountText.value = '',
                  onExitTap: _isConfirmLoading.value ? null : () => Get.back(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
