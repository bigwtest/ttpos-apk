import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@unfreezed
class RequestGetMemberDiscount with _$RequestGetMemberDiscount {
  factory RequestGetMemberDiscount({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "member_uuid") required int memberUuid,
  }) = _RequestGetMemberDiscount;

  factory RequestGetMemberDiscount.fromJson(Map<String, dynamic> json) => _$RequestGetMemberDiscountFromJson(json);
}

@unfreezed
class RequestUseMemberDiscount with _$RequestUseMemberDiscount {
  factory RequestUseMemberDiscount({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "password") String? password,
  }) = _RequestUseMemberDiscount;

  factory RequestUseMemberDiscount.fromJson(Map<String, dynamic> json) => _$RequestUseMemberDiscountFromJson(json);
}
