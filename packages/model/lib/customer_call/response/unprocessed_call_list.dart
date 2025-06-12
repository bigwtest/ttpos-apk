import 'package:freezed_annotation/freezed_annotation.dart';

part 'unprocessed_call_list.freezed.dart';
part 'unprocessed_call_list.g.dart';

// 商品属性值
@freezed
class ResponseUnprocessedCallList with _$ResponseUnprocessedCallList {
  const factory ResponseUnprocessedCallList({
    // 呼叫类型:呼叫类型(1服务员,2结账)
    @JsonKey(name: "call_type") required int callType,
    // 桌台编号
    @JsonKey(name: "desk_no") required String deskNo,
    // 桌台Uuid
    @JsonKey(name: "desk_uuid") required int deskUuid,
    // 是否已发送：1-是；0-否
    @JsonKey(name: "is_send") required int isSend,
    // 呼叫Uuid
    @JsonKey(name: "uuid") required int uuid,
  }) = _ResponseUnprocessedCallList;

  factory ResponseUnprocessedCallList.fromJson(Map<String, dynamic> json) =>
      _$ResponseUnprocessedCallListFromJson(json);
}
