import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/error_dialog_manager.dart';
import 'package:ttpos_model/print_config/printer.dart';
import 'package:ttpos_model/websocket/request/base.dart';
import 'package:ttpos_model/websocket/response/base.dart';
import 'package:web_socket_client/web_socket_client.dart';

export 'package:ttpos_model/websocket/response/base.dart';

enum WebSocketClient {
  pos('cashier'),
  assistant('assistant'),
  tablet('tablet'),
  mobile('h5'),
  kds('kitchen');

  const WebSocketClient(this.value);

  final String value;
}

enum WebSocketConnectionState {
  init,
  connecting,
  connected,
  disconnecting,
  disconnected,
  reconnecting,
  reconnected,
}

enum WebSocketSendType {
  heartbeat('heartbeat'),
  reply('reply'),
  usbPrintReport('usb_print_report');

  const WebSocketSendType(this.value);

  final String value;
}

class WebSocketService extends GetxService {
  static WebSocketService get to => Get.find();

  WebSocket? _channel;

  /// 是否连接
  final Rx<WebSocketConnectionState> _connectionState = WebSocketConnectionState.init.obs;
  WebSocketConnectionState get connectionState => _connectionState.value;

  /// 连接
  final RxString _connectUrl = ''.obs;
  String get connectUrl => _connectUrl.value;

  /// 消息流
  final _messageStream = StreamController<dynamic>.broadcast(
    sync: true,
    onListen: () => debugPrint('WebSocketService, _messageStream onListen'),
    onCancel: () => debugPrint('WebSocketService, _messageStream onCancel'),
  );
  Stream<WebsocketReceiveMessage> get messageStream => _messageStream.stream.asBroadcastStream().handleError(
        (error, stackTrace) {
          debugPrint('WebSocketService, _messageStream error: $error');
          debugPrintStack(stackTrace: stackTrace);
        },
      ).asyncMap(
        (event) async {
          /// NOTE: 延迟50ms，避免消息处理过快
          await Future.delayed(const Duration(milliseconds: 50));
          return event;
        },
      );

  final RxBool _isConnecting = false.obs;
  bool get isConnecting => _isConnecting.value;

  /// 心跳
  Timer? _heartbeatTimer;
  static const _heartbeatInterval = 30;

  /// FIXME: 定时重新初始化 @发哥
  Future<void> init({
    String? url,
    required String token,
    required WebSocketClient client,
    bool showToast = true,
    bool showErrorToast = false,
  }) async {
    try {
      if (_channel != null) {
        await dispose();
      }

      if (isConnecting) {
        debugPrint('WebSocketService, isConnecting');
        return;
      }

      url ??= const String.fromEnvironment('WS_BASE_URL');

      if (url.isEmpty || !url.startsWith('ws')) {
        await ErrorDialogManager().showErrorDialog(
          titleKey: 'WebSocket地址未配置',
          messageKey: '请在环境变量中配置 WS_BASE_URL',
        );
        return;
      }

      _channel = WebSocket(
        Uri.parse('$url?token=$token&client=${client.value}'),
        timeout: const Duration(seconds: 2),
        backoff: const ConstantBackoff(Duration(seconds: 3)),
        binaryType: kIsWeb ? 'arraybuffer' : null,
      );

      _channel?.connection.listen(
        (state) {
          debugPrint('WebSocketService, connection state: $state');

          if (state is Connected) {
            _connectionState.value = WebSocketConnectionState.connected;
          } else if (state is Disconnected) {
            _connectionState.value = WebSocketConnectionState.disconnected;
          } else if (state is Connecting) {
            _connectionState.value = WebSocketConnectionState.connecting;
          } else if (state is Disconnecting) {
            _connectionState.value = WebSocketConnectionState.disconnecting;
          } else if (state is Reconnecting) {
            _connectionState.value = WebSocketConnectionState.reconnecting;
          } else if (state is Reconnected) {
            _connectionState.value = WebSocketConnectionState.reconnected;
          } else if (state is Disconnected) {
            _connectionState.value = WebSocketConnectionState.disconnected;
          }
        },
        onError: (error, stackTrace) {
          debugPrint('WebSocketService, connection error: $error');
          debugPrintStack(stackTrace: stackTrace);
        },
        onDone: () {
          debugPrint('WebSocketService, connection done');
        },
      );

      await _channel?.connection.firstWhere((state) => state is Connected);

      _connectUrl.value = '$url?token=***&client=${client.value}';

      _channel?.messages.listen(
        (message) {
          debugPrint('WebSocketService, received message: $message');
          _handleReceiveMessage(message, showToast: showToast);
        },
      );
    } catch (error, stackTrace) {
      debugPrint('WebSocketService, error: $error');
      debugPrintStack(stackTrace: stackTrace);

      await dispose();
      if (showErrorToast) {
        ErrorDialogManager.showToast(error.toString());
      }
    }
  }

  void _handleReceiveMessage(dynamic message, {bool showToast = true}) {
    try {
      if (message == null) return;

      if (message is String) {
        WebsocketReceiveMessage dataMap = WebsocketReceiveMessage.fromJson(jsonDecode(message));

        if (!dataMap.isSuccess) return;

        if (dataMap.isConnected) {
          if (showToast) {
            ErrorDialogManager.showToast(
              'WebSocketService 已连接 $connectUrl',
              duration: const Duration(seconds: 2),
            );
          }
          _startHeartbeatTimer();
          return;
        }

        if (dataMap.isHeartbeatReply) {
          debugPrint('WebSocketService, _handleReceiveMessage isHeartbeatReply');
          return;
        }

        if (dataMap.isReply) {
          debugPrint('WebSocketService, _handleReceiveMessage isReply');
          return;
        }

        _messageStream.add(dataMap);
        _handleReplyMessage(dataMap.msgId);
      } else {
        throw Exception('WebSocketService, _handleReceiveMessage message is not a String');
      }
    } catch (error, stackTrace) {
      debugPrint('WebSocketService, _handleReceiveMessage error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  void _handleReplyMessage(int? msgId) {
    if (msgId == null) return;
    debugPrint('WebSocketService, _handleReplyMessage: $msgId');

    send(WebsocketSendMessage(type: WebSocketSendType.reply.value, msgId: msgId));
  }

  void _startHeartbeatTimer() {
    _stopHeartbeatTimer();

    _heartbeatTimer = Timer.periodic(
      Duration(seconds: _heartbeatInterval),
      (timer) {
        debugPrint('WebSocketService, _startHeartbeatTimer ${timer.tick}');
        send(WebsocketSendMessage(type: WebSocketSendType.heartbeat.value));
      },
    );
  }

  void _stopHeartbeatTimer() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = null;
  }

  void send(WebsocketSendMessage message) {
    if (_channel != null &&
        (connectionState == WebSocketConnectionState.connected ||
            connectionState == WebSocketConnectionState.reconnected)) {
      debugPrint('WebSocketService, send message: ${message.toJsonString()}');
      _channel?.send(message.toJsonString());
    }
  }

  void sendPrinters(List<UsbPrinter> data) {
    send(
      WebsocketSendMessage(
        type: WebSocketSendType.usbPrintReport.value,
        data: jsonEncode(data.map((e) => e.toJson()).toList()),
      ),
    );
  }

  Future<void> dispose() async {
    try {
      /// 停止心跳
      _stopHeartbeatTimer();

      /// 关闭连接
      _channel?.close();
      _channel = null;

      /// 重置状态
      _connectionState.value = WebSocketConnectionState.init;
      _connectUrl.value = '';

      debugPrint('WebSocketService, dispose');
    } catch (error, stackTrace) {
      debugPrint('WebSocketService, dispose error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Widget getIcon(double size) {
    if (connectionState == WebSocketConnectionState.connected ||
        connectionState == WebSocketConnectionState.reconnected) {
      return Icon(Icons.wifi, size: size);
    }

    if (connectionState == WebSocketConnectionState.connecting ||
        connectionState == WebSocketConnectionState.reconnecting) {
      return Icon(Icons.wifi_find, size: size);
    }

    return Icon(Icons.wifi_off, size: size);
  }

  void onIconPressed({
    WebSocketParams? Function()? getParams,
  }) {
    if (connectionState == WebSocketConnectionState.connected ||
        connectionState == WebSocketConnectionState.reconnected) {
      ErrorDialogManager.showToast(
        'WebSocketService 已连接 $connectUrl',
        duration: const Duration(seconds: 2),
      );
      return;
    }

    if (connectionState == WebSocketConnectionState.connecting ||
        connectionState == WebSocketConnectionState.reconnecting) {
      ErrorDialogManager.showToast(
        'WebSocketService 连接中...',
        duration: const Duration(seconds: 2),
      );
      return;
    }

    final params = getParams?.call();

    if (params == null) {
      ErrorDialogManager.showToast(
        'WebSocketService 参数错误 params 不能为空',
        duration: const Duration(seconds: 2),
      );
      return;
    }

    if (params.token.isEmpty) {
      ErrorDialogManager.showToast(
        'WebSocketService 参数错误 Token 不能为空',
        duration: const Duration(seconds: 2),
      );
      return;
    }

    init(
      token: params.token,
      client: params.client,
      url: params.url,
      showToast: true,
      showErrorToast: true,
    );
  }

  static void close() {
    if (Get.isRegistered<WebSocketService>() || Get.isPrepared<WebSocketService>()) {
      Get.find<WebSocketService>().dispose();
    }
  }
}

class WebSocketParams {
  final String token;
  final WebSocketClient client;
  final String? url;

  WebSocketParams({required this.token, required this.client, this.url});
}
