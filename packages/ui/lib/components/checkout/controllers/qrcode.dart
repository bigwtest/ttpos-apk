import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';

class QrcodeDialogController extends GetxController {
  final bool isThirdParty;
  final Future<PaymentQrcode?> Function()? onGetPaymentQrcode;
  final String? initQrcode;
  final double? initPaymentAmount;

  QrcodeDialogController({
    required this.isThirdParty,
    required this.onGetPaymentQrcode,
    this.initQrcode,
    this.initPaymentAmount,
  });

  final Rx<PaymentQrcode?> _paymentQrcode = Rx<PaymentQrcode?>(null);
  PaymentQrcode? get paymentQrcode => _paymentQrcode.value;
  void setPaymentQrcode(PaymentQrcode? value) {
    _paymentQrcode.value = value;
    if (value != null) {
      if (value.qrCode == qrcode) return;
      setQrcode(value.qrCode);
    }
  }

  final Rx<double> _paymentAmount = Rx<double>(0.0);
  double get paymentAmount => _paymentAmount.value;
  void setPaymentAmount(double value) {
    _paymentAmount.value = value;
  }

  final RxBool _isLoading = RxBool(false);
  bool get isLoading => _isLoading.value && qrcode.isEmpty;

  final Rx<String> _qrcode = Rx<String>('');
  String get qrcode => _qrcode.value;
  void setQrcode(String value) {
    _qrcode.value = value;
    if (value.startsWith('data:image')) {
      _qrcodeImage.value = base64Decode(value.split(',')[1]);
    }
  }

  final Rx<Uint8List?> _qrcodeImage = Rx<Uint8List?>(null);
  Uint8List? get qrcodeImage => _qrcodeImage.value;

  Timer? _timer;

  Future<void> _getPaymentQrcode() async {
    if (_isLoading.value) return;
    try {
      _isLoading.value = true;
      final result = await onGetPaymentQrcode?.call();
      setPaymentQrcode(result);
      setPaymentAmount(result?.paymentAmount ?? 0.0);
      if (result != null) {
        if (result.status == 1) {
          _timer?.cancel();
          _timer = null;

          Get.back(result: true);
        }
      }
    } catch (error, stackTrace) {
      debugPrint('getPaymentQrcode error: $error, stackTrace: $stackTrace');
    } finally {
      _isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();

    if (isThirdParty) {
      _timer = Timer.periodic(
        Duration(seconds: 2),
        (timer) {
          _getPaymentQrcode();
        },
      );
    }

    if (initQrcode != null) {
      setQrcode(initQrcode!);
    }

    if (initPaymentAmount != null) {
      setPaymentAmount(initPaymentAmount!);
    }
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    _timer?.cancel();
    _timer = null;
    _paymentQrcode.value = null;
    super.onClose();
  }

  void onQrcodeTap() {
    if (isThirdParty) {
      _getPaymentQrcode();
    }
  }

  void onConfirmTap(Future<void> Function(int? uuid)? onConfirm) async {
    await onConfirm?.call(paymentQrcode?.paymentOrderUuid);
  }
}
