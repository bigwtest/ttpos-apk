import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_reverse_settle_details.freezed.dart';
part 'order_reverse_settle_details.g.dart';

@freezed
class OrderReverseSettleDetails with _$OrderReverseSettleDetails {
  factory OrderReverseSettleDetails({
    @JsonKey(name: "desks") Desks? desks,
    @JsonKey(name: "has_instant_order") bool? hasInstantOrder,
    @JsonKey(name: "order_amount") required double orderAmount,
    @JsonKey(name: "pay_methods") required List<String> payMethods,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "sale_bill_no") required String saleBillNo,
    @JsonKey(name: "sale_bill_type") required int saleBillType,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
  }) = _OrderReverseSettleDetails;

  factory OrderReverseSettleDetails.fromJson(Map<String, dynamic> json) => _$OrderReverseSettleDetailsFromJson(json);
}

///resp.OrderReverseSettleDeskList
@freezed
class Desks with _$Desks {
  const factory Desks({
    @JsonKey(name: "list") required List<RespOrderReverseSettleDesk> list,
    @JsonKey(name: "origin_desk_available") required bool originDeskAvailable,
  }) = _Desks;

  factory Desks.fromJson(Map<String, dynamic> json) => _$DesksFromJson(json);
}

///resp.OrderReverseSettleDesk
@freezed
class RespOrderReverseSettleDesk with _$RespOrderReverseSettleDesk {
  const factory RespOrderReverseSettleDesk({
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespOrderReverseSettleDesk;

  factory RespOrderReverseSettleDesk.fromJson(Map<String, dynamic> json) => _$RespOrderReverseSettleDeskFromJson(json);
}
