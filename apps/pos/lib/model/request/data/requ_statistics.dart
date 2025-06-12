import 'package:freezed_annotation/freezed_annotation.dart';

part 'requ_statistics.freezed.dart';
part 'requ_statistics.g.dart';

@freezed
class RequStatistics with _$RequStatistics {
  factory RequStatistics({
    @JsonKey(name: "category_type") required int categoryType,
    @JsonKey(name: "query_end_time") required int queryEndTime,
    @JsonKey(name: "query_start_time") required int queryStartTime,
    @JsonKey(name: "time_type") required int timeType,
  }) = _RequStatistics;

  factory RequStatistics.fromJson(Map<String, dynamic> json) => _$RequStatisticsFromJson(json);
}
