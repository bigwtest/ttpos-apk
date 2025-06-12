import 'package:freezed_annotation/freezed_annotation.dart';

part 'un_send_product.freezed.dart';
part 'un_send_product.g.dart';

@freezed
class ResponseUnSendProduct with _$ResponseUnSendProduct {
  factory ResponseUnSendProduct({
    // 产品名称
    @JsonKey(name: "product_name_text") String? productNameText,
    // 出菜状态
    @JsonKey(name: "kitchen_status") int? kitchenStatus,
    // 消费税支付价格
    @JsonKey(name: "consumption_tax_pay_price") dynamic consumptionTaxPayPrice,
    // 消费税总完税价格
    @JsonKey(name: "total_consumption_tax_pay_price") dynamic totalConsumptionTaxPayPrice,
    // 消费税订单总价
    @JsonKey(name: "total_consumption_tax_order_price") dynamic totalConsumptionTaxOrderPrice,
    // 产品规格id
    @JsonKey(name: "product_sku_id") int? productSkuId,
  }) = _ResponseUnSendProduct;

  factory ResponseUnSendProduct.fromJson(Map<String, dynamic> json) =>
      _$ResponseUnSendProductFromJson(json);
}