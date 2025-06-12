// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_goods_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MustGoodsItemImpl _$$MustGoodsItemImplFromJson(Map<String, dynamic> json) =>
    _$MustGoodsItemImpl(
      uuid: (json['uuid'] as num).toInt(),
      canChangeNum: json['can_change_num'] as bool,
      mealNum: (json['meal_num'] as num).toInt(),
      mustRule: (json['must_rule'] as num).toInt(),
      mustType: (json['must_type'] as num).toInt(),
      name: json['name'] as String,
      needNum: (json['need_num'] as num).toInt(),
      products: BaseList<MustProducts>.fromJson(
          json['products'] as Map<String, dynamic>,
          (value) => MustProducts.fromJson(value as Map<String, dynamic>)),
      selectedNum: (json['selected_num'] as num).toInt(),
    );

Map<String, dynamic> _$$MustGoodsItemImplToJson(_$MustGoodsItemImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'can_change_num': instance.canChangeNum,
      'meal_num': instance.mealNum,
      'must_rule': instance.mustRule,
      'must_type': instance.mustType,
      'name': instance.name,
      'need_num': instance.needNum,
      'products': instance.products,
      'selected_num': instance.selectedNum,
    };

_$MustProductsImpl _$$MustProductsImplFromJson(Map<String, dynamic> json) =>
    _$MustProductsImpl(
      isAutoAdd: json['is_auto_add'] as bool?,
      mustNum: (json['must_num'] as num).toInt(),
      needNum: (json['need_num'] as num).toInt(),
      product: GoodsProduct.fromJson(json['product'] as Map<String, dynamic>),
      selectedNum: (json['selected_num'] as num).toInt(),
    );

Map<String, dynamic> _$$MustProductsImplToJson(_$MustProductsImpl instance) =>
    <String, dynamic>{
      'is_auto_add': instance.isAutoAdd,
      'must_num': instance.mustNum,
      'need_num': instance.needNum,
      'product': instance.product,
      'selected_num': instance.selectedNum,
    };
