import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "time_zone") String? timeZone,
    @JsonKey(name: "logo") String? logo,
    @JsonKey(name: "expire_time") int? expiredAt,
    @JsonKey(name: "is_open_member") SafetyNumber? isModuleAvailableMember,
    @JsonKey(name: "is_open_buffet") SafetyNumber? isModuleAvailableBuffet,
    @JsonKey(name: "is_open_h5_order") SafetyNumber? isModuleAvailableH5Order,
    @JsonKey(name: "is_open_old_order") SafetyNumber? isModuleAvailableOldOrder,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  static Company empty() => Company(
        name: '',
        uuid: 0,
        timeZone: 'Asia/Shanghai',
        logo: null,
      );
}
