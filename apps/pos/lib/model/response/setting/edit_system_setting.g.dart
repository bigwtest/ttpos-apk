// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_system_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditSystemSettingImpl _$$EditSystemSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSystemSettingImpl(
      deviceRemark: json['device_remark'] as String?,
      dishCardStyle: json['dish_card_style'] as String,
      isShowAssistantSoldOut:
          (json['is_show_assistant_sold_out'] as num).toInt(),
      isShowScanSoldOut: (json['is_show_scan_sold_out'] as num).toInt(),
      isShowSoldOut: (json['is_show_sold_out'] as num).toInt(),
      menuShowSoldOut: (json['menu_show_sold_out'] as num).toInt(),
    );

Map<String, dynamic> _$$EditSystemSettingImplToJson(
        _$EditSystemSettingImpl instance) =>
    <String, dynamic>{
      'device_remark': instance.deviceRemark,
      'dish_card_style': instance.dishCardStyle,
      'is_show_assistant_sold_out': instance.isShowAssistantSoldOut,
      'is_show_scan_sold_out': instance.isShowScanSoldOut,
      'is_show_sold_out': instance.isShowSoldOut,
      'menu_show_sold_out': instance.menuShowSoldOut,
    };
