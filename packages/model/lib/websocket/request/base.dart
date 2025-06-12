import 'package:freezed_annotation/freezed_annotation.dart';

part 'base.freezed.dart';
part 'base.g.dart';

@unfreezed
class WebsocketSendMessage with _$WebsocketSendMessage {
  factory WebsocketSendMessage({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'msg_id') int? msgId,

    /// 2.1 新增字段
    @JsonKey(name: 'data') dynamic data,
  }) = _WebsocketSendMessage;

  factory WebsocketSendMessage.fromJson(Map<String, dynamic> json) => _$WebsocketSendMessageFromJson(json);
}

extension WebsocketSendMessageExtension on WebsocketSendMessage {
  String toJsonString() {
    final Map<String, dynamic> json = {
      'type': type,
      if (msgId != null) 'msg_id': msgId,
      if (data != null) 'data': data.toString(),
    };
    return json.toString();
  }
}
