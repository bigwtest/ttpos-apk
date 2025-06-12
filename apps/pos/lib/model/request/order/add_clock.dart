import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_clock.freezed.dart';
part 'add_clock.g.dart';

// 调整自助餐请求模型
@unfreezed
class RequestOrderAddClock with _$RequestOrderAddClock {
  factory RequestOrderAddClock({
    // 销售单UUID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,

    // 销售订单UUID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
    
    // 延迟UUID列表
    @JsonKey(name: 'delay_uuids') required List<int> delayUuids,
  }) = _RequestOrderAddClock;

  factory RequestOrderAddClock.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderAddClockFromJson(json);
}
