import 'package:freezed_annotation/freezed_annotation.dart';

part 'log.freezed.dart';
part 'log.g.dart';

///resp.OperationLogItem
@freezed
class AcceptOperationLog with _$AcceptOperationLog {
  const factory AcceptOperationLog({
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "pay_type") required List<RespOrderOperationLogPaymentMethod> payType,
    @JsonKey(name: "source") required String source,
    @JsonKey(name: "user_email") required String userEmail,
    @JsonKey(name: "user_name") required String userName,
    @JsonKey(name: "uuid") required int uuid,
  }) = _AcceptOperationLog;

  factory AcceptOperationLog.fromJson(Map<String, dynamic> json) => _$AcceptOperationLogFromJson(json);
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
    @JsonKey(name: "return_order_uuid") required int returnOrderUuid,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "value") required int value,
  }) = _RespOrderOperationLogPaymentMethod;

  factory RespOrderOperationLogPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$RespOrderOperationLogPaymentMethodFromJson(json);
}
