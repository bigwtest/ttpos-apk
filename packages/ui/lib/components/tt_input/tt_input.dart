import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TtInput extends StatefulWidget {
  final double width;
  final double height;
  final bool isDisabled;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffix;
  final String value;
  final bool isShowDelete;
  final bool isShowClose;
  final bool readOnly;
  final bool useFocusedBorderAsEnabled;
  final int? maxLength;
  final int maxLines;
  final void Function(String)? onChanged;
  final void Function()? onFocus;
  final TextAlign? textAlign;
  final double? fontSize;
  final GlobalKey? inputFieldKey;
  final bool autoFocus;
  final bool enableInteractiveSelection;

  const TtInput({
    super.key,
    this.inputFieldKey,
    this.height = 36.0,
    this.width = double.infinity,
    this.isDisabled = false,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.hintText,
    this.focusNode,
    this.value = '',
    this.prefixIcon,
    this.suffix,
    this.isShowDelete = false,
    this.isShowClose = false,
    this.readOnly = false,
    this.useFocusedBorderAsEnabled = false,
    this.maxLength,
    this.maxLines = 1,
    this.onChanged,
    this.onFocus,
    this.textAlign = TextAlign.left,
    this.fontSize = 12.0,
    this.autoFocus = false,
    this.enableInteractiveSelection = true,
  });

  @override
  State<TtInput> createState() => _TtInputState();
}

class _TtInputState extends State<TtInput> {
  final FocusNode _internalFocusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = widget.value;
    if (widget.focusNode == null) {
      if (widget.autoFocus) {
        _internalFocusNode.requestFocus();
      }
      _internalFocusNode.addListener(_onFocusChange);
    } else {
      if (widget.autoFocus) {
        widget.focusNode?.requestFocus();
      }
      widget.focusNode?.addListener(_onFocusChange);
    }
    //
    super.initState();
  }

  @override
  void didUpdateWidget(TtInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.value 发生变化
    if (_controller.text != widget.value) {
      _controller.text = widget.value;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    if (widget.focusNode == null) {
      _internalFocusNode.removeListener(_onFocusChange);
      _internalFocusNode.dispose();
    } else {
      widget.focusNode?.removeListener(_onFocusChange);
    }
    //
    super.dispose();
  }

  void _onFocusChange() {
    if (widget.focusNode == null) {
      if (_internalFocusNode.hasFocus) {
        widget.onFocus?.call();
      }
    } else {
      if (widget.focusNode != null && widget.focusNode?.hasFocus == true) {
        widget.onFocus?.call();
      }
    }
  }

  void _onDelete() {
    if (widget.focusNode == null) {
      _internalFocusNode.requestFocus();
    } else {
      widget.focusNode?.requestFocus();
    }
    final text = _controller.text;
    if (text.isEmpty) return;
    _controller.text = text.substring(0, text.length - 1);
    widget.onChanged?.call(_controller.text);
  }

  void _onClose() {
    _controller.text = '';
    widget.onChanged?.call(_controller.text);
  }

  double get paddingVertical => (widget.height - 18) / 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widget.inputFieldKey,
      width: widget.width,
      height: widget.height,
      child: TextField(
        controller: _controller,
        focusNode: widget.focusNode ?? _internalFocusNode,
        enabled: !widget.isDisabled,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        textAlign: widget.textAlign!,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        style: TextStyle(
          color: widget.isDisabled ? CustomTheme.greyColor : CustomTheme.secondaryColor,
          fontSize: widget.fontSize!,
          fontWeight: FontWeight.w400,
          fontFamily: widget.obscureText ? GoogleFonts.notoSans().fontFamily : null,
        ),
        decoration: InputDecoration(
          counter: SizedBox.shrink(), // 隐藏限制显示
          filled: widget.isDisabled,
          fillColor: widget.isDisabled ? Color(0x7BE8EAEB) : Colors.transparent,
          contentPadding: EdgeInsets.symmetric(
            vertical: widget.maxLines == 1 ? paddingVertical : 10.0,
            horizontal: 12.0.scalePadding,
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: (widget.suffix != null) ||
                  (widget.isShowClose && _controller.text.isNotEmpty && !widget.isDisabled) ||
                  (widget.isShowDelete)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.suffix != null) widget.suffix!,
                    if (widget.isShowClose && _controller.text.isNotEmpty && !widget.isDisabled)
                      _CloseIcon(
                        onTap: () {
                          _onClose();
                        },
                      ),
                    if (widget.isShowDelete)
                      _DeleteIcon(
                        onTap: _onDelete,
                      ),
                  ],
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: CustomTheme.secondaryColor.shade700,
            ), // 设置边框颜色和宽度
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: CustomTheme.primaryColor,
              width: 1.0,
            ), // 获取焦点时的边框颜色
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: widget.useFocusedBorderAsEnabled ? CustomTheme.primaryColor : CustomTheme.secondaryColor.shade700,
              width: 1.0,
            ), // 启用时的边框颜色
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: widget.useFocusedBorderAsEnabled ? CustomTheme.primaryColor : CustomTheme.secondaryColor.shade700,
              width: 1.0,
            ), // 启用时的边框颜色
          ),
          // 其他装饰属性，例如提示文本
          hintText: widget.hintText ?? '请输入'.tr,
          hintStyle: const TextStyle(
            color: Color(0x4D100A05),
          ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}

class _DeleteIcon extends StatelessWidget {
  final VoidCallback? onTap;
  const _DeleteIcon({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.scalePadding,
        ),
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              width: 1.0,
              color: CustomTheme.secondaryColor.shade700,
            ),
          ),
        ),
        child: Icon(
          Iconfont.arrowLeft,
          color: CustomTheme.secondaryColor.shade600,
          size: 20,
        ),
      ),
    );
  }
}

class _CloseIcon extends StatelessWidget {
  final void Function()? onTap;
  const _CloseIcon({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Icon(
          Iconfont.clear1,
          size: 24.0.scaleWidth,
          color: CustomTheme.secondaryColor,
        ),
      ),
    );
  }
}
