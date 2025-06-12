import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_refund_sub.freezed.dart';
part 'request_order_refund_sub.g.dart';

@freezed
class RequestOrderRefundSub with _$RequestOrderRefundSub {
  factory RequestOrderRefundSub({
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "account_no") String? accountNo,
    @JsonKey(name: "bank_code") String? bankCode,
    @JsonKey(name: "products") required List<ReqOrderReturnProduct> products,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestOrderRefundSub;

  factory RequestOrderRefundSub.fromJson(Map<String, dynamic> json) => _$RequestOrderRefundSubFromJson(json);
}

///req.OrderReturnProduct
@freezed
class ReqOrderReturnProduct with _$ReqOrderReturnProduct {
  const factory ReqOrderReturnProduct({
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "sale_order_product_uuid") required int saleOrderProductUuid,
  }) = _ReqOrderReturnProduct;

  factory ReqOrderReturnProduct.fromJson(Map<String, dynamic> json) => _$ReqOrderReturnProductFromJson(json);
}
