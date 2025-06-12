import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'gift_product.freezed.dart';
part 'gift_product.g.dart';

// RequestOrderOptProduct 操作商品
@freezed
class RequestGiftingProduct with _$RequestGiftingProduct {
  // 私有构造函数，用于添加自定义方法
  const RequestGiftingProduct._();

  const factory RequestGiftingProduct({
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
    // 销售订单商品ID
    @JsonKey(name: 'sale_order_product_uuid') required int saleOrderProductUuid,
    // 赠菜原因
    @JsonKey(name: 'reason') String? reason,
    // 赠菜标签ids
    @JsonKey(name: 'gift_ids') List<int>? giftIds,
  }) = _RequestGiftingProduct;

  factory RequestGiftingProduct.fromJson(Map<String, dynamic> json) => _$RequestGiftingProductFromJson(json);

  // 验证器 - 检查 reason 和 gift_ids 是否至少有一个有值
  bool validate() {
    final hasReason = reason != null && reason!.isNotEmpty;
    final hasGiftIds = giftIds != null && giftIds!.isNotEmpty;
    if (!hasReason && !hasGiftIds) {
      throw '赠菜原因和赠菜标签至少需要填写一个'.tr;
    }
    return true;
  }
}
