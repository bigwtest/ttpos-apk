// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderMustPlanImpl _$$OrderMustPlanImplFromJson(Map<String, dynamic> json) =>
    _$OrderMustPlanImpl(
      canChangeNum: json['can_change_num'] as bool,
      mustRule: (json['must_rule'] as num).toInt(),
      mustType: (json['must_type'] as num).toInt(),
      name: json['name'] as String,
      needNum: (json['need_num'] as num).toInt(),
      products: BaseList<MustPlanProductWrapper>.fromJson(
          json['products'] as Map<String, dynamic>,
          (value) =>
              MustPlanProductWrapper.fromJson(value as Map<String, dynamic>)),
      selectedNum: (json['selected_num'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderMustPlanImplToJson(_$OrderMustPlanImpl instance) =>
    <String, dynamic>{
      'can_change_num': instance.canChangeNum,
      'must_rule': instance.mustRule,
      'must_type': instance.mustType,
      'name': instance.name,
      'need_num': instance.needNum,
      'products': instance.products,
      'selected_num': instance.selectedNum,
    };
