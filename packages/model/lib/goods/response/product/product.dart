import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/attributes/attribute_groups.dart';
import 'package:ttpos_model/goods/response/flavors/flavors.dart';
import 'package:ttpos_model/goods/response/sauces/sauces.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'product.freezed.dart';
part 'product.g.dart';

// 商品列表
@unfreezed
class GoodsProduct with _$GoodsProduct {
  factory GoodsProduct({
    // 商品属性组
    @JsonKey(name: "attribute_groups") required BaseList<GoodsAttributeGroups> attributeGroups,
    // 商品规格
    @JsonKey(name: "flavors") required BaseList<GoodsFlavors> flavors,
    // 商品图片
    @JsonKey(name: "image") required String image,
    // 商品限购数量
    @JsonKey(name: "limit_num") required int limitNum,
    // 商品名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 商品价格
    @JsonKey(name: "price") required SafetyNumber price,
    // 商品小料
    @JsonKey(name: "sauces") required GoodsSaucesList sauces,
    // 商品单位
    @JsonKey(name: "unit") required LocaleName unit,
    // 商品UUID
    @JsonKey(name: "uuid") required int uuid,
    // 分类ID
    @JsonKey(name: "category_uuid") int? categoryUuid,
    // 一级分类
    @JsonKey(name: "first_category_uuid") int? firstCategoryUuid,
    // 特色分类ID
    @JsonKey(name: "special_category_uuid") int? specialCategoryUuid,
    // 卖点
    @JsonKey(name: "describe") String? describe,
    // 是不是自助餐商品
    @JsonKey(name: "is_buffet") bool? isBuffet,
  }) = _GoodsProduct;

  factory GoodsProduct.fromJson(Map<String, dynamic> json) => _$GoodsProductFromJson(json);
}

// 规格售罄列席
enum FlavorsSoldOutType {
  soldOut, // 已售罄
  partiallySoldOut, // 部分售罄
}

extension GoodsProductExtension on GoodsProduct {
  //  估清页面计算、部分售罄、全部售罄
  FlavorsSoldOutType? get soldOutType {
    try {
      // 获取售罄长度
      final soldOutLength = flavors.list.where((item) => item.stockNum == 0).length;
      if (soldOutLength == flavors.list.length) {
        // 全部售罄
        return FlavorsSoldOutType.soldOut;
      } else if (soldOutLength > 0) {
        // 部分售罄
        return FlavorsSoldOutType.partiallySoldOut;
      }
    } catch (error, stackTrace) {
      debugPrint('GoodsProductExtension=>soldOutType, this=>$this, error:$error');
      debugPrintStack(stackTrace: stackTrace);
    }
    return null;
  }

  // 是否已售罄
  bool get isSoldOut {
    try {
      return soldOutType == FlavorsSoldOutType.soldOut;
    } catch (error, stackTrace) {
      debugPrint('GoodsProductExtension=>isSoldOut, this=>$this, error:$error');
      debugPrintStack(stackTrace: stackTrace);
    }
    return false;
  }
}
