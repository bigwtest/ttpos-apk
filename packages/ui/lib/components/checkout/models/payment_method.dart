import 'package:ttpos_model/payment/response/method.dart';

class PaymentMethodViewModel {
  final String title;
  final String subTitle;
  final String icon;
  final int uuid;

  const PaymentMethodViewModel({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.uuid,
  });
}

enum PaymentMethodCode {
  unknown(-9999, '未知'),
  free(-1, '免单'),
  balance(10, '余额支付'),
  cash(40, '现金支付'),
  wechat(20, '微信支付'),
  alipay(30, '支付宝支付'),
  ownWechat(50, '自有微信'),
  ownAlipay(60, '自有支付宝'),
  ownPos(70, '自有POS刷卡'),
  qrPromptPay(80, 'QR PromptPay'),
  qrCode(90, 'QR code'),
  scbEasy(100, 'SCB easy'),
  krungthaiNext(110, 'Krungthai NEXT'),
  krungsriMobile(120, 'Krungsri Mobile'),
  crossBorderQr(130, 'Cross-Border QR'),
  trueMoneyWallet(140, 'TrueMoneyWallet'),
  linePay(150, 'LINE Pay'),
  jaCreditCard(160, 'ja credit card'),
  jaCreditCard2(170, 'ja credit card'),
  jaQrCode(180, 'JA QRCODE'),
  jaQrCode2(190, 'JA QRCODE'),
  lianLianWechatPay(90111, 'LianLianWechatPay'),
  lianLianAliPay(90222, 'LianLianAliPay'),
  lianLianQrPromptPay(90333, 'LianLianQRPromptPay');

  final int code;
  final String name;

  const PaymentMethodCode(this.code, this.name);
}

extension PaymentMethodExtension on PaymentMethod {
  PaymentMethodCode get paymentMethodCode => PaymentMethodCode.values.firstWhere(
        (element) => element.code == code,
        orElse: () => PaymentMethodCode.unknown,
      );

  bool get isScanCode => qrcode.isNotEmpty || isThirdParty;
  bool get isThirdParty => source == 2;
  bool get isCash => code == 40;
  bool get isMemberBalance => code == 10;
  bool get hasFee => feePercent.toSafetyDouble() > 0;
  double get safetyFeePercent => feePercent.toSafetyDouble();
}
