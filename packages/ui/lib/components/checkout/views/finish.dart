import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/invoice/invoice_info.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/invoice/views/invoice_dialog.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class FinishView extends StatefulWidget {
  const FinishView({
    super.key,
    required this.shouldPayAmount,
    required this.actualPayAmount,
    required this.changeAmount,
    required this.payMethodNames,
    this.onExitTap,
    this.requestPrinterData,
    this.requestInvoicePrinterData,
    this.isShowInvoiceButton = true,
    this.isShowChangeAmount = false,
  });

  final double shouldPayAmount;
  final double actualPayAmount;
  final double changeAmount;
  final List<String> payMethodNames;
  final Future<bool> Function()? onExitTap;
  final Future<RespPrinterData?> Function({String? printLang})? requestPrinterData;
  final Future<RespPrinterData?> Function({InvoiceInfo? invoiceInfo, String? printLang})? requestInvoicePrinterData;
  final bool isShowInvoiceButton;
  final bool isShowChangeAmount;

  @override
  State<FinishView> createState() => _FinishViewState();
}

class _FinishViewState extends State<FinishView> {
  InvoiceInfo? invoiceInfo;

  @override
  void dispose() {
    invoiceInfo = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0.scaleWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              '收款'.tr,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.secondaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 245, 246, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildInfoItem(
                        '最终应收'.tr,
                        widget.shouldPayAmount.primaryCurrency,
                        subContent: widget.shouldPayAmount.secondaryCurrency,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: _buildInfoItem(
                        '支付方式'.tr,
                        widget.payMethodNames.map((name) {
                          if (name.contains('(')) {
                            final parts = name.split('(');
                            return '${parts[0]} (${parts[1]}';
                          }
                          return name;
                        }).join('\n'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildInfoItem(
                        '实收金额'.tr,
                        widget.actualPayAmount.primaryCurrency,
                        subContent: widget.actualPayAmount.secondaryCurrency,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: widget.isShowChangeAmount
                          ? _buildInfoItem(
                              '找零金额'.tr,
                              widget.changeAmount.primaryCurrency,
                              subContent: widget.changeAmount.secondaryCurrency,
                            )
                          : Container(), // 当没有找零时，保留空间但不显示内容
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24.0),
            child: Row(
              spacing: 8.0,
              children: [
                Expanded(
                  child: TtButton(
                    text: '退出'.tr,
                    fontWeight: FontWeight.bold,
                    onTap: () async {
                      if (widget.onExitTap != null) {
                        final result = await widget.onExitTap!.call();
                        if (result) {
                          Get.back(result: true);
                        }
                      } else {
                        Get.back(result: false);
                      }
                    },
                    sizeType: SizeButtonType.small,
                    buttonType: ActionButtonType.outline,
                  ),
                ),
                Expanded(
                  child: TtButton(
                    text: '打印小票'.tr,
                    fontWeight: FontWeight.bold,
                    onTap: () async {
                      try {
                        if (!Get.isRegistered<PrinterSettingController>()) {
                          throw Exception('PrinterSettingController 未注册');
                        }

                        final printerSettingController = Get.find<PrinterSettingController>();
                        LanguageItem? selectedLanguage;
                        if (printerSettingController.isMultilingual) {
                          selectedLanguage = await LanguagePickerController.pick();
                        }
                        if (printerSettingController.isMultilingual &&
                            (selectedLanguage == null || selectedLanguage.name.isEmpty)) {
                          return;
                        }
                        RespPrinterData? result =
                            await widget.requestPrinterData?.call(printLang: selectedLanguage?.name);
                        if (result == null) return;

                        PrintController.sendPrint(result);
                      } catch (error, stackTrace) {
                        DialogManager.showToast('打印请求失败'.tr);
                        debugPrint('打印请求出错: $error\n$stackTrace');
                      }
                    },
                    sizeType: SizeButtonType.small,
                    buttonType: widget.isShowInvoiceButton ? ActionButtonType.outline : ActionButtonType.primary,
                  ),
                ),
                if (widget.isShowInvoiceButton)
                  Expanded(
                    child: TtButton(
                      text: '发票'.tr,
                      fontWeight: FontWeight.bold,
                      onTap: () async {
                        try {
                          if (!Get.isRegistered<ConfigController>()) {
                            throw Exception('ConfigController 未注册');
                          }
                          if (!Get.isRegistered<PrinterSettingController>()) {
                            throw Exception('PrinterSettingController 未注册');
                          }

                          final configController = Get.find<ConfigController>();
                          final printerSettingController = Get.find<PrinterSettingController>();

                          LanguageItem? selectedLanguage;

                          if (configController.isInvoice) {
                            invoiceInfo = await Get.dialog(
                              DismissKeyboardDialog(
                                child: InvoiceDialogView(
                                  invoiceInfo: invoiceInfo,
                                  onConfirm: (info) async {
                                    invoiceInfo = info;
                                    return true;
                                  },
                                ),
                              ),
                            );
                          } else {
                            if (printerSettingController.isMultilingual) {
                              selectedLanguage = await LanguagePickerController.pick();
                            }
                          }

                          if (configController.isInvoice && invoiceInfo == null) return;

                          if (printerSettingController.isMultilingual &&
                              (selectedLanguage == null || selectedLanguage.name.isEmpty) &&
                              invoiceInfo?.printLang == null) {
                            return;
                          }

                          final result = await widget.requestInvoicePrinterData?.call(
                            invoiceInfo: invoiceInfo,
                            printLang: selectedLanguage?.name ?? invoiceInfo?.printLang,
                          );

                          if (result == null) return;

                          PrintController.sendPrint(result);
                        } catch (error, stackTrace) {
                          DialogManager.showToast('打印请求失败'.tr);
                          debugPrint('打印请求出错: $error\n$stackTrace');
                        }
                      },
                      sizeType: SizeButtonType.small,
                      buttonType: ActionButtonType.primary,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    String title,
    String content, {
    String? subContent,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor.shade200, // 165 ≈ 0.65 * 255
            ),
          ),
          SizedBox(height: 4.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12.0,
                  color: CustomTheme.secondaryColor,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              if (subContent != null)
                Text(
                  subContent,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor.shade200, // 115 ≈ 0.45 * 255
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
