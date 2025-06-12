// Flutter imports:
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_model/invoice/invoice_info.dart';
import 'package:ttpos_ui/components/invoice/controller/invoice_dialog_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class InvoiceDialogView extends StatelessWidget {
  final Future<bool> Function(InvoiceInfo? invoiceInfo)? onConfirm;
  final bool? isReadOnly;
  final InvoiceInfo? invoiceInfo;
  InvoiceDialogView({
    super.key,
    this.onConfirm,
    this.isReadOnly = false,
    this.invoiceInfo,
  }) {
    controller.isReadOnly = isReadOnly ?? false;
    controller.isEdit = isReadOnly ?? false;
    controller.companyName = invoiceInfo?.companyName ?? '';
    controller.companyAddr = invoiceInfo?.companyAddress ?? '';
    controller.companyTaxNumber = invoiceInfo?.companyTaxNumber ?? '';
    controller.companyPhone = invoiceInfo?.companyPhone ?? '';
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  InvoiceController get controller {
    if (Get.isRegistered<InvoiceController>()) {
      return Get.find<InvoiceController>();
    }
    return Get.put(InvoiceController());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 552.08.scaleWidth,
      height: 455.6.scaleHeight,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '发票信息'.tr,
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
                  if (controller.isReadOnly)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '此前已开具过发票，上一次开具信息如下'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.44,
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        _FormItem(
                          label: '公司名称'.tr,
                          required: true,
                          hintText: '请输入公司名称'.tr,
                          readOnly: controller.isReadOnly,
                          initialValue: controller.companyName,
                          onChanged: (value) {
                            controller.companyName = value;
                          },
                        ),
                        SizedBox(height: 8.0),
                        _FormItem(
                          label: '公司地址'.tr,
                          required: true,
                          hintText: '请输入公司地址'.tr,
                          readOnly: controller.isReadOnly,
                          initialValue: controller.companyAddr,
                          onChanged: (value) {
                            controller.companyAddr = value;
                          },
                        ),
                        SizedBox(height: 8.0),
                        _FormItem(
                          label: '税号'.tr,
                          required: true,
                          hintText: '请输入税号'.tr,
                          readOnly: controller.isReadOnly,
                          initialValue: controller.companyTaxNumber,
                          onChanged: (value) {
                            controller.companyTaxNumber = value;
                          },
                        ),
                        SizedBox(height: 8.0),
                        _FormItem(
                          label: '联系电话'.tr,
                          required: false,
                          hintText: '请输入联系电话'.tr,
                          readOnly: controller.isReadOnly,
                          initialValue: controller.companyPhone,
                          onChanged: (value) {
                            controller.companyPhone = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40.0,
            child: Obx(
              () => Row(
                children: [
                  Expanded(
                    child: TtButton(
                      text: '取消'.tr,
                      buttonType: ActionButtonType.outline,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                  SizedBox(width: 8.0),
                  if (controller.isReadOnly) ...[
                    Expanded(
                      child: TtButton(
                        text: '修改'.tr,
                        buttonType: ActionButtonType.outline,
                        onTap: () => controller.onModify(),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TtButton(
                        text: '重新开票'.tr,
                        buttonType: ActionButtonType.primary,
                        onTap: () async {
                          // 验证必填字段
                          if (controller.companyName == '' ||
                              controller.companyAddr == '' ||
                              controller.companyTaxNumber == '') {
                            BotToast.showText(text: '请填写必填项'.tr);
                            return;
                          }
                          await controller.onConfirm();
                        },
                      ),
                    ),
                  ] else
                    Expanded(
                      child: TtButton(
                        text: '确定'.tr,
                        buttonType: ActionButtonType.primary,
                        onTap: () async {
                          if (controller.isEdit == true) {
                            controller.onModify();
                          } else {
                            //验证必填字段
                            if (controller.companyName == '' ||
                                controller.companyAddr == '' ||
                                controller.companyTaxNumber == '') {
                              BotToast.showText(text: '请填写必填项'.tr);
                              return;
                            }
                            await controller.onConfirm();
                          }
                        },
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

class _FormItem extends StatelessWidget {
  const _FormItem({
    required this.label,
    this.required = false,
    this.hintText,
    this.readOnly = false,
    required this.onChanged,
    this.initialValue,
  });

  final String label;
  final bool required;
  final String? hintText;
  final bool readOnly;
  final void Function(String value) onChanged;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (required)
              Text(
                '*',
                style: TextStyle(
                  color: CustomTheme.errorColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
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
          height: 40.0,
          child: TtInput(
            height: 40.0.scaleHeight,
            value: initialValue ?? '',
            isDisabled: readOnly,
            hintText: hintText,
            onChanged: (value) {
              onChanged(value);
            },
          ),
        ),
      ],
    );
  }
}
