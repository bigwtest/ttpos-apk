import 'package:freezed_annotation/freezed_annotation.dart';

part 'base.freezed.dart';
part 'base.g.dart';

@freezed
abstract class WebsocketReceiveMessage with _$WebsocketReceiveMessage {
  const factory WebsocketReceiveMessage({
    @JsonKey(name: 'event') required String event,
    @JsonKey(name: 'state') required int state,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'data') Map<String, dynamic>? data,
    @JsonKey(name: 'msg_id') int? msgId,
  }) = _WebsocketReceiveMessage;

  factory WebsocketReceiveMessage.fromJson(Map<String, dynamic> json) => _$WebsocketReceiveMessageFromJson(json);
}

extension WebsocketReceiveMessageExtension on WebsocketReceiveMessage {
  /// 是否心跳
  bool get isHeartbeat => event == 'heartbeat';

  /// 是否成功
  bool get isSuccess => state == 200;

  /// 是否连接
  bool get isConnected => event == 'connect' && isSuccess;

  /// 是否回执
  bool get isReply => event == 'reply' && isSuccess;

  /// 是否心跳回执
  bool get isHeartbeatReply => event == 'reply_heartbeat' && isSuccess;

  /// 更新时间
  int get updateTime => data?['update_time'] as int? ?? 0;

  /// 消息类型
  // 订单
  bool get isEventUpdateOrder => event == 'update_order';
  // 客户呼叫
  bool get isEventCustomerCall => event == 'customer_call';
  // 打印数据
  bool get isEventPrintData => event == 'print_data';
  // H5 订单
  bool get isEventH5Order => event == 'h5_order';
  // 配置
  bool get isEventConfig => event == 'update_config';
  // 权限
  bool get isEventPermission => event == 'update_permission';
  // 用户
  bool get isEventUser => event == 'update_user';
  // 商品
  bool get isEventProduct => event == 'update_product';
  // 商品分类
  bool get isEventProductCategory => event == 'update_category';
  // 自助餐
  bool get isEventBuffet => event == 'update_buffet';
  // 桌台
  bool get isEventDesk => event == 'update_desk';
  // 桌台区域与类型
  bool get isEventDeskCategory => event == 'update_desk_type';
  // 厨显独占
  bool get isEventKitchen => event == 'update_kitchen';
  // 选中打印机
  bool get isEventSelectedPrinter => event == 'update_selected_printer';
}
