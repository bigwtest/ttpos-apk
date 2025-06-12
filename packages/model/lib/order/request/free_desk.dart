import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_desk.freezed.dart';
part 'free_desk.g.dart';

@freezed
class RequestFreeDesk with _$RequestFreeDesk {
  factory RequestFreeDesk({
    // 销售账单ID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    // 免单标签ids
    @JsonKey(name: "reason_ids") required List<int> reasonIds,
    // 免单原因
    @JsonKey(name: "reason") required String reason,
  }) = _RequestFreeDesk;

  factory RequestFreeDesk.fromJson(Map<String, dynamic> json) => _$RequestFreeDeskFromJson(json);
}
