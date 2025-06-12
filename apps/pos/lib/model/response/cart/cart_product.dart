// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/number/safety_number.dart';

// Project imports:
import 'cart_about_buffet.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@freezed
class ResponseCartProduct with _$ResponseCartProduct {
  factory ResponseCartProduct({
    // 商品ID
    @JsonKey(name: 'uuid') required int uuid,
    // 商品名称（多语言）
    @JsonKey(name: 'locale_name') required LocaleName localeName,
    // 商品属性名称（多语言）
    @JsonKey(name: 'locale_attribute_name') required LocaleName localeAttributeName,
    // 商品数量
    @JsonKey(name: 'num') required int num,
    // 商品制作数量
    @JsonKey(name: 'finished_num') int? finishedNum,
    // 商品原价 - (总价)
    @JsonKey(name: 'price') required SafetyNumber price,
    // 商品原价 - (单价)
    @JsonKey(name: 'unit_price') required SafetyNumber unitPrice,
    // 折扣价。折扣加为0的话表示没有对商品进行折扣，则显示原价
    @JsonKey(name: 'discount_price') required SafetyNumber discountPrice,
    // 商品状态 0: 未送厨 1:已送厨
    @JsonKey(name: 'status') required int status,
    // 备注
    @JsonKey(name: 'remark') required String remark,
    // 是否必点
    @JsonKey(name: 'is_must') required bool isMust,
    // 是否赠品
    @JsonKey(name: 'is_gift') required bool isGift,
    // 是否取消
    @JsonKey(name: 'is_cancel') required bool isCancel,
    // 是否自助餐产品
    @JsonKey(name: 'is_buffet') required bool isBuffet,
    // 是否显示厨房
    @JsonKey(name: 'is_show_kitchen') @Default(0) int isShowKitchen,
    // 自助餐相关信息
    @JsonKey(name: 'about_buffet') required ResponseCartAboutBuffet aboutBuffet,
  }) = _ResponseCartProduct;

  factory ResponseCartProduct.fromJson(Map<String, dynamic> json) => _$ResponseCartProductFromJson(json);
}
