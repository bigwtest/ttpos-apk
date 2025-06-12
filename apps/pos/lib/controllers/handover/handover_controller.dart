// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/handover/handover_api.dart';
// Project imports:
import 'package:pos/components/handover/cash_dialog.dart';
import 'package:pos/components/handover/handover_exit_view.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/model/request/handover/form.dart';
import 'package:pos/model/response/handover/handover.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/utils/util.dart';

class HandoverController extends GetxController {
  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();

  final Log _logger = Log(appName: 'HandoverController');
  Logger get logger => _logger.logger;

  final Rx<RespGetHandoverInfo?> _data = Rx<RespGetHandoverInfo?>(null);
  RespGetHandoverInfo? get data => _data.value;
  set data(RespGetHandoverInfo? value) => _data.value = value;

  // 交班人姓名
  String get handoverUserName => baseInfoController.username;

  // 上一班遗留备用金
  String get previousShiftCash => _data.value?.previousShiftCash.toSafetyString() ?? '';

  // 中途存入现金
  String get depositCash => _data.value?.depositCash.toSafetyString() ?? '';

  // 中途取出现金
  String get withdrawCash => _data.value?.withdrawCash.toSafetyString() ?? '';

  // 当前钱箱现金统计
  String get currentCashTotal => _data.value?.currentCashTotal.toSafetyString() ?? '';

  // 收入统计数据
  List<RespPaymentMethodIncome> get incomes => _data.value?.paymentMethodIncome.list ?? [];

  // 退款金额
  String get refundAmount => _data.value?.refundAmount.toSafetyString() ?? '';

  //班次编号
  final RxString _dutyNo = ''.obs;
  String get dutyNo => _dutyNo.value;
  set dutyNo(String value) => _dutyNo.value = value;

  // 本班取出现金
  final RxString _currentWithdrawAmountText = '0'.obs;
  String get currentWithdrawAmountText => _currentWithdrawAmountText.value;
  final currentWithdrawFocusNode = FocusNode();
  final isCurrentWithdrawActive = false.obs;
  void onCurrentWithdrawTextChanged(String? value) {
    final withdrawAmount = double.tryParse(value ?? '0') ?? 0.0;
    final totalAmount = double.tryParse(currentCashTotal) ?? 0.0;

    if (withdrawAmount > totalAmount) {
      _currentWithdrawAmountText.value = currentCashTotal;
      _currentReserveAmountText.value = '0';
    } else {
      _currentWithdrawAmountText.value = value ?? '0';
      _currentReserveAmountText.value = _formatAmount(totalAmount - withdrawAmount);
    }
  }

  // 遗留备用金
  final RxString _currentReserveAmountText = '0'.obs;
  String get currentReserveAmountText => _currentReserveAmountText.value;
  final currentReserveFocusNode = FocusNode();
  final isCurrentReserveActive = false.obs;
  void onCurrentReserveTextChanged(String? value) {
    final reserveAmount = double.tryParse(value ?? '0') ?? 0.0;
    final totalAmount = double.tryParse(currentCashTotal) ?? 0.0;

    if (reserveAmount > totalAmount) {
      _currentReserveAmountText.value = currentCashTotal;
      _currentWithdrawAmountText.value = '0';
    } else {
      _currentReserveAmountText.value = value ?? '0';
      _currentWithdrawAmountText.value = _formatAmount(totalAmount - reserveAmount);
    }
  }

  RxString? activeTextController;

  // 获取交班信息
  Future<RespGetHandoverInfo?> getHandover() async {
    try {
      final response = await HandoverAPI().getHandover();
      if (response != null) {
        data = response;
        onCurrentReserveTextChanged(currentCashTotal);
        return data;
      }

      return null;
    } catch (error) {
      logger.severe('Get Handover Error: $error');
      return null;
    }
  }

  // 执行交班
  Future<void> execHandover() async {
    try {
      final response = await HandoverAPI().execHandover(
        RequestHandoverForm(
          leaveCash: double.tryParse(_currentReserveAmountText.value) ?? 0.0,
          withdrawCash: double.tryParse(_currentWithdrawAmountText.value) ?? 0.0,
        ),
        options: ExtraRequestOptions(
          showGlobalLoading: true,
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (response == null) return;
      dutyNo = response.dutyNo;
      if (response.printerData.data != '') {
        PrintController.sendPrint(response.printerData);
      }
      CashBoxController.openCashBox();
      onHandoverExit();
    } catch (error) {
      logger.severe('Handover Error: $error');
    }
  }

  // 退出
  void onHandoverExit() {
    Get.dialog(
      DismissKeyboardDialog(
        child: HandoverExitView(
          currentWithdrawAmountText: currentWithdrawAmountText,
          currentReserveAmountText: currentReserveAmountText,
          currentCashTotal: currentCashTotal,
        ),
      ),
    );
  }

  Future<void> reportExceptionRemark() async {
    try {
      await HandoverAPI().reportExceptionRemark(
        // TODO: 实现这个传参
        RequestReportExceptionRemarkForm(remark: 'nnn'),
      );
    } catch (error) {
      logger.severe('Report Exception Remark Error: $error');
    }
  }

  Future<bool> execDepositCash(double amount) async {
    try {
      final response = await HandoverAPI().depositCash(
        RequestDepositCashForm(depositCash: amount),
        options: ExtraRequestOptions(
          showGlobalLoading: true,
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (!response) return false;
      CashBoxController.openCashBox();
      Get.back();
      return await getHandover() != null;
    } catch (error) {
      logger.severe('Deposit Cash Error: $error');
      return false;
    }
  }

  Future<bool> execWithdrawCash(double amount) async {
    try {
      final response = await HandoverAPI().withdrawCash(
        RequestWithdrawCashForm(withdrawCash: amount),
        options: ExtraRequestOptions(
          showGlobalLoading: true,
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (!response) return false;
      CashBoxController.openCashBox();
      Get.back();
      return await getHandover() != null;
    } catch (error) {
      logger.severe('Withdraw Cash Error: $error');
      return false;
    }
  }

  // 存钱方法
  void onDeposit() {
    Get.dialog(
      DismissKeyboardDialog(
        child: HandoverCashDialogView(
          title: '存钱',
          subTitle: '存入',
          hintText: '请输入存入的金额'.tr,
          onConfirm: execDepositCash,
          amount: depositCash,
        ),
      ),
    );
  }

  // 取钱方法
  void onWithdraw() {
    Get.dialog(
      DismissKeyboardDialog(
        child: HandoverCashDialogView(
          title: '取款',
          subTitle: '取出',
          hintText: '请输入取出的金额'.tr,
          onConfirm: execWithdrawCash,
          amount: withdrawCash,
        ),
      ),
    );
  }

  // 打印方法
  void onPrint() async {
    final response = await HandoverAPI().handlePrint(
      RequestHandoverPrintForm(
        leaveCash: double.tryParse(_currentReserveAmountText.value) ?? 0.0,
        withdrawCash: double.tryParse(_currentWithdrawAmountText.value) ?? 0.0,
        dutyNo: dutyNo,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
        showSuccessToast: true,
      ),
    );
    if (response == null) return;
    if (response.data != '') {
      PrintController.sendPrint(response);
    }
  }

  // 修改数字键盘点击处理方法
  void onNumberTap(String value) {
    if (activeTextController != null) {
      final currentText = activeTextController!.value;
      final newValue = Util.validateNumberInput(currentText, value);
      if (newValue == null) return;

      // 当选中本班取出现金的时候
      if (isCurrentWithdrawActive.value) {
        final withdrawAmount = double.tryParse(newValue) ?? 0.0;
        final totalAmount = double.tryParse(currentCashTotal) ?? 0.0;

        if (withdrawAmount > totalAmount) {
          activeTextController!.value = currentCashTotal;
          _currentReserveAmountText.value = '0';
        } else {
          activeTextController!.value = newValue;
          _currentReserveAmountText.value = _formatAmount(totalAmount - withdrawAmount);
        }
      }
      // 当选中本班遗留备用金的时候
      else {
        final reserveAmount = double.tryParse(newValue) ?? 0.0;
        final totalAmount = double.tryParse(currentCashTotal) ?? 0.0;

        if (reserveAmount > totalAmount) {
          activeTextController!.value = currentCashTotal;
          _currentWithdrawAmountText.value = '0';
        } else {
          activeTextController!.value = newValue;
          _currentWithdrawAmountText.value = _formatAmount(totalAmount - reserveAmount);
        }
      }
    }
  }

  // 清空事件
  void onClearTap() {
    activeTextController!.value = '0';
    //当选中本班取出现金的时候
    if (isCurrentWithdrawActive.value) {
      _currentWithdrawAmountText.value = '0';
      _currentReserveAmountText.value = _formatAmount(double.tryParse(currentCashTotal) ?? 0.0);
    }
    //当选中本班遗留备用金的时候
    else {
      _currentReserveAmountText.value = '0';
      _currentWithdrawAmountText.value = _formatAmount(double.tryParse(currentCashTotal) ?? 0.0);
    }
  }

  @override
  void onReady() {
    super.onReady();

    currentWithdrawFocusNode.addListener(() {
      if (currentWithdrawFocusNode.hasFocus) {
        activeTextController = _currentWithdrawAmountText;
        isCurrentWithdrawActive.value = true;
        isCurrentReserveActive.value = false;
      }
    });

    currentReserveFocusNode.addListener(() {
      if (currentReserveFocusNode.hasFocus) {
        activeTextController = _currentReserveAmountText;
        isCurrentWithdrawActive.value = false;
        isCurrentReserveActive.value = true;
      }
    });

    // checkIfShowFirstLoginDialog();

    getHandover();
  }

  @override
  void onClose() {
    currentWithdrawFocusNode.dispose();
    currentReserveFocusNode.dispose();
    super.onClose();
  }

  // 格式化金额，保留必要的小数位
  String _formatAmount(double amount) {
    // 先格式化为两位小数
    String formatted = amount.toStringAsFixed(2);

    // 如果小数部分是.00，则移除小数部分
    if (formatted.endsWith('.00')) {
      return formatted.substring(0, formatted.length - 3);
    }

    // 如果小数部分以0结尾（如114.70），则移除尾部的0
    if (formatted.endsWith('0')) {
      return formatted.substring(0, formatted.length - 1);
    }

    return formatted;
  }
}
