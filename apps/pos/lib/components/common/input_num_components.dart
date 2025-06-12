// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class InputNumComponents extends StatefulWidget {
  final double width;
  final double height;
  final String? name;
  final String? hintText;
  final void Function(String)? onChanged;
  final int? accuracy;
  final double? max;
  final double? min;
  final String? value;
  const InputNumComponents({
    super.key,
    this.width = 214.0,
    this.height = 36.0,
    this.name,
    this.hintText,
    this.onChanged,
    this.accuracy = 2,
    this.max,
    this.min,
    this.value,
  });

  @override
  State<InputNumComponents> createState() => _InputNumComponentsState();
}

class _InputNumComponentsState extends State<InputNumComponents> {
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    controller.text = widget.value ?? '';
    super.initState();
  }

  @override
  void didUpdateWidget(InputNumComponents oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.value 发生变化
    if (controller.text != widget.value) {
      controller.text = widget.value ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width.scaleWidth,
      height: widget.height.scaleHeight,
      child: FormBuilderTextField(
        controller: controller,
        name: widget.name ?? '请输入'.tr,
        keyboardType: TextInputType.numberWithOptions(decimal: true), // 设置键盘类型为数字，允许小数点
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')), // 只允许输入数字和小数点
          TextInputFormatter.withFunction((oldValue, newValue) {
            if (newValue.text.isEmpty) {
              return newValue;
            }

            String text = newValue.text;

            // 如果以小数点开头，自动补0
            if (text.startsWith('.')) {
              text = '0$text';
              return TextEditingValue(
                text: text,
                selection: TextSelection.collapsed(offset: text.length),
              );
            }

            // 检查是否包含多个小数点
            if (text.contains('.')) {
              // 不允许多个小数点
              if (text.indexOf('.') != text.lastIndexOf('.')) {
                return oldValue;
              }

              // 限制小数位数为2位
              var parts = text.split('.');
              if (parts.length == 2 && parts[1].length > widget.accuracy!) {
                text = '${parts[0]}.${parts[1].substring(0, widget.accuracy!)}';
                return TextEditingValue(
                  text: text,
                  selection: TextSelection.collapsed(offset: text.length),
                );
              }
            }

            // 检查最大值和最小值限制
            try {
              double value = double.tryParse(text) ?? 0;
              if (widget.max != null && value > widget.max!) {
                // 如果超过最大值，返回最大值
                text = widget.max!.toString();
                if (widget.max! % 1 == 0) {
                  text = widget.max!.toInt().toString();
                }
                return TextEditingValue(
                  text: text,
                  selection: TextSelection.collapsed(offset: text.length),
                );
              }
              if (widget.min != null && value < widget.min!) {
                // 如果小于最小值，返回最小值
                text = widget.min!.toString();
                if (widget.min! % 1 == 0) {
                  text = widget.min!.toInt().toString();
                }
                return TextEditingValue(
                  text: text,
                  selection: TextSelection.collapsed(offset: text.length),
                );
              }
            } catch (e) {
              // 解析错误，忽略最大最小值检查
            }

            return TextEditingValue(
              text: text,
              selection: TextSelection.collapsed(offset: text.length),
            );
          }),
        ],
        style: const TextStyle(
          color: CustomTheme.secondaryColor,
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.0.scalePadding,
            horizontal: 12.0.scalePadding,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: CustomTheme.secondaryColor.shade700,
            ), // 设置边框颜色和宽度
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: CustomTheme.primaryColor.shade600,
              width: 1.0,
            ), // 获取焦点时的边框颜色
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: CustomTheme.secondaryColor.shade700,
              width: 1.0,
            ), // 启用时的边框颜色
          ),
          // 其他装饰属性，例如提示文本
          hintText: widget.hintText ?? '请输入'.tr,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(16, 10, 5, 0.3),
          ),
        ),
        onChanged: (val) {
          if (widget.onChanged != null) {
            // 检查是否为有效数字
            if (val != null && val.isNotEmpty) {
              try {
                double.parse(val); // 验证是否为有效数字
                widget.onChanged!(val);
              } catch (e) {
                // 如果不是有效数字，不触发回调
              }
            } else {
              widget.onChanged!('');
            }
          }
        },
        onEditingComplete: () {
          // Get the current form field
          final formBuilder = controller.text;
          if (formBuilder.isNotEmpty) {
            String? value = formBuilder;
            if (value.isNotEmpty) {
              try {
                // Convert to double and format with specified accuracy
                double number = double.tryParse(value) ?? 0;

                // 应用最大最小值限制
                if (widget.max != null && number > widget.max!) {
                  number = widget.max!;
                }
                if (widget.min != null && number < widget.min!) {
                  number = widget.min!;
                }

                String cleanedValue;
                if (number % 1 == 0) {
                  // If it's a whole number, don't show decimal places
                  cleanedValue = number.toInt().toString();
                } else {
                  // Format with specified accuracy
                  cleanedValue = number.toStringAsFixed(widget.accuracy!);
                  // Remove trailing zeros after decimal point
                  while (cleanedValue.contains('.') && cleanedValue.endsWith('0')) {
                    cleanedValue = cleanedValue.substring(0, cleanedValue.length - 1);
                  }
                  // Remove decimal point if it's the last character
                  if (cleanedValue.endsWith('.')) {
                    cleanedValue = cleanedValue.substring(0, cleanedValue.length - 1);
                  }
                }

                if (widget.onChanged != null) {
                  controller.text = cleanedValue;
                  widget.onChanged!(cleanedValue);
                }
                // Remove focus from the field
                FocusScope.of(context).unfocus();
              } catch (error, stackTrace) {
                // Handle invalid number
                debugPrint('Error formatting number: $error\n$stackTrace');
              }
            }
          }
        },
      ),
    );
  }
}
