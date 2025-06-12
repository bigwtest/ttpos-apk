import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/member/response/member.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class MemberDiscount with _$MemberDiscount {
  const factory MemberDiscount({
    @JsonKey(name: "discounted_price") required SafetyNumber discountedPrice,
    @JsonKey(name: "has_password") required bool hasPassword,
    @JsonKey(name: "member") required Member member,
  }) = _MemberDiscount;

  factory MemberDiscount.fromJson(Map<String, dynamic> json) => _$MemberDiscountFromJson(json);
}
