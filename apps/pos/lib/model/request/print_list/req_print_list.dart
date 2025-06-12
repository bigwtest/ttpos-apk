import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_print_list.freezed.dart';
part 'req_print_list.g.dart';

@freezed
class ReqPrintList with _$ReqPrintList {
  factory ReqPrintList({
    @JsonKey(name: "data_type") required int dataType,
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "printer_uuid") required int printerUuid,
    @JsonKey(name: "query_end_time") required int queryEndTime,
    @JsonKey(name: "query_start_time") required int queryStartTime,
    @JsonKey(name: "status") required int status,
  }) = _ReqPrintList;

  factory ReqPrintList.fromJson(Map<String, dynamic> json) => _$ReqPrintListFromJson(json);
}
