import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/order_list_details/resp_order_operation_log.dart';

part 'operation_log.freezed.dart';
part 'operation_log.g.dart';

@freezed
class OperationLog with _$OperationLog {
  factory OperationLog({
    @JsonKey(name: "list") required List<RespOrderOperationLog> list,
  }) = _OperationLog;

  factory OperationLog.fromJson(Map<String, dynamic> json) => _$OperationLogFromJson(json);
}
