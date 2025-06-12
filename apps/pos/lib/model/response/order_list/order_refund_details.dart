import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'order_refund_details.freezed.dart';
part 'order_refund_details.g.dart';

@freezed
class OrderRefundDetails with _$OrderRefundDetails {
  factory OrderRefundDetails({
    @JsonKey(name: "can_return_amount") required double canReturnAmount,
    @JsonKey(name: "payment_records") required List<RespOrderReturnPaymentRecord> paymentRecords,
    @JsonKey(name: "products") required List<RespOrderReturnProduct> products,
  }) = _OrderRefundDetails;

  factory OrderRefundDetails.fromJson(Map<String, dynamic> json) => _$OrderRefundDetailsFromJson(json);
}

///resp.OrderReturnPaymentRecord
@freezed
class RespOrderReturnPaymentRecord with _$RespOrderReturnPaymentRecord {
  const factory RespOrderReturnPaymentRecord({
    @JsonKey(name: "can_return_amount") required double canReturnAmount,
    @JsonKey(name: "currency_unit") required String currencyUnit,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_method_name") required String paymentMethodName,
    @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
  }) = _RespOrderReturnPaymentRecord;

  factory RespOrderReturnPaymentRecord.fromJson(Map<String, dynamic> json) =>
      _$RespOrderReturnPaymentRecordFromJson(json);
}

///resp.OrderReturnProduct
@freezed
class RespOrderReturnProduct with _$RespOrderReturnProduct {
  const factory RespOrderReturnProduct({
    @JsonKey(name: "can_return_amount") required double canReturnAmount,
    @JsonKey(name: "currency_unit") required String currencyUnit,
    @JsonKey(name: "locale_attribute_name") required LocaleName localeAttributeName,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "sale_order_product_uuid") required int saleOrderProductUuid,
  }) = _RespOrderReturnProduct;

  factory RespOrderReturnProduct.fromJson(Map<String, dynamic> json) => _$RespOrderReturnProductFromJson(json);
}

///resp.OrderReturnProduct
@unfreezed
class OrderReturnProductList with _$OrderReturnProductList {
  factory OrderReturnProductList({
    @JsonKey(name: "can_return_amount") required double canReturnAmount,
    @JsonKey(name: "currency_unit") required String currencyUnit,
    @JsonKey(name: "locale_attribute_name") required LocaleName localeAttributeName,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "sale_order_product_uuid") required int saleOrderProductUuid,
    @JsonKey(name: "refund_num") required int refundNum,
  }) = _OrderReturnProductList;

  factory OrderReturnProductList.fromJson(Map<String, dynamic> json) => _$OrderReturnProductListFromJson(json);
}
