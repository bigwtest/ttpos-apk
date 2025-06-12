import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'finish.freezed.dart';
part 'finish.g.dart';

@freezed
class PaymentFinish with _$PaymentFinish {
  const factory PaymentFinish({
    @JsonKey(name: "amount_info") required PaymentFinishAmountInfo amountInfo,
    @JsonKey(name: "pay_methods") required BaseList<PaymentFinishPayMethod> payMethods,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _PaymentFinish;

  factory PaymentFinish.fromJson(Map<String, dynamic> json) => _$PaymentFinishFromJson(json);
}

@freezed
class PaymentFinishAmountInfo with _$PaymentFinishAmountInfo {
  const factory PaymentFinishAmountInfo({
    @JsonKey(name: "change_amount") required SafetyNumber changeAmount,
    @JsonKey(name: "order_amount") required SafetyNumber orderAmount,
    @JsonKey(name: "pay_amount") required SafetyNumber payAmount,
  }) = _PaymentFinishAmountInfo;

  factory PaymentFinishAmountInfo.fromJson(Map<String, dynamic> json) => _$PaymentFinishAmountInfoFromJson(json);
}

@freezed
class PaymentFinishPayMethod with _$PaymentFinishPayMethod {
  const factory PaymentFinishPayMethod({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _PaymentFinishPayMethod;

  factory PaymentFinishPayMethod.fromJson(Map<String, dynamic> json) => _$PaymentFinishPayMethodFromJson(json);
}
