import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class WebSocketIcon extends StatefulWidget {
  const WebSocketIcon({
    super.key,
    this.size = 40.0,
    this.color = CustomTheme.secondaryColor,
    this.getParams,
  });

  final double size;
  final Color color;
  final WebSocketParams? Function()? getParams;

  @override
  State<WebSocketIcon> createState() => _WebSocketIconState();
}

class _WebSocketIconState extends State<WebSocketIcon> {
  late final WebSocketService? wsService;

  @override
  void initState() {
    super.initState();

    if (Get.isRegistered<WebSocketService>()) {
      try {
        wsService = Get.find<WebSocketService>();
      } catch (error, stackTrace) {
        debugPrint('WebSocketIcon, initState, Get.isRegistered<WebSocketService> error: $error');
        debugPrintStack(stackTrace: stackTrace);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Obx(() {
        return IconButton(
          onPressed: () => wsService?.onIconPressed(getParams: widget.getParams),
          color: widget.color,
          icon: wsService?.getIcon(24.0.scaleWidth) ??
              Icon(
                Icons.wifi_off,
                size: 24.0.scaleWidth,
              ),
          disabledColor: CustomTheme.greyColor,
          padding: EdgeInsets.zero,
        );
      }),
    );
  }
}
