import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/member/member_info.dart';

part 'member_discount.freezed.dart';
part 'member_discount.g.dart';

///resp.MemberDiscountResp
@freezed
class ResponseMemberDiscount with _$ResponseMemberDiscount {
  const factory ResponseMemberDiscount({
    @JsonKey(name: "discounted_price") required double discountedPrice,
    @JsonKey(name: "has_password") required bool hasPassword,
    @JsonKey(name: "member") required ResponseMemberInfo member,
  }) = _ResponseMemberDiscount;

  factory ResponseMemberDiscount.fromJson(Map<String, dynamic> json) => _$ResponseMemberDiscountFromJson(json);
}
