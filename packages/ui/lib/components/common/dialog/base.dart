// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
// Project imports:

/// 选择项模型
class SelectionItem {
  /// ID
  final int id;

  /// 显示文本
  final String text;

  /// 构造函数
  const SelectionItem({
    required this.id,
    required this.text,
  });
}

class BaseDialogView<T> extends StatefulWidget {
  const BaseDialogView({
    super.key,
    this.showIconNotification = false,
    this.titleIcon,
    this.title,
    this.subtitle,
    this.textAlign,
    this.products,
    this.selections,
    this.onConfirm,
    this.showCancelButton = true,
    this.showConfirmButton = true,
    this.preventGetBackOnConfirmComplete = false,
    this.width,
    this.confirmText,
    this.cancelText,
  });

  final bool showIconNotification;
  final Widget? titleIcon;
  final String? title;
  final String? subtitle;
  final TextAlign? textAlign;
  final List<String>? products;
  final List<SelectionItem>? selections;
  final Future<T>? Function(int? value)? onConfirm;
  final bool showCancelButton;
  final bool showConfirmButton;
  // NOTE: 阻止内部关闭这个弹窗
  final bool preventGetBackOnConfirmComplete;
  final double? width;
  final String? confirmText;
  final String? cancelText;

  @override
  State<BaseDialogView<T>> createState() => _BaseDialogViewState<T>();
}

class _BaseDialogViewState<T> extends State<BaseDialogView<T>> {
  final RxBool _isLoading = false.obs;
  final RxInt _selectedItemId = 0.obs;

  @override
  void initState() {
    super.initState();
    // 默认选中第一个选项
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.selections?.isNotEmpty == true) {
        _selectedItemId.value = widget.selections!.first.id;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: widget.width ?? (widget.products?.isNotEmpty == true ? 320.0.scaleWidth : 240.0.scaleWidth),
        padding: EdgeInsets.all(16.0.scalePadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.showIconNotification)
              Center(
                child: Container(
                  width: 67.0.scaleWidth,
                  height: 67.0.scaleWidth,
                  margin: EdgeInsets.only(bottom: 8.0.scaleHeight),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomTheme.primaryColor.shade50,
                  ),
                  child: widget.titleIcon ??
                      Icon(
                        Icons.notifications,
                        color: CustomTheme.primaryColor,
                        size: 36.0.scaleWidth,
                      ),
                ),
              ),
            Center(
              child: Text(
                widget.title ?? "提示".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            if (widget.subtitle?.isNotEmpty == true) ...[
              SizedBox(height: 8.0.scaleHeight),
              SizedBox(
                width: double.infinity,
                child: Text(
                  widget.subtitle ?? '',
                  textAlign: widget.textAlign ?? TextAlign.center, // 添加文本居中对齐
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 13.0, // UI要求改成这样
                    fontWeight: FontWeight.w400,
                    height: 1.3, // UI要求改成这样
                  ),
                ),
              ),
            ],
            if (widget.products?.isNotEmpty == true) ...[
              SizedBox(height: 8.0.scaleHeight),
              Container(
                constraints: BoxConstraints(
                  // 使用可用空间的一部分作为最大高度，确保不会占用过多空间
                  maxHeight: 160.0.scaleHeight,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 4.0.scalePadding,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: CustomTheme.greyColor.shade100,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 1.0.scalePadding,
                    children: (widget.products ?? [])
                        .map(
                          (text) => Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0.scalePadding,
                              vertical: 4.0.scalePadding,
                            ),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              text,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                height: 1.44,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
            if (widget.selections?.isNotEmpty == true) ...[
              SizedBox(height: 8.0.scaleHeight),
              Obx(
                () => Container(
                  // 如果超过5个项目，限制高度
                  constraints: BoxConstraints(
                    maxHeight: (widget.selections?.length ?? 0) > 5
                        ? (10.0.scalePadding * 2 + 30.0.scaleHeight) * 5 + 8.0.scaleHeight
                        : double.infinity,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: (widget.selections ?? [])
                          .map(
                            (item) => Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 8.0.scaleHeight),
                              child: InkWell(
                                onTap: () {
                                  _selectedItemId.value = item.id;
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.0.scalePadding,
                                    vertical: 8.0.scalePadding,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: _selectedItemId.value == item.id
                                          ? CustomTheme.primaryColor
                                          : CustomTheme.greyColor.shade300,
                                      width: 1.0,
                                    ),
                                    color: _selectedItemId.value == item.id
                                        ? CustomTheme.primaryColor.shade50
                                        : Colors.white,
                                  ),
                                  child: Text(
                                    item.text,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
            SizedBox(height: 24.0.scaleHeight),
            Row(
              spacing: 8.0.scalePadding,
              children: [
                if (widget.showCancelButton)
                  Expanded(
                    child: TtButton(
                      text: widget.cancelText ?? '取消'.tr,
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      onTap: () {
                        if (_isLoading.value) return;
                        Get.back(result: false);
                      },
                      buttonType: ActionButtonType.outline,
                      sizeType: SizeButtonType.small,
                    ),
                  ),
                if (widget.showConfirmButton)
                  Expanded(
                    child: TtButton(
                      text: widget.confirmText ?? '确定'.tr,
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      isLoading: _isLoading.value,
                      onTap: () async {
                        if (_isLoading.value) return;
                        _isLoading.value = true;
                        try {
                          final result = await widget.onConfirm?.call(_selectedItemId.value);
                          if (widget.preventGetBackOnConfirmComplete) return;
                          Get.back(result: result ?? true);
                        } catch (error, stackTrace) {
                          debugPrint('Dialog, onTap error: $error\n$stackTrace');
                        } finally {
                          _isLoading.value = false;
                        }
                      },
                      buttonType: ActionButtonType.primary,
                      sizeType: SizeButtonType.small,
                    ),
                  ),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class DismissKeyboardDialog extends StatelessWidget {
  final Widget child;

  const DismissKeyboardDialog({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Container(color: Colors.transparent),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              // 防止点击事件穿透到背景
              return;
            },
            child: Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
