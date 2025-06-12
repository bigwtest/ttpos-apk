import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_desk.freezed.dart';
part 'change_desk.g.dart';

@freezed
class RequestChangeDesk with _$RequestChangeDesk {
  factory RequestChangeDesk({
    // 桌台UUID列表
    @JsonKey(name: "desk_uuid") required int deskUuid,
    // 销售账单UUID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestChangeDesk;

  factory RequestChangeDesk.fromJson(Map<String, dynamic> json) => _$RequestChangeDeskFromJson(json);
}
