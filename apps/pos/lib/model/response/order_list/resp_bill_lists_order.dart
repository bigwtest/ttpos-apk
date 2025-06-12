import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:pos/model/response/order_list/extra.dart';

part 'resp_bill_lists_order.freezed.dart';
part 'resp_bill_lists_order.g.dart';

///app zh:用餐订单列表
@freezed
class RespBillListsOrder with _$RespBillListsOrder {
  factory RespBillListsOrder({
    @JsonKey(name: "bill_type") required int billType,
    @JsonKey(name: "consumer_uuids") required String consumerUuids,
    @JsonKey(name: "extra") required Extra extra,
    @JsonKey(name: "finish_time") required int finishTime,
    @JsonKey(name: "order_amount") required SafetyNumber orderAmount,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "pay_type_name") required String payTypeName,
    @JsonKey(name: "payment_amount") required SafetyNumber paymentAmount,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "status") required int status,
  }) = _RespBillListsOrder;

  factory RespBillListsOrder.fromJson(Map<String, dynamic> json) => _$RespBillListsOrderFromJson(json);
}
