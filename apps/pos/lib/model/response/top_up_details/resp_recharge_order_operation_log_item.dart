import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_recharge_order_operation_log_item.freezed.dart';
part 'resp_recharge_order_operation_log_item.g.dart';

@unfreezed
class RespRechargeOrderOperationLogItem with _$RespRechargeOrderOperationLogItem {
  factory RespRechargeOrderOperationLogItem({
    @JsonKey(name: "client") required String client,
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "real_name") required String realName,
    @JsonKey(name: "username") required String username,
  }) = _RespRechargeOrderOperationLogItem;

  factory RespRechargeOrderOperationLogItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RespRechargeOrderOperationLogItemFromJson(json);
}
