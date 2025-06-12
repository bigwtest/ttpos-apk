import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/cart/cart.dart';

part 'merge_desk.freezed.dart';
part 'merge_desk.g.dart';

@freezed
class ResponseOrderMergeDesk with _$ResponseOrderMergeDesk {
  factory ResponseOrderMergeDesk({
    // 是否重置折扣
    @JsonKey(name: "is_reset_discount") bool? isResetDiscount,
    // 购物车
    @JsonKey(name: "shop_cart") ResponseCart? shopCart,
  }) = _ResponseOrderMergeDesk;

  factory ResponseOrderMergeDesk.fromJson(Map<String, dynamic> json) =>
      _$ResponseOrderMergeDeskFromJson(json);
}

@freezed
class ResponseOrderMergeDeskCheck with _$ResponseOrderMergeDeskCheck {
  factory ResponseOrderMergeDeskCheck({
    @JsonKey(name: "desk_no") required String deskNo,
  }) = _ResponseOrderMergeDeskCheck;

  factory ResponseOrderMergeDeskCheck.fromJson(Map<String, dynamic> json) =>
      _$ResponseOrderMergeDeskCheckFromJson(json);
}