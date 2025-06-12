import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_unprocessed_list.freezed.dart';
part 'resp_unprocessed_list.g.dart';

@freezed
class ResponseUnprocessedList with _$ResponseUnprocessedList {
  factory ResponseUnprocessedList({
    @JsonKey(name: "abnormal_print") required AbnormalPrint abnormalPrint,
    @JsonKey(name: "call") required Call callList,
    @JsonKey(name: "h5_order") required H5Order h5Order,
  }) = _ResponseUnprocessedList;

  factory ResponseUnprocessedList.fromJson(Map<String, dynamic> json) => _$ResponseUnprocessedListFromJson(json);
}

///未处理的异常打印，最新十条
///
///resp.UnprocessedAbnormalPrint
@freezed
class AbnormalPrint with _$AbnormalPrint {
  const factory AbnormalPrint({
    @JsonKey(name: "list") required List<RespAbnormalPrintItemForNotice> list,
  }) = _AbnormalPrint;

  factory AbnormalPrint.fromJson(Map<String, dynamic> json) => _$AbnormalPrintFromJson(json);
}

///resp.AbnormalPrintItemForNotice
@freezed
class RespAbnormalPrintItemForNotice with _$RespAbnormalPrintItemForNotice {
  const factory RespAbnormalPrintItemForNotice({
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "reason") required String reason,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespAbnormalPrintItemForNotice;

  factory RespAbnormalPrintItemForNotice.fromJson(Map<String, dynamic> json) =>
      _$RespAbnormalPrintItemForNoticeFromJson(json);
}

///未处理呼叫列表，最新十条
///
///resp.UnprocessedCall
@freezed
class Call with _$Call {
  const factory Call({
    @JsonKey(name: "list") required List<RespUnprocessedCallItemForNotice> list,
  }) = _Call;

  factory Call.fromJson(Map<String, dynamic> json) => _$CallFromJson(json);
}

///resp.UnprocessedCallItemForNotice
@freezed
class RespUnprocessedCallItemForNotice with _$RespUnprocessedCallItemForNotice {
  const factory RespUnprocessedCallItemForNotice({
    @JsonKey(name: "call_text") required String callText,
    @JsonKey(name: "call_type") required int callType,
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespUnprocessedCallItemForNotice;

  factory RespUnprocessedCallItemForNotice.fromJson(Map<String, dynamic> json) =>
      _$RespUnprocessedCallItemForNoticeFromJson(json);
}

///未处理的H5订单，最新十条
///
///resp.UnprocessedH5Order
@freezed
class H5Order with _$H5Order {
  const factory H5Order({
    @JsonKey(name: "list") required List<RespUnprocessedH5OrderItem> list,
  }) = _H5Order;

  factory H5Order.fromJson(Map<String, dynamic> json) => _$H5OrderFromJson(json);
}

///resp.UnprocessedH5OrderItem
@freezed
class RespUnprocessedH5OrderItem with _$RespUnprocessedH5OrderItem {
  const factory RespUnprocessedH5OrderItem({
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "is_auto_accept") required bool isAutoAccept,
    @JsonKey(name: "status") required int status,
  }) = _RespUnprocessedH5OrderItem;

  factory RespUnprocessedH5OrderItem.fromJson(Map<String, dynamic> json) => _$RespUnprocessedH5OrderItemFromJson(json);
}
