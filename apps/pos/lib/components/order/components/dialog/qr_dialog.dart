// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/controllers/order_list/qr_dialog_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class QrDialogView extends StatelessWidget {
  QrDialogView({super.key, required this.qrType});
  final String qrType;
  // 获取控制器实例 - 复杂点，但生命力更强
  QrDialogController get controller {
    if (Get.isRegistered<QrDialogController>()) {
      return Get.find<QrDialogController>();
    }
    return Get.put(QrDialogController());
  }

  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 552.08,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '提示'.tr,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: double.infinity,
                child: RichText(
                  textScaler: TextScaler.linear(fontSizeController.textScaler),
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                    children: [
                      TextSpan(
                        text: '本次退款涉及'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.44,
                        ),
                      ),
                      TextSpan(
                        text: 'QR PromptPay',
                        style: TextStyle(
                          color: CustomTheme.primaryColor.shade600,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.44,
                        ),
                      ),
                      TextSpan(
                        text: '请填写退款所需的银行卡信息'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.44,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Obx(
                () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _FormLabel(label: '银行'.tr),
                    SizedBox(height: 8.0),
                    TtSelect(
                      height: 36.0.scaleHeight,
                      selectList: controller.bankList,
                      isDisabled: controller.isReadOnly && controller.isEditMode,
                      value: controller.bankCode,
                      onChanged: (value) => controller.bankCode = value?['value'],
                    ),
                    SizedBox(height: 12.0),
                    _FormItem(
                      label: '账户名称'.tr,
                      value: controller.accountName,
                      required: true,
                      hintText: '请输入账户名称'.tr,
                      readOnly: controller.isReadOnly && controller.isEditMode,
                      onChange: (value) => controller.accountName = value,
                    ),
                    SizedBox(height: 8.0),
                    _FormItem(
                      label: '账号'.tr,
                      value: controller.accountNo,
                      required: true,
                      hintText: '请输入账号'.tr,
                      readOnly: controller.isReadOnly && controller.isEditMode,
                      onChange: (value) => controller.accountNo = value,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          SizedBox(
            child: Obx(
              () => Row(
                children: [
                  Expanded(
                    child: TtButton(
                      text: '取消'.tr,
                      fontWeight: FontWeight.w600,
                      buttonType: ActionButtonType.outline,
                      onTap: () => Get.back(),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  if (controller.isReadOnly && controller.isEditMode) ...[
                    Expanded(
                      child: TtButton(
                        text: '修改'.tr,
                        fontWeight: FontWeight.w600,
                        buttonType: ActionButtonType.outline,
                        onTap: () => controller.onModify(),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TtButton(
                        text: '重新退款'.tr,
                        fontWeight: FontWeight.w600,
                        buttonType: ActionButtonType.primary,
                        onTap: () => controller.onReissue(qrType: qrType),
                      ),
                    ),
                  ] else
                    Expanded(
                      child: TtButton(
                        text: '确定'.tr,
                        fontWeight: FontWeight.w600,
                        buttonType: ActionButtonType.primary,
                        onTap: () => controller.onConfirm(qrType: qrType),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FormLabel extends StatelessWidget {
  const _FormLabel({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        label,
        style: TextStyle(
          color: CustomTheme.secondaryColor,
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          height: 1.44,
        ),
      ),
    );
  }
}

class _FormItem extends StatelessWidget {
  const _FormItem({
    required this.label,
    this.required = false,
    this.hintText,
    this.readOnly = false,
    required this.onChange,
    this.value,
  });

  final String label;
  final bool required;
  final String? hintText;
  final bool readOnly;
  final void Function(String) onChange;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  height: 1.44,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        SizedBox(
          height: 40.0.scaleHeight,
          child: TtInput(
            height: 40.0.scaleHeight,
            hintText: hintText,
            isDisabled: readOnly,
            value: value ?? '',
            onChanged: (value) => onChange(value),
          ),
        ),
      ],
    );
  }
}
