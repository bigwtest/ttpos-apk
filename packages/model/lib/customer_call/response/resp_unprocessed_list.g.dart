// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_unprocessed_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUnprocessedListImpl _$$ResponseUnprocessedListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseUnprocessedListImpl(
      abnormalPrint: AbnormalPrint.fromJson(
          json['abnormal_print'] as Map<String, dynamic>),
      callList: Call.fromJson(json['call'] as Map<String, dynamic>),
      h5Order: H5Order.fromJson(json['h5_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseUnprocessedListImplToJson(
        _$ResponseUnprocessedListImpl instance) =>
    <String, dynamic>{
      'abnormal_print': instance.abnormalPrint,
      'call': instance.callList,
      'h5_order': instance.h5Order,
    };

_$AbnormalPrintImpl _$$AbnormalPrintImplFromJson(Map<String, dynamic> json) =>
    _$AbnormalPrintImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespAbnormalPrintItemForNotice.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AbnormalPrintImplToJson(_$AbnormalPrintImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespAbnormalPrintItemForNoticeImpl
    _$$RespAbnormalPrintItemForNoticeImplFromJson(Map<String, dynamic> json) =>
        _$RespAbnormalPrintItemForNoticeImpl(
          deskNo: json['desk_no'] as String,
          reason: json['reason'] as String,
          uuid: (json['uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RespAbnormalPrintItemForNoticeImplToJson(
        _$RespAbnormalPrintItemForNoticeImpl instance) =>
    <String, dynamic>{
      'desk_no': instance.deskNo,
      'reason': instance.reason,
      'uuid': instance.uuid,
    };

_$CallImpl _$$CallImplFromJson(Map<String, dynamic> json) => _$CallImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespUnprocessedCallItemForNotice.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CallImplToJson(_$CallImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespUnprocessedCallItemForNoticeImpl
    _$$RespUnprocessedCallItemForNoticeImplFromJson(
            Map<String, dynamic> json) =>
        _$RespUnprocessedCallItemForNoticeImpl(
          callText: json['call_text'] as String,
          callType: (json['call_type'] as num).toInt(),
          deskNo: json['desk_no'] as String,
          uuid: (json['uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RespUnprocessedCallItemForNoticeImplToJson(
        _$RespUnprocessedCallItemForNoticeImpl instance) =>
    <String, dynamic>{
      'call_text': instance.callText,
      'call_type': instance.callType,
      'desk_no': instance.deskNo,
      'uuid': instance.uuid,
    };

_$H5OrderImpl _$$H5OrderImplFromJson(Map<String, dynamic> json) =>
    _$H5OrderImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) =>
              RespUnprocessedH5OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$H5OrderImplToJson(_$H5OrderImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespUnprocessedH5OrderItemImpl _$$RespUnprocessedH5OrderItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RespUnprocessedH5OrderItemImpl(
      deskNo: json['desk_no'] as String,
      uuid: (json['uuid'] as num).toInt(),
      isAutoAccept: json['is_auto_accept'] as bool,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RespUnprocessedH5OrderItemImplToJson(
        _$RespUnprocessedH5OrderItemImpl instance) =>
    <String, dynamic>{
      'desk_no': instance.deskNo,
      'uuid': instance.uuid,
      'is_auto_accept': instance.isAutoAccept,
      'status': instance.status,
    };
