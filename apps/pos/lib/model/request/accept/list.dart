import 'package:freezed_annotation/freezed_annotation.dart';

part 'list.freezed.dart';
part 'list.g.dart';

// RequestAcceptList 接单列表请求
@unfreezed
class RequestAcceptList with _$RequestAcceptList {
  factory RequestAcceptList({
    @JsonKey(name: "desk_region_uuid") required int deskRegionUuid,
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "status") required int status,
  }) = _RequestAcceptList;

  factory RequestAcceptList.fromJson(Map<String, dynamic> json) => _$RequestAcceptListFromJson(json);
}
