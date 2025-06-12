import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_discount.freezed.dart';
part 'cancel_discount.g.dart';

@freezed
class RequestCancelDiscountDesk with _$RequestCancelDiscountDesk {
  factory RequestCancelDiscountDesk({
    // 销售账单UUID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestCancelDiscountDesk;

  factory RequestCancelDiscountDesk.fromJson(Map<String, dynamic> json) => _$RequestCancelDiscountDeskFromJson(json);
}
