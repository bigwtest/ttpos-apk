// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';
// Project imports:

class Keyboard extends StatefulWidget {
  /// 点击数字
  final Function(String)? onNumberTap;

  /// 点击清除
  final VoidCallback? onClearTap;

  /// 点击退出
  final VoidCallback? onExitTap;

  /// 点击确认
  final VoidCallback? onConfirmTap;

  /// 控制功能按钮显示
  final bool showFunctionButtons;

  /// 控制确认按钮显示
  final bool showConfirmButton;

  /// 控制小数点显示
  final bool showDot;

  /// 控制退出按钮显示
  final bool showExitButton;

  /// 控制短横线显示
  final bool showShortDash;

  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 背景色
  final Color? backgroundColor;

  /// 圆角
  final BorderRadiusGeometry? borderRadius;

  /// 是否显示确认 Loading
  final bool isConfirmLoading;

  /// 防抖时间
  static const _debounceDuration = Duration(milliseconds: 100);

  const Keyboard({
    super.key,
    this.onNumberTap,
    this.onClearTap,
    this.onExitTap,
    this.onConfirmTap,
    this.showFunctionButtons = true,
    this.showConfirmButton = true,
    this.showDot = true,
    this.showExitButton = true,
    this.showShortDash = false,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    this.isConfirmLoading = false,
  });

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  /// 最后一次点击时间
  DateTime? _lastTapTime;

  bool _shouldHandleTap() {
    final now = DateTime.now();
    if (_lastTapTime == null) {
      _lastTapTime = now;
      return true;
    }

    if (now.difference(_lastTapTime!) > Keyboard._debounceDuration) {
      _lastTapTime = now;
      return true;
    }

    return false;
  }

  void _handleNumberTap(String text) {
    if (_shouldHandleTap() && widget.onNumberTap != null) {
      widget.onNumberTap!(text);
    }
  }

  void _handleClearTap() {
    if (_shouldHandleTap() && widget.onClearTap != null) {
      widget.onClearTap!();
    }
  }

  void _handleExitTap() {
    if (_shouldHandleTap() && widget.onExitTap != null) {
      widget.onExitTap!();
    }
  }

  void _handleConfirmTap() {
    if (_shouldHandleTap() && widget.onConfirmTap != null) {
      widget.onConfirmTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: double.infinity,
        padding: widget.padding ?? EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? CustomTheme.greyColor.shade100,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(8.0),
        ),
        child: Row(
          spacing: 8.0,
          children: [
            // 左侧数字键盘区域
            Expanded(
              flex: 3,
              child: Column(
                spacing: 8.0,
                children: [
                  Expanded(
                    child: Row(
                      spacing: 8.0,
                      children: [
                        _buildNumberButton('7'),
                        _buildNumberButton('8'),
                        _buildNumberButton('9'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      spacing: 8.0,
                      children: [
                        _buildNumberButton('4'),
                        _buildNumberButton('5'),
                        _buildNumberButton('6'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      spacing: 8.0,
                      children: [
                        _buildNumberButton('1'),
                        _buildNumberButton('2'),
                        _buildNumberButton('3'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        _buildNumberButton('0'),
                        SizedBox(width: 8.0),
                        if (widget.showDot) ...[
                          _buildNumberButton(widget.showShortDash ? '-' : '00'),
                          SizedBox(width: 8.0),
                          _buildNumberButton('.'),
                        ] else ...[
                          // FIXME: 不优雅，但 UI 视觉效果能达到一致
                          Container(
                            width: 8.0,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                              ),
                            ),
                          ),
                          _buildNumberButton(widget.showShortDash ? '-' : '00', flex: 2),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (widget.showFunctionButtons) ...[
              // 右侧功能按钮区域
              Expanded(
                flex: 1,
                child: Column(
                  spacing: 8.0,
                  children: [
                    _buildFunctionButton('清空'),
                    // 根据 showExitButton 判断显示退出按钮还是确定按钮
                    if (widget.showExitButton) _buildFunctionButton('退出') else _buildConfirmButton(flex: 2),
                  ],
                ),
              ),
            ],
            // 只有在显示退出按钮时才显示最右侧的确定按钮
            if (widget.showConfirmButton && widget.showExitButton) ...[
              _buildConfirmButton(),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildNumberButton(String text, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: SizedBox(
        height: double.infinity,
        child: TextButton(
          onPressed: widget.onNumberTap != null ? () => _handleNumberTap(text) : null,
          style: _getNumberButtonStyle(),
          child: Text(text, textAlign: TextAlign.center, style: _getNumberButtonTextStyle()),
        ),
      ),
    );
  }

  Widget _buildFunctionButton(String text) {
    return Expanded(
      flex: 2,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: TextButton(
          onPressed: () {
            if (text == '清空') {
              _handleClearTap();
            } else if (text == '退出') {
              _handleExitTap();
            }
          },
          style: _getFunctionButtonStyle(),
          child: Text(text.tr, textAlign: TextAlign.center, style: _getFunctionButtonTextStyle()),
        ),
      ),
    );
  }

  Widget _buildConfirmButton({int flex = 1}) {
    return Expanded(
      flex: flex,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: TextButton(
          onPressed: widget.isConfirmLoading ? null : _handleConfirmTap,
          style: _getConfirmButtonStyle(),
          child: widget.isConfirmLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 12.0,
                      height: 12.0,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '确定'.tr,
                      textAlign: TextAlign.center,
                      style: _getConfirmButtonTextStyle(
                        CustomTheme.secondaryColor.shade400,
                      ),
                    ),
                  ],
                )
              : Text(
                  '确定'.tr,
                  textAlign: TextAlign.center,
                  style: _getConfirmButtonTextStyle(null),
                ),
        ),
      ),
    );
  }

  ButtonStyle _getNumberButtonStyle() {
    return TextButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }

  ButtonStyle _getFunctionButtonStyle() {
    return TextButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }

  ButtonStyle _getConfirmButtonStyle() {
    return TextButton.styleFrom(
      backgroundColor: CustomTheme.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }

  TextStyle _getNumberButtonTextStyle() {
    return TextStyle(
      color: CustomTheme.secondaryColor,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      height: 1.29,
    );
  }

  TextStyle _getFunctionButtonTextStyle() {
    return TextStyle(
      color: CustomTheme.secondaryColor,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      height: 1.30,
    );
  }

  TextStyle _getConfirmButtonTextStyle(Color? color) {
    return TextStyle(
      color: color ?? CustomTheme.secondaryColor,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      height: 1.50,
    );
  }
}
