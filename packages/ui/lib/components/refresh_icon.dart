import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class RefreshIconButton extends StatefulWidget {
  const RefreshIconButton({
    super.key,
    this.size = 40.0,
    this.color = CustomTheme.secondaryColor,
  });

  final double size;
  final Color color;

  @override
  State<RefreshIconButton> createState() => _RefreshIconButtonState();
}

class _RefreshIconButtonState extends State<RefreshIconButton> with SingleTickerProviderStateMixin {
  final refreshService = Get.find<RefreshService>();
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Obx(() {
        final isRunning = refreshService.isRunning.value;
        if (isRunning) {
          _controller.repeat();
        } else {
          _controller.stop();
          _controller.reset();
        }

        return RotationTransition(
          turns: _controller,
          child: IconButton(
            icon: Icon(
              Iconfont.refresh,
              size: 24.0.scaleWidth,
            ),
            color: widget.color,
            disabledColor: CustomTheme.greyColor,
            padding: EdgeInsets.zero,
            onPressed: isRunning ? null : refreshService.fire,
          ),
        );
      }),
    );
  }
}
