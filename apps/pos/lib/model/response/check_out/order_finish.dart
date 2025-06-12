// To parse this JSON data, do
//
//     final responseOrderFinish = responseOrderFinishFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';

part 'order_finish.freezed.dart';
part 'order_finish.g.dart';

///resp.OrderFinishResp
@freezed
class ResponseOrderFinish with _$ResponseOrderFinish {
  const factory ResponseOrderFinish({
    @JsonKey(name: "amount_info") required AmountInfo amountInfo,
    @JsonKey(name: "pay_methods") required BaseList<PayMethodItem> payMethods,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _ResponseOrderFinish;

  factory ResponseOrderFinish.fromJson(Map<String, dynamic> json) => _$ResponseOrderFinishFromJson(json);
}

///金额信息
///
///resp.PayAmountInfo
@freezed
class AmountInfo with _$AmountInfo {
  const factory AmountInfo({
    @JsonKey(name: "change_amount") required double changeAmount,
    @JsonKey(name: "order_amount") required double orderAmount,
    @JsonKey(name: "pay_amount") required double payAmount,
  }) = _AmountInfo;

  factory AmountInfo.fromJson(Map<String, dynamic> json) => _$AmountInfoFromJson(json);
}

@freezed
class PayMethodItem with _$PayMethodItem {
  const factory PayMethodItem({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _PayMethodItem;

  factory PayMethodItem.fromJson(Map<String, dynamic> json) => _$PayMethodItemFromJson(json);
}
