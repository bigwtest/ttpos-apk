import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'resp_order_product.freezed.dart';
part 'resp_order_product.g.dart';

@freezed
class RespOrderProduct with _$RespOrderProduct {
  factory RespOrderProduct({
    @JsonKey(name: "gift_reason") required String giftReason,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "is_buffet") required bool isBuffet,
    @JsonKey(name: "is_buffet_customer") required bool isBuffetCustomer,
    @JsonKey(name: "is_delay") required bool isDelay,
    @JsonKey(name: "is_gift") required bool isGift,
    @JsonKey(name: "is_must") required bool isMust,
    @JsonKey(name: "locale_attribute_name") required LocaleName localeAttributeName,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "refund_amount") required double refundAmount,
    @JsonKey(name: "refund_reason") required String refundReason,
    @JsonKey(name: "remark") required String remark,
    @JsonKey(name: "sale_price") required double salePrice,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "total_price") required double totalPrice,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespOrderProduct;

  factory RespOrderProduct.fromJson(Map<String, dynamic> json) => _$RespOrderProductFromJson(json);
}
