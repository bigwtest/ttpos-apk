// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      cancelNum: (json['cancel_num'] as num).toInt(),
      completeNum: (json['complete_num'] as num).toInt(),
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      unpaidNum: (json['unpaid_num'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'cancel_num': instance.cancelNum,
      'complete_num': instance.completeNum,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'total': instance.total,
      'unpaid_num': instance.unpaidNum,
    };
