import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'delay_list.freezed.dart';
part 'delay_list.g.dart';

@freezed
class BuffetDelayList with _$BuffetDelayList {
  factory BuffetDelayList({
    @JsonKey(name: "list") required List<BuffetDelay> list,
  }) = _BuffetDelayList;

  factory BuffetDelayList.fromJson(Map<String, dynamic> json) => _$BuffetDelayListFromJson(json);
}

@freezed
class BuffetDelay with _$BuffetDelay {
  factory BuffetDelay({
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "price") required SafetyNumber price,
  }) = _BuffetDelay;

  factory BuffetDelay.fromJson(Map<String, dynamic> json) => _$BuffetDelayFromJson(json);
}
