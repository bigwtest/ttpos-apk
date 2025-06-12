import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_order_operation_log.freezed.dart';
part 'resp_order_operation_log.g.dart';

@freezed
class RespOrderOperationLog with _$RespOrderOperationLog {
  factory RespOrderOperationLog({
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "pay_type") required List<RespOrderOperationLogPaymentMethod> payType,
    @JsonKey(name: "refund_type") required int refundType,
    @JsonKey(name: "source") required String source,
    @JsonKey(name: "user_email") required String userEmail,
    @JsonKey(name: "user_name") required String userName,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespOrderOperationLog;

  factory RespOrderOperationLog.fromJson(Map<String, dynamic> json) => _$RespOrderOperationLogFromJson(json);
}

///resp.OrderOperationLogPaymentMethod
@freezed
class RespOrderOperationLogPaymentMethod with _$RespOrderOperationLogPaymentMethod {
  const factory RespOrderOperationLogPaymentMethod({
    @JsonKey(name: "account_name") required String accountName,
    @JsonKey(name: "account_no") required String accountNo,
    @JsonKey(name: "bank_code") required String bankCode,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "payment_order_id") required int paymentOrderId,
    @JsonKey(name: "price") required String price,
    @JsonKey(name: "refund_money") required String refundMoney,
    @JsonKey(name: "refund_status") required int refundStatus,
    @JsonKey(name: "remark") required String remark,
    @JsonKey(name: "return_amount_uuid") required int returnAmountUuid,
    @JsonKey(name: "return_order_uuid") required int returnOrderUuid,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "value") required int value,
  }) = _RespOrderOperationLogPaymentMethod;

  factory RespOrderOperationLogPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$RespOrderOperationLogPaymentMethodFromJson(json);
}
