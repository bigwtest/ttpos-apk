// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/select_overlay.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CustomFormSelect extends StatefulWidget {
  final String name;
  final double? height;
  final String hintText;
  final String? label;
  final double? labelWidth;
  final bool? required;
  final List<SelectOption>? options;
  final Function(SelectOption?)? onChange;

  const CustomFormSelect({
    super.key,
    required this.name,
    required this.hintText,
    this.label,
    this.labelWidth,
    this.required,
    this.options,
    this.onChange,
    this.height = 56,
  });

  @override
  State<CustomFormSelect> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomFormSelect> with SingleTickerProviderStateMixin {
  final _inputFieldKey = GlobalKey();
  WidgetsBindingObserver? _observer;

  final TextEditingController _controller = TextEditingController();

  final RxBool _hasValue = false.obs;

  late final AnimationController _iconController;

  void _showOverlay() {
    // 通过 GlobalKey 获取输入框的 RenderBox
    final RenderBox? inputBox = _inputFieldKey.currentContext?.findRenderObject() as RenderBox?;
    if (inputBox == null) return;

    final offset = inputBox.localToGlobal(Offset.zero);
    final size = inputBox.size;

    // 创建一个ValueNotifier来监听位置变化
    final ValueNotifier<Offset> offsetNotifier = ValueNotifier<Offset>(offset);

    // 添加MediaQuery监听器
    void updateOverlayPosition() {
      // 使用microtask确保在布局完成后更新位置
      Future.microtask(() {
        // 添加延迟，确保UI完全渲染
        Future.delayed(Duration(milliseconds: 100), () {
          if (_inputFieldKey.currentContext != null) {
            final RenderBox box = _inputFieldKey.currentContext!.findRenderObject() as RenderBox;
            offsetNotifier.value = box.localToGlobal(Offset.zero);
          }
        });
      });
    }

    // 创建一个监听器
    final WidgetsBinding binding = WidgetsBinding.instance;
    _observer = _MediaQueryObserver(updateOverlayPosition);
    binding.addObserver(_observer!);
    _iconController.forward(); // 开始旋转动画
    Get.dialog(
      ValueListenableBuilder<Offset>(
        valueListenable: offsetNotifier,
        builder: (context, currentOffset, child) {
          return SelectOverlay(
            offset: currentOffset,
            size: size,
            options: widget.options!,
            showDeleteButton: false,
            showCheckIcon: true,
            onItemSelected: (option) {
              _controller.text = option.title ?? '';
              if (widget.onChange != null) {
                widget.onChange!(option);
              }

              if (_controller.text.isNotEmpty) {
                _hasValue.value = true;
              } else {
                _hasValue.value = false;
              }
              // 使用 Future.delayed 确保文本设置完成后再设置光标位置
              Future.delayed(Duration.zero, () {
                _controller.selection = TextSelection.fromPosition(
                  TextPosition(offset: _controller.text.length),
                );
              });
              _iconController.reverse(); // 关闭时反转动画
            },
            onTapOutside: () {
              _iconController.reverse(); // 关闭时反转动画
              Get.back();
            },
          );
        },
      ),
      barrierColor: Colors.transparent,
    );
  }

  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.label == null) {
      return _buildTextField(context);
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _TextFieldLabel(
            label: widget.label,
            required: widget.required,
            width: widget.labelWidth,
          ), // 传递宽度参数
          SizedBox(width: 8.0),
          // 输入框
          Expanded(child: _buildTextField(context)),
        ],
      ),
    );
  }

  Widget _buildTextField(BuildContext context) {
    return SizedBox(
      key: _inputFieldKey,
      height: widget.height,
      child: FormBuilderTextField(
        name: widget.name,
        controller: _controller,
        readOnly: widget.options != null, // 有选项时设为只读
        onTap: _showOverlay, // 添加点击事件
        style: TextStyle(
          color: CustomTheme.secondaryColor,
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          height: 1.44,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color.fromRGBO(16, 10, 5, 0.3),
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            height: 1.44,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          suffixIcon: Obx(
            () => _hasValue.value
                ? _CleanIcon(
                    onClear: () {
                      _controller.clear();
                      _hasValue.value = false;
                      if (widget.onChange != null) {
                        widget.onChange!(null);
                      }
                    },
                  )
                : _SuffixIcon(controller: _iconController),
          ),
          border: _getBorder(
            CustomTheme.greyColor.shade300,
          ),
          enabledBorder: _getBorder(
            CustomTheme.greyColor.shade300,
          ),
          focusedBorder: _getBorder(
            CustomTheme.primaryColor.shade600,
          ),
        ),
        validator: (value) {
          // 只有 required 为 true 时才进行必填校验
          if (widget.required == true && (value == null || value.isEmpty)) {
            return widget.hintText;
          }
          return null;
        },
      ),
    );
  }

  OutlineInputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
    );
  }

  @override
  void dispose() {
    // 移除监听器
    if (_observer != null) {
      WidgetsBinding.instance.removeObserver(_observer!);
      _observer = null;
    }
    _iconController.dispose();
    _controller.dispose();
    super.dispose();
  }
}

class _TextFieldLabel extends StatelessWidget {
  const _TextFieldLabel({
    this.label,
    this.required,
    this.width,
  });

  final String? label;
  final bool? required;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      // 使用 IntrinsicWidth 让宽度适应内容
      child: Container(
        width: width, // 如果传入width则使用固定宽度
        constraints: BoxConstraints(
          maxWidth: width ?? double.infinity, // 没有width时不限制最大宽度
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // 让 Row 宽度适应内容
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (required == true)
              Text(
                '*',
                style: TextStyle(
                  color: CustomTheme.errorColor.shade500,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  height: 1.44,
                ),
              ),
            Flexible(
              // 使用 Flexible 替代 Expanded
              child: Text(
                label!,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  height: 1.44,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SuffixIcon extends StatelessWidget {
  const _SuffixIcon({
    required this.controller,
  });
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16.0,
      height: double.infinity,
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 0.5).animate(controller),
        child: Icon(
          Iconfont.arrowDown,
          color: CustomTheme.secondaryColor.shade600,
          size: 16.0,
          weight: 400,
        ),
      ),
    );
  }
}

class _CleanIcon extends StatelessWidget {
  const _CleanIcon({
    this.onClear,
  });
  final VoidCallback? onClear;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, // 阻止事件冒泡
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13),
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: CustomTheme.greyColor.shade300,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(
              Iconfont.close,
              color: CustomTheme.secondaryColor.shade600,
              size: 16,
            ),
            onPressed: onClear,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(
              minWidth: 24,
              minHeight: 24,
            ),
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              splashFactory: NoSplash.splashFactory,
            ),
          ),
        ),
      ),
    );
  }
}

// 创建一个MediaQuery观察者
class _MediaQueryObserver extends WidgetsBindingObserver {
  final VoidCallback onMetricsChanged;

  _MediaQueryObserver(this.onMetricsChanged);

  @override
  void didChangeMetrics() {
    onMetricsChanged();
  }
}
