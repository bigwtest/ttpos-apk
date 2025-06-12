import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_setting.freezed.dart';
part 'edit_setting.g.dart';

@freezed
class EditSettingModel with _$EditSettingModel {
  const factory EditSettingModel({
    @JsonKey(name: "remark") String? remark,
  }) = _EditSettingModel;

  factory EditSettingModel.fromJson(Map<String, dynamic> json) => _$EditSettingModelFromJson(json);
}
