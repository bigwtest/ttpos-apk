// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomeImpl _$$IncomeImplFromJson(Map<String, dynamic> json) => _$IncomeImpl(
      payTypeName: json['pay_type_name'] as String?,
      price: const SafetyNumberConverter().fromJson(json['price']),
    );

Map<String, dynamic> _$$IncomeImplToJson(_$IncomeImpl instance) =>
    <String, dynamic>{
      'pay_type_name': instance.payTypeName,
      'price': const SafetyNumberConverter().toJson(instance.price),
    };
