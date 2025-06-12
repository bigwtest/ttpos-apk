// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merge_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrderMergeDeskImpl _$$ResponseOrderMergeDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderMergeDeskImpl(
      isResetDiscount: json['is_reset_discount'] as bool?,
    );

Map<String, dynamic> _$$ResponseOrderMergeDeskImplToJson(
        _$ResponseOrderMergeDeskImpl instance) =>
    <String, dynamic>{
      'is_reset_discount': instance.isResetDiscount,
    };

_$ResponseOrderMergeDeskCheckImpl _$$ResponseOrderMergeDeskCheckImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderMergeDeskCheckImpl(
      deskNo: json['desk_no'] as String,
    );

Map<String, dynamic> _$$ResponseOrderMergeDeskCheckImplToJson(
        _$ResponseOrderMergeDeskCheckImpl instance) =>
    <String, dynamic>{
      'desk_no': instance.deskNo,
    };
