import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail.freezed.dart';
part 'order_detail.g.dart';

///订单详情
///resp.AcceptOrderDetail
@freezed
class AcceptOrderDetail with _$AcceptOrderDetail {
  const factory AcceptOrderDetail({
    @JsonKey(name: "cashier") required String cashier,
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "desk_uuid") required int deskUuid,
    @JsonKey(name: "h5_order_uuid") required int h5OrderUuid,
    @JsonKey(name: "handle_time") required int handleTime,
    @JsonKey(name: "order_time") required int orderTime,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "wait_time") required int waitTime,
  }) = _AcceptOrderDetail;

  factory AcceptOrderDetail.fromJson(Map<String, dynamic> json) => _$AcceptOrderDetailFromJson(json);
}
