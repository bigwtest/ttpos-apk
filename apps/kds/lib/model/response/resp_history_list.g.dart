// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_history_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseHistoryListImpl _$$ResponseHistoryListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseHistoryListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespProductionGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseHistoryListImplToJson(
        _$ResponseHistoryListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespProductionGroupImpl _$$RespProductionGroupImplFromJson(
        Map<String, dynamic> json) =>
    _$RespProductionGroupImpl(
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      productList: ProductListClass.fromJson(
          json['product_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RespProductionGroupImplToJson(
        _$RespProductionGroupImpl instance) =>
    <String, dynamic>{
      'locale_name': instance.localeName,
      'product_list': instance.productList,
    };

_$ProductListClassImpl _$$ProductListClassImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListClassImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespProductionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductListClassImplToJson(
        _$ProductListClassImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespProductionItemImpl _$$RespProductionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RespProductionItemImpl(
      createTime: (json['create_time'] as num).toInt(),
      finishedTime: (json['finished_time'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      productAttributeNames: LocaleName.fromJson(
          json['product_attribute_names'] as Map<String, dynamic>),
      serialNo: json['serial_no'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespProductionItemImplToJson(
        _$RespProductionItemImpl instance) =>
    <String, dynamic>{
      'create_time': instance.createTime,
      'finished_time': instance.finishedTime,
      'locale_name': instance.localeName,
      'num': instance.num,
      'product_attribute_names': instance.productAttributeNames,
      'serial_no': instance.serialNo,
      'uuid': instance.uuid,
    };
