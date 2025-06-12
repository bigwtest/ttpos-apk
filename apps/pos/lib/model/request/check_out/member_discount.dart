import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_discount.freezed.dart';
part 'member_discount.g.dart';

@freezed
class RequestMemberDiscount with _$RequestMemberDiscount {
  const factory RequestMemberDiscount({
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestMemberDiscount;

  factory RequestMemberDiscount.fromJson(Map<String, dynamic> json) => _$RequestMemberDiscountFromJson(json);
}
