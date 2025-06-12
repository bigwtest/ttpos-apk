// To parse this JSON data, do
//
//     final request = requestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_system_setting.freezed.dart';
part 'edit_system_setting.g.dart';

EditSystemSetting editSystemSettingFromJson(String str) => EditSystemSetting.fromJson(json.decode(str));

String editSystemSettingToJson(EditSystemSetting data) => json.encode(data.toJson());

///req.UpdateSystemSetting
@freezed
class EditSystemSetting with _$EditSystemSetting {
  const factory EditSystemSetting({
    @JsonKey(name: "device_remark") String? deviceRemark,
    @JsonKey(name: "dish_card_style") required String dishCardStyle,
    @JsonKey(name: "is_show_assistant_sold_out") required int isShowAssistantSoldOut,
    @JsonKey(name: "is_show_scan_sold_out") required int isShowScanSoldOut,
    @JsonKey(name: "is_show_sold_out") required int isShowSoldOut,
    @JsonKey(name: "menu_show_sold_out") required int menuShowSoldOut,
  }) = _EditSystemSetting;

  factory EditSystemSetting.fromJson(Map<String, dynamic> json) => _$EditSystemSettingFromJson(json);
}

///菜品卡片样式 0-无图模式 1-图片模式
///
///电子菜单是否显示售罄商品 0-关闭（不显示售罄） 1-开启（显示售罄）
// enum DishCardStyle {
//   @JsonValue("0")
//   THE_0,
//   @JsonValue("1")
//   THE_1
// }

// final dishCardStyleValues = EnumValues({"0": DishCardStyle.THE_0, "1": DishCardStyle.THE_1});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
