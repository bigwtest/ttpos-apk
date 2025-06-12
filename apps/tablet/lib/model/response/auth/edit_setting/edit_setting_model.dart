import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_setting_model.freezed.dart';
part 'edit_setting_model.g.dart';

@freezed
class EditSettingModel with _$EditSettingModel {
  const factory EditSettingModel({
    @JsonKey(name: "desk_uuid") required int deskUuid,
    @JsonKey(name: "remark") String? remark,
  }) = _EditSettingModel;

  factory EditSettingModel.fromJson(Map<String, dynamic> json) => _$EditSettingModelFromJson(json);
}
