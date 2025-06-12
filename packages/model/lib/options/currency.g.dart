// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      isOpen: json['is_open'] as String,
      printUnit: json['print_unit'] as String,
      unit: json['unit'] as String,
      unitPosition: json['unit_position'] as String,
      unitRate: json['unit_rate'] as String,
      viceUnit: json['vice_unit'] as String,
      viceUnitPosition: json['vice_unit_position'] as String,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'is_open': instance.isOpen,
      'print_unit': instance.printUnit,
      'unit': instance.unit,
      'unit_position': instance.unitPosition,
      'unit_rate': instance.unitRate,
      'vice_unit': instance.viceUnit,
      'vice_unit_position': instance.viceUnitPosition,
    };
