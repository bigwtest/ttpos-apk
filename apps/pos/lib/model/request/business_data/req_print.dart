// To parse this JSON data, do
//
//     final apifoxModel = apifoxModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_print.freezed.dart';
part 'req_print.g.dart';

///req.BusinessDataPrinterReq
@unfreezed
class ReqBusinessDataPrint with _$ReqBusinessDataPrint {
  factory ReqBusinessDataPrint({
    @JsonKey(name: "category_type") int? categoryType,
    @JsonKey(name: "query_end_time") int? queryEndTime,
    @JsonKey(name: "query_start_time") int? queryStartTime,
    @JsonKey(name: "statistics_type") int? statisticsType,
    @JsonKey(name: "time_type") int? timeType,
  }) = _ReqBusinessDataPrint;

  factory ReqBusinessDataPrint.fromJson(Map<String, dynamic> json) => _$ReqBusinessDataPrintFromJson(json);
}
