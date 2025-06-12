import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/order_list_details/resp_order_info.dart';
import 'package:pos/model/response/order_list_details/resp_order_info_pay_types.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed
class Detail with _$Detail {
  factory Detail({
    @JsonKey(name: "bill_type") required int billType,
    @JsonKey(name: "buffet_names") required String buffetNames,
    @JsonKey(name: "cancel_reason") required String cancelReason,
    @JsonKey(name: "cashier_name") required String cashierName,
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "dining_method") required int diningMethod,
    @JsonKey(name: "finish_time") required int finishTime,
    @JsonKey(name: "is_buffet") required bool isBuffet,
    @JsonKey(name: "is_split") required bool isSplit,
    @JsonKey(name: "member_names") required String memberNames,
    @JsonKey(name: "member_uuids") required String memberUuids,
    @JsonKey(name: "order_amount") required double orderAmount,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "pay_types") required List<RespOrderInfoPayTypes> payTypes,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "refund_amount") required double refundAmount,
    @JsonKey(name: "remark") required String remark,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_orders") required List<RespOrderInfo> saleOrders,
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "status") required int status,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
