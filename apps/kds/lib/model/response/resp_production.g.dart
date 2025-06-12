// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_production.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseProductionListImpl _$$ResponseProductionListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseProductionListImpl(
      finishedList: FinishedListClass.fromJson(
          json['finished_list'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => RespProductionGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      sendKitchenNum: (json['send_kitchen_num'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseProductionListImplToJson(
        _$ResponseProductionListImpl instance) =>
    <String, dynamic>{
      'finished_list': instance.finishedList,
      'list': instance.list,
      'meta': instance.meta,
      'send_kitchen_num': instance.sendKitchenNum,
    };

_$FinishedListClassImpl _$$FinishedListClassImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishedListClassImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespProductionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FinishedListClassImplToJson(
        _$FinishedListClassImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespProductionItemImpl _$$RespProductionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RespProductionItemImpl(
      createTime: (json['create_time'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      productAttributeNames: LocaleName.fromJson(
          json['product_attribute_names'] as Map<String, dynamic>),
      serialNo: json['serial_no'] as String,
      uuid: (json['uuid'] as num).toInt(),
      remark: json['remark'] as String,
      diningMethod: (json['dining_method'] as num).toInt(),
    );

Map<String, dynamic> _$$RespProductionItemImplToJson(
        _$RespProductionItemImpl instance) =>
    <String, dynamic>{
      'create_time': instance.createTime,
      'locale_name': instance.localeName,
      'num': instance.num,
      'product_attribute_names': instance.productAttributeNames,
      'serial_no': instance.serialNo,
      'uuid': instance.uuid,
      'remark': instance.remark,
      'dining_method': instance.diningMethod,
    };

_$RespProductionGroupImpl _$$RespProductionGroupImplFromJson(
        Map<String, dynamic> json) =>
    _$RespProductionGroupImpl(
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      productList: FinishedListClass.fromJson(
          json['product_list'] as Map<String, dynamic>),
      diningMethod: (json['dining_method'] as num).toInt(),
    );

Map<String, dynamic> _$$RespProductionGroupImplToJson(
        _$RespProductionGroupImpl instance) =>
    <String, dynamic>{
      'locale_name': instance.localeName,
      'product_list': instance.productList,
      'dining_method': instance.diningMethod,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'total': instance.total,
    };
