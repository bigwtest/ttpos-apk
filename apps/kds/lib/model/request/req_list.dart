import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_list.freezed.dart';
part 'req_list.g.dart';

@freezed
class ReqList with _$ReqList {
  factory ReqList({
    @JsonKey(name: "category_uuid") int? categoryUuid,
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
  }) = _ReqList;

  factory ReqList.fromJson(Map<String, dynamic> json) => _$ReqListFromJson(json);
}
