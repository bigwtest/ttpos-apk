import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'returning_product.freezed.dart';
part 'returning_product.g.dart';

// RequestOrderOptProduct 操作商品
@freezed
class RequestReturningProduct with _$RequestReturningProduct {
  // 私有构造函数，用于添加自定义方法
  const RequestReturningProduct._();

  const factory RequestReturningProduct({
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
    // 销售订单商品ID
    @JsonKey(name: 'sale_order_product_uuid') required int saleOrderProductUuid,
    // 退菜数量
    @JsonKey(name: 'num') required int num,
    // 退菜原因
    @JsonKey(name: 'reason') String? reason,
    // 高级密码 后台开启的时候才传
    @JsonKey(name: 'password') String? password,
    // 退菜标签ids
    @JsonKey(name: 'return_ids') List<int>? returnIds,
  }) = _RequestReturningProduct;

  factory RequestReturningProduct.fromJson(Map<String, dynamic> json) => _$RequestReturningProductFromJson(json);

  // 验证器 - 检查 reason 和 return_ids 是否至少有一个有值
  bool validate() {
    final hasReason = reason != null && reason!.isNotEmpty;
    final hasReturnIds = returnIds != null && returnIds!.isNotEmpty;
    if (!hasReason && !hasReturnIds) {
      throw '退菜原因和退菜标签至少需要填写一个'.tr;
    }
    return true;
  }
}
