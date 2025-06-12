import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_recharge_order_refund_info.freezed.dart';
part 'resp_recharge_order_refund_info.g.dart';

@unfreezed
class RechargeOrderRefundInfo with _$RechargeOrderRefundInfo {
  factory RechargeOrderRefundInfo({
    @JsonKey(name: "gift_amount") required double giftAmount,
    @JsonKey(name: "gift_point") required double giftPoint,
    @JsonKey(name: "payment_records") required List<RespRefundRechargeOrderPaymentRecord> paymentRecords,
    @JsonKey(name: "recharge_amount") required double rechargeAmount,
    @JsonKey(name: "recharge_member_info") required MemberInfo rechargeMemberInfo,
    @JsonKey(name: "refundable_amount") required double refundableAmount,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RechargeOrderRefundInfo;

  factory RechargeOrderRefundInfo.fromJson(Map<String, dynamic> json) => _$RechargeOrderRefundInfoFromJson(json);
}

///resp.RefundRechargeOrderPaymentRecord
@freezed
class RespRefundRechargeOrderPaymentRecord with _$RespRefundRechargeOrderPaymentRecord {
  const factory RespRefundRechargeOrderPaymentRecord({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_name") required String paymentName,
    @JsonKey(name: "refundable_amount") required double refundableAmount,
  }) = _RespRefundRechargeOrderPaymentRecord;

  factory RespRefundRechargeOrderPaymentRecord.fromJson(Map<String, dynamic> json) =>
      _$RespRefundRechargeOrderPaymentRecordFromJson(json);
}

///充值会员信息
///
///resp.RefundRechargeOrderMemberInfo
@freezed
class MemberInfo with _$MemberInfo {
  const factory MemberInfo({
    @JsonKey(name: "balance") required double balance,
    @JsonKey(name: "gift_balance") required double giftBalance,
    @JsonKey(name: "points") required double points,
  }) = _MemberInfo;

  factory MemberInfo.fromJson(Map<String, dynamic> json) => _$MemberInfoFromJson(json);
}
