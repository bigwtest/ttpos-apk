// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_model/invoice/invoice_info.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_ui/components/invoice/views/invoice_dialog.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class InvoiceController extends GetxController {
  final RxString _companyAddr = ''.obs;
  String get companyAddr => _companyAddr.value;
  set companyAddr(String value) => _companyAddr.value = value;

  final RxString _companyName = ''.obs;
  String get companyName => _companyName.value;
  set companyName(String value) => _companyName.value = value;

  final RxString _companyPhone = ''.obs;
  String get companyPhone => _companyPhone.value;
  set companyPhone(String value) => _companyPhone.value = value;

  final RxString _companyTaxNumber = ''.obs;
  String get companyTaxNumber => _companyTaxNumber.value;
  set companyTaxNumber(String value) => _companyTaxNumber.value = value;

  final RxString _printLang = ''.obs;
  String get printLang => _printLang.value;
  set printLang(String value) => _printLang.value = value;

  final _isReadOnly = false.obs; // 控制表单是否只读
  bool get isReadOnly => _isReadOnly.value;
  set isReadOnly(bool value) => _isReadOnly.value = value;

  final _isEdit = false.obs; // 控制表单是否可编辑
  bool get isEdit => _isEdit.value;
  set isEdit(bool value) => _isEdit.value = value;

  final _lastInvoiceInfo = InvoiceInfo(
    companyName: '',
    companyAddress: '',
    companyTaxNumber: '',
    companyPhone: '',
  ).obs;
  InvoiceInfo get lastInvoiceInfo => _lastInvoiceInfo.value;
  set lastInvoiceInfo(InvoiceInfo value) => _lastInvoiceInfo.value = value;

  InvoiceInfo get invoiceInfo => InvoiceInfo(
        companyName: companyName,
        companyAddress: companyAddr,
        companyTaxNumber: companyTaxNumber,
        companyPhone: companyPhone,
        printLang: printLang,
      );
  set invoiceInfo(InvoiceInfo value) {
    companyName = value.companyName;
    companyAddr = value.companyAddress;
    companyTaxNumber = value.companyTaxNumber;
    companyPhone = value.companyPhone ?? '';
    printLang = value.printLang ?? '';
  }

  void toggleEditMode() {
    isReadOnly = !isReadOnly;
  }

  void onModify() {
    // 修改操作
    toggleEditMode();
  }

  void onReissue() {
    // 切换到编辑模式
    toggleEditMode();
  }

  Future<void> onConfirm() async {
    final printerSettingController = Get.find<PrinterSettingController>();
    LanguageItem? selectedLanguage;
    if (printerSettingController.isMultilingual) {
      selectedLanguage = await LanguagePickerController.pick();
      if (selectedLanguage != null) {
        invoiceInfo = invoiceInfo.copyWith(printLang: selectedLanguage.name);
      }
    }
    if (printerSettingController.isMultilingual && selectedLanguage == null) return;
    lastInvoiceInfo = invoiceInfo;
    Get.back(result: invoiceInfo);
  }

  static Future<InvoiceInfo?> openInvoice({
    bool? isReadOnly = false,
    bool? isLanguage = false, //是否打开选择语言按钮
    InvoiceInfo? invoiceInfo,
  }) async {
    InvoiceInfo invoiceInfoResult;

    // 使用 result 接收对话框的返回值
    final result = await Get.dialog<InvoiceInfo>(
      Dialog(
        child: InvoiceDialogView(
          isReadOnly: isReadOnly,
          invoiceInfo: invoiceInfo ??
              InvoiceInfo(
                companyAddress: '',
                companyName: '',
                companyTaxNumber: '',
                companyPhone: '',
              ),
          onConfirm: (confirmInfo) async {
            // 先保存确认的信息
            invoiceInfoResult = confirmInfo!;

            // 如果需要选择语言
            if (isLanguage == true) {
              final language = await LanguagePickerController.pick();
              if (language != null) {
                invoiceInfoResult = invoiceInfoResult.copyWith(printLang: language.name);
              }
            }

            // 关闭对话框并返回最终信息
            Get.back(result: invoiceInfoResult);
            return false; // 防止自动关闭（虽然已经手动关闭了）
          },
        ),
      ),
      barrierDismissible: false,
    );

    // 直接返回对话框的结果
    return result;
  }
}
