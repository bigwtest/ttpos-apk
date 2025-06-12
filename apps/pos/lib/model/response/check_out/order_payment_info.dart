import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:pos/model/response/check_out/payment_method_amout.dart';
import 'package:pos/model/response/member/member_info.dart';
import 'package:pos/model/response/payment/payment_method.dart';
import 'package:pos/model/response/payment/payment_order.dart';

part 'order_payment_info.freezed.dart';
part 'order_payment_info.g.dart';

// ResponseOrderPaymentInfo
@freezed
class ResponseOrderPaymentInfo with _$ResponseOrderPaymentInfo {
  const factory ResponseOrderPaymentInfo({
    @JsonKey(name: "amounts") required BaseList<PaymentMethodAmount> amounts,
    @JsonKey(name: "member_info") ResponseMemberInfo? memberInfo,
    @JsonKey(name: "payment_methods") required BaseList<PaymentMethod> paymentMethods,
    @JsonKey(name: "payment_orders") required BaseList<ResponsePaymentOrder> paymentOrders,
  }) = _ResponseOrderPaymentInfo;

  factory ResponseOrderPaymentInfo.fromJson(Map<String, dynamic> json) => _$ResponseOrderPaymentInfoFromJson(json);
}
