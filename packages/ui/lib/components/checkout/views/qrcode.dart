import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';
import 'package:ttpos_ui/components/checkout/controllers/qrcode.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class QrcodeView extends StatefulWidget {
  const QrcodeView({
    super.key,
    required this.paymentName,
    required this.paymentQrcode,
    required this.paymentAmount,
    this.onExitTap,
    this.onPrintTap,
    this.onConfirmTap,
    this.isThirdParty = false,
    this.onGetPaymentQrcode,
    this.isShowPrintButton = true,
  });

  final String paymentName;
  final String paymentQrcode;
  final double paymentAmount;
  final VoidCallback? onExitTap;
  final VoidCallback? onPrintTap;
  final Future<void> Function(int? uuid)? onConfirmTap;

  final bool isShowPrintButton;

  final bool isThirdParty;
  final Future<PaymentQrcode?> Function()? onGetPaymentQrcode;

  @override
  State<QrcodeView> createState() => _QrcodeViewState();
}

class _QrcodeViewState extends State<QrcodeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QrcodeDialogController>(
      init: QrcodeDialogController(
        isThirdParty: widget.isThirdParty,
        onGetPaymentQrcode: widget.onGetPaymentQrcode,
        initQrcode: widget.paymentQrcode,
        initPaymentAmount: widget.paymentAmount,
      ),
      builder: (controller) {
        return Container(
          width: 320.0.scaleWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 16.0, bottom: 4.0),
                child: Text(
                  '${widget.paymentName}${'收款：'.tr}',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  spacing: 4.0,
                  children: [
                    Text(
                      controller.paymentAmount.primaryCurrency,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomTheme.errorColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        height: 1.50,
                      ),
                    ),
                    if (controller.paymentAmount.secondaryCurrency.isNotEmpty)
                      Text(
                        controller.paymentAmount.secondaryCurrency,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomTheme.errorColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.onQrcodeTap();
                },
                child: SizedBox(
                  width: 154.0,
                  height: 154.0,
                  child: Obx(
                    () {
                      return Center(
                        child: Container(
                          width: 144.0,
                          height: 144.0,
                          decoration: BoxDecoration(
                            color: controller.isLoading ? CustomTheme.rgbBgColor : Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: controller.isLoading
                                ? CircularProgressIndicator()
                                : controller.qrcode.isEmpty
                                    ? Text('获取二维码失败'.tr)
                                    : controller.qrcodeImage != null && widget.isThirdParty
                                        ? Image.memory(
                                            controller.qrcodeImage!,
                                            fit: BoxFit.cover,
                                            errorBuilder: (context, error, stackTrace) => Center(
                                              child: Text(
                                                '解析二维码失败'.tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: CustomTheme.errorColor,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          )
                                        : Image.network(
                                            controller.qrcode,
                                            fit: BoxFit.cover,
                                            width: 128.0,
                                            height: 128.0,
                                            errorBuilder: (context, error, stackTrace) => Center(
                                              child: Text(
                                                '解析二维码失败'.tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: CustomTheme.errorColor,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                            loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                                                ? child
                                                : Container(
                                                    color: CustomTheme.greyColor.shade100,
                                                    child: Center(
                                                      child: CircularProgressIndicator(
                                                        value: loadingProgress.expectedTotalBytes != null
                                                            ? loadingProgress.cumulativeBytesLoaded /
                                                                loadingProgress.expectedTotalBytes!
                                                            : null,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  '${'请用'.tr} ${widget.paymentName} ${'扫一扫支付'.tr}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  spacing: 8.0,
                  children: [
                    Expanded(
                      child: TtButton(
                        text: '退出'.tr,
                        fontWeight: FontWeight.w600,
                        onTap: widget.onExitTap ?? () => Get.back(result: false),
                        buttonType: ActionButtonType.outline,
                        sizeType: SizeButtonType.small,
                      ),
                    ),
                    if (widget.isShowPrintButton)
                      Expanded(
                        child: TtButton(
                          text: '打印码'.tr,
                          fontWeight: FontWeight.w600,
                          onTap: widget.onPrintTap ?? () => Get.back(result: false),
                          buttonType: ActionButtonType.outline,
                          sizeType: SizeButtonType.small,
                        ),
                      ),
                    Expanded(
                      child: TtButton(
                        text: '已支付'.tr,
                        fontWeight: FontWeight.w600,
                        onTap: () =>
                            controller.onConfirmTap(widget.onConfirmTap ?? (int? uuid) async => Get.back(result: true)),
                        buttonType: ActionButtonType.primary,
                        sizeType: SizeButtonType.small,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
