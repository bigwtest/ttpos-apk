import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_member_discount_form.freezed.dart';
part 'use_member_discount_form.g.dart';

///req.CheckMemberPasswordReq
@freezed
class RequestUseMemberDiscountForm with _$RequestUseMemberDiscountForm {
  const factory RequestUseMemberDiscountForm({
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestUseMemberDiscountForm;

  factory RequestUseMemberDiscountForm.fromJson(Map<String, dynamic> json) =>
      _$RequestUseMemberDiscountFormFromJson(json);
}
