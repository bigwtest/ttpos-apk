import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:pos/model/response/cart/cart_amount_info.dart';

class CartStatisticsController extends GetxController {
  // 统计
  final Rx<ResponseCartAmountInfo> _amountInfo = ResponseCartAmountInfo(
    productOriginAmount: SafetyNumber.double(0.0), // 商品原价总额
    productAmount: SafetyNumber.double(0.0), // 商品实际总额
    serviceAmount: SafetyNumber.double(0.0), // 服务费
    taxAmount: SafetyNumber.double(0.0), // 税费
    discountAmount: SafetyNumber.double(0.0), // 折扣金额
    memberDiscountAmount: SafetyNumber.double(0.0), // 会员折扣金额
    amount: SafetyNumber.double(0.0), // 实付金额
  ).obs;
  ResponseCartAmountInfo get amountInfo => _amountInfo.value;
  set amountInfo(ResponseCartAmountInfo value) {
    _amountInfo.value = value;
  }

  void reset() {
    amountInfo = ResponseCartAmountInfo(
      productOriginAmount: SafetyNumber.double(0.0), // 商品原价总额
      productAmount: SafetyNumber.double(0.0), // 商品实际总额
      serviceAmount: SafetyNumber.double(0.0), // 服务费
      taxAmount: SafetyNumber.double(0.0), // 税费
      discountAmount: SafetyNumber.double(0.0), // 折扣金额
      memberDiscountAmount: SafetyNumber.double(0.0), // 会员折扣金额
      amount: SafetyNumber.double(0.0), // 实付金额
    );
    totalNum = 0;
  }

  // 总数
  final Rx<int> _totalNum = 0.obs;
  int get totalNum => _totalNum.value;
  set totalNum(int value) {
    if (_totalNum.value == value) return;
    _totalNum.value = value;
  }
}
