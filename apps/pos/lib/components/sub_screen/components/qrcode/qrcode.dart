import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class QrcodeModel {
  final String paymentMethod; // 名称
  final String paymentQrcode; // 二维码
  final double paymentAmount; // 价格

  QrcodeModel({
    required this.paymentMethod,
    required this.paymentQrcode,
    required this.paymentAmount,
  });

  factory QrcodeModel.fromJson(Map<String, dynamic> json) {
    return QrcodeModel(
      paymentMethod: json['paymentMethod'],
      paymentQrcode: json['paymentQrcode'],
      paymentAmount: json['paymentAmount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentMethod': paymentMethod,
      'paymentQrcode': paymentQrcode,
      'paymentAmount': paymentAmount,
    };
  }
}

class Qrcode extends StatelessWidget {
  final QrcodeModel detail;

  const Qrcode({
    super.key,
    required this.detail,
  });

  Uint8List? get qrcodeBase64 =>
      detail.paymentQrcode.startsWith('data:image') ? base64Decode(detail.paymentQrcode.split(',')[1]) : null;

  get price => detail.paymentAmount.primaryCurrency;
  get pricesSub => detail.paymentAmount.secondaryCurrency;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0,
      height: 360.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 26.0),
      child: Column(
        children: [
          Text(
            '${'@name收款'.trParams(
              {
                'name': detail.paymentMethod,
              },
            )}:',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  price,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomTheme.errorColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: 4.0,
              ),
              if (pricesSub != null)
                Obx(
                  () => Text(
                    pricesSub,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomTheme.errorColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          SizedBox(
            width: 160.0,
            height: 160.0,
            child: qrcodeBase64 != null
                ? Image.memory(
                    qrcodeBase64!,
                    width: 160.0,
                    height: 160.0,
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
                    detail.paymentQrcode,
                    fit: BoxFit.cover,
                    width: 160.0,
                    height: 160.0,
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
                                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            ),
                          ),
                  ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            '请用@name扫一扫支付'.trParams({
              'name': detail.paymentMethod,
            }),
            // maxLines: 1,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
