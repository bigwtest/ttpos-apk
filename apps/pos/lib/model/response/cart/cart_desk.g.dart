// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartDeskImpl _$$ResponseCartDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCartDeskImpl(
      deskNo: json['desk_no'] as String,
      mealNum: (json['meal_num'] as num).toInt(),
      startTime: (json['start_time'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseCartDeskImplToJson(
        _$ResponseCartDeskImpl instance) =>
    <String, dynamic>{
      'desk_no': instance.deskNo,
      'meal_num': instance.mealNum,
      'start_time': instance.startTime,
      'duration': instance.duration,
      'uuid': instance.uuid,
    };
