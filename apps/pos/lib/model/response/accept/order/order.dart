import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class AcceptOrder with _$AcceptOrder {
  factory AcceptOrder({
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "desk_region_uuid") required int deskRegionUuid,
    @JsonKey(name: "h5_order_uuid") required int h5OrderUuid,
    @JsonKey(name: "handle_time") required int handleTime,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "order_time") required int orderTime,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "wait_time") required int waitTime,
  }) = _AcceptOrder;

  factory AcceptOrder.fromJson(Map<String, dynamic> json) => _$AcceptOrderFromJson(json);
}
