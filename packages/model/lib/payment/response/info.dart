import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/response/member.dart';
import 'package:ttpos_model/payment/response/amount.dart';
import 'package:ttpos_model/payment/response/method.dart';
import 'package:ttpos_model/payment/response/order.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class PaymentInfo with _$PaymentInfo {
  const factory PaymentInfo({
    @JsonKey(name: "amounts") required BaseList<PaymentAmount> amounts,
    @JsonKey(name: "member_info") Member? memberInfo,
    @JsonKey(name: "payment_methods") required BaseList<PaymentMethod> paymentMethods,
    @JsonKey(name: "payment_orders") required BaseList<PaymentOrder> paymentOrders,
  }) = _PaymentInfo;

  factory PaymentInfo.fromJson(Map<String, dynamic> json) => _$PaymentInfoFromJson(json);
}
