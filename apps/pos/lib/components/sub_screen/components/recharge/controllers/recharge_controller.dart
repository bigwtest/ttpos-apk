import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/qrcode/qrcode.dart';

class RechargeController extends GetxController {
  final Rx<QrcodeModel> _payDetail = QrcodeModel(
    paymentMethod: '', // 支付名称
    paymentQrcode: '', // 支付二维码
    paymentAmount: 0, // 价格
  ).obs;
  QrcodeModel get payDetail => _payDetail.value;
  set payDetail(QrcodeModel value) {
    _payDetail.value = value;
  }

  @override
  void onClose() {
    _payDetail.value = QrcodeModel(
      paymentMethod: '', // 支付名称
      paymentQrcode: '', // 支付二维码
      paymentAmount: 0, // 价格
    );
    super.onClose();
  }
}
