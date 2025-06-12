import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/order_list_details/resp_order_product.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'resp_order_info.freezed.dart';
part 'resp_order_info.g.dart';

@unfreezed
class RespOrderInfo with _$RespOrderInfo {
  factory RespOrderInfo({
    @JsonKey(name: "bill_type") required int billType,
    @JsonKey(name: "dining_method") required int diningMethod,
    @JsonKey(name: "finish_time") required int finishTime,
    @JsonKey(name: "free_reason") required LocaleName freeReason,
    @JsonKey(name: "is_free") required bool isFree,
    @JsonKey(name: "member_name") required String memberName,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "order_amount") required double orderAmount,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "pay_type_name") required String payTypeName,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "products") required List<RespOrderProduct> products,
    @JsonKey(name: "refund_amount") required double refundAmount,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "status") required int status,
  }) = _RespOrderInfo;

  factory RespOrderInfo.fromJson(Map<String, dynamic> json) => _$RespOrderInfoFromJson(json);
}
