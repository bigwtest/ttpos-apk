// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class HandoverCashController extends GetxController {
  final amountController = TextEditingController();
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void onNumberTap(String number) {
    amountController.text = amountController.text + number;
  }

  void onClearTap() {
    amountController.clear();
  }

  void onBackTap() {
    final text = amountController.text;
    if (text.isEmpty) return;

    String newText = text.substring(0, text.length - 1);
    // 如果删除后最后一个字符是小数点，也删除它
    if (newText.isNotEmpty && newText.endsWith('.')) {
      newText = newText.substring(0, newText.length - 1);
    }

    amountController.text = newText;
    // 设置光标位置到文本末尾
    amountController.selection = TextSelection.fromPosition(
      TextPosition(offset: newText.length),
    );
  }

  @override
  void onClose() {
    amountController.dispose();
    super.onClose();
  }
}
