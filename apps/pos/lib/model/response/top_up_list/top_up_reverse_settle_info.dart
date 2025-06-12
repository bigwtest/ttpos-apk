import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_reverse_settle_info.freezed.dart';
part 'top_up_reverse_settle_info.g.dart';

@unfreezed
class TopUpReverseSettleInfo with _$TopUpReverseSettleInfo {
  factory TopUpReverseSettleInfo({
    @JsonKey(name: "member_info") required MemberInfo memberInfo,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status") required int status,
  }) = _TopUpReverseSettleInfo;

  factory TopUpReverseSettleInfo.fromJson(Map<String, dynamic> json) =>
      _$TopUpReverseSettleInfoFromJson(json);
}

@freezed
class MemberInfo with _$MemberInfo {
  const factory MemberInfo({
    @JsonKey(name: "balance") required double balance,
    @JsonKey(name: "gift_balance") required double giftBalance,
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "points") required double points,
    @JsonKey(name: "uuid") required int uuid,
  }) = _MemberInfo;

  factory MemberInfo.fromJson(Map<String, dynamic> json) =>
      _$MemberInfoFromJson(json);
}
