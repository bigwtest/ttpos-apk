import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/cart/cart.dart';

part 'add_product.freezed.dart';
part 'add_product.g.dart';

@freezed
class ResponseOrderAddProduct with _$ResponseOrderAddProduct {
  factory ResponseOrderAddProduct({
    // common_res
    @JsonKey(name: 'response_cart') ResponseCart? responseCart,
    // 商品被删除或者已下架
    @JsonKey(name: 'product_delete') ResponseOrderProductDelete? productDelete,
    // 商品规格被删除或者已下架
    @JsonKey(name: 'product_sku_delete') ResponseOrderProductSkuDelete? productSkuDelete, 
    // 商品加料被删除或者已下架 - product_feed_id
    @JsonKey(name: 'product_feed_delete') List<dynamic>? productFeedDelete,  
    // 
  }) = _ResponseOrderAddProduct;

  factory ResponseOrderAddProduct.fromJson(Map<String, dynamic> json) =>
      _$ResponseOrderAddProductFromJson(json);
}

@freezed
class ResponseOrderProductDelete with _$ResponseOrderProductDelete {
  factory ResponseOrderProductDelete({
    // 产品id
    @JsonKey(name: 'product_id') int? productId,
  }) = _ResponseOrderProductDelete;

  factory ResponseOrderProductDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseOrderProductDeleteFromJson(json);
}

@freezed
class ResponseOrderProductSkuDelete with _$ResponseOrderProductSkuDelete {
  factory ResponseOrderProductSkuDelete({
    // 产品sku_id
    @JsonKey(name: 'product_sku_id') int? productSkuId,
  }) = _ResponseOrderProductSkuDelete;

  factory ResponseOrderProductSkuDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseOrderProductSkuDeleteFromJson(json);
}
