import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_reverse.freezed.dart';
part 'request_order_reverse.g.dart';

@freezed
class RequestOrderReverse with _$RequestOrderReverse {
  factory RequestOrderReverse({
    @JsonKey(name: "desk_uuid") int? deskUuid,
    @JsonKey(name: "hide_order") bool? hideOrder,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
  }) = _RequestOrderReverse;

  factory RequestOrderReverse.fromJson(Map<String, dynamic> json) => _$RequestOrderReverseFromJson(json);
}
