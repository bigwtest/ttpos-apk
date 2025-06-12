import 'package:freezed_annotation/freezed_annotation.dart';
import 'resp_recharge_order_operation_log_item.dart';
part 'operation_log.freezed.dart';
part 'operation_log.g.dart';

@unfreezed
class OperationLog with _$OperationLog {
  factory OperationLog({
    @JsonKey(name: "list")
    required List<RespRechargeOrderOperationLogItem> list,
  }) = _OperationLog;

  factory OperationLog.fromJson(Map<String, dynamic> json) =>
      _$OperationLogFromJson(json);
}
