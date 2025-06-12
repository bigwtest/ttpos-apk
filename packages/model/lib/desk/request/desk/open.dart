import 'package:freezed_annotation/freezed_annotation.dart';

part 'open.freezed.dart';
part 'open.g.dart';

@unfreezed
class RequestDeskOpen with _$RequestDeskOpen {
  factory RequestDeskOpen({
    @JsonKey(name: "buffet_customer_types") required List<RequestDeskBuffetCustomerType> buffetCustomerTypes,
    @JsonKey(name: "buffet_uuids") required List<int> buffetUuids,
    @JsonKey(name: "desk_uuid") required int deskUuid,
    @JsonKey(name: "is_buffet") required bool isBuffet,
    @JsonKey(name: "meal_num") required int mealNum,
    @JsonKey(name: "remark") required String remark,
  }) = _RequestDeskOpen;

  factory RequestDeskOpen.fromJson(Map<String, dynamic> json) => _$RequestDeskOpenFromJson(json);
}

@unfreezed
class RequestDeskBuffetCustomerType with _$RequestDeskBuffetCustomerType {
  factory RequestDeskBuffetCustomerType({
    @JsonKey(name: "meal_num") required int mealNum,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RequestDeskBuffetCustomerType;

  factory RequestDeskBuffetCustomerType.fromJson(Map<String, dynamic> json) =>
      _$RequestDeskBuffetCustomerTypeFromJson(json);
}
