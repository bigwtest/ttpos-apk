import 'package:freezed_annotation/freezed_annotation.dart';
import 'meta.dart';
import 'resp_recharge_order_item.dart';

part 'response_top_up.freezed.dart';
part 'response_top_up.g.dart';

@unfreezed
class ResponseTopUp with _$ResponseTopUp {
  factory ResponseTopUp({
    @JsonKey(name: "list") required List<RespRechargeOrderItem> list,
    @JsonKey(name: "meta") required Meta meta,
  }) = _ResponseTopUp;

  factory ResponseTopUp.fromJson(Map<String, dynamic> json) =>
      _$ResponseTopUpFromJson(json);
}
