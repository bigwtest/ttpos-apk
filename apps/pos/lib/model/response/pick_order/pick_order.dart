// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:pos/model/response/cart/cart_product.dart';

part 'pick_order.freezed.dart';
part 'pick_order.g.dart';

///resp.InstantHideSaleBill
@freezed
class ResponsePickOrder with _$ResponsePickOrder {
  const factory ResponsePickOrder({
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "hide_bill_time") required int hideBillTime,
    @JsonKey(name: "products") required BaseList<ResponseCartProduct> products,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "serial_no") required String serialNo,
  }) = _ResponsePickOrder;

  factory ResponsePickOrder.fromJson(Map<String, dynamic> json) => _$ResponsePickOrderFromJson(json);
}
