import 'package:freezed_annotation/freezed_annotation.dart';

part 'merge_desk.freezed.dart';
part 'merge_desk.g.dart';

@freezed
class RequestMergeDesk with _$RequestMergeDesk {
  factory RequestMergeDesk({
    // 桌台UUID列表
    @JsonKey(name: "desk_uuids") required List<int> deskUuids,
    // 销售账单UUID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
  }) = _RequestMergeDesk;

  factory RequestMergeDesk.fromJson(Map<String, dynamic> json) => _$RequestMergeDeskFromJson(json);
}
