import 'package:freezed_annotation/freezed_annotation.dart';

part 'unprocessed_call.freezed.dart';
part 'unprocessed_call.g.dart';

// 未处理呼叫数量
@freezed
class ResponseUnprocessedCall with _$ResponseUnprocessedCall {
  const factory ResponseUnprocessedCall({
    // 异常打印数量
    @JsonKey(name: "abnormal_print_count") required int abnormalPrintCount,
    // 未处理呼叫数量
    @JsonKey(name: "unprocessed_call_count") required int unprocessedCallCount,

    /// NOTE: 更新时间
    @JsonKey(name: "update_time") @Default(0) int? updateTime,

    /// NOTE: 未处理 H5 订单数量
    @JsonKey(name: "unprocessed_h5_order_count") @Default(0) int? unprocessedH5OrderCount,
  }) = _ResponseUnprocessedCall;

  factory ResponseUnprocessedCall.fromJson(Map<String, dynamic> json) => _$ResponseUnprocessedCallFromJson(json);
}
