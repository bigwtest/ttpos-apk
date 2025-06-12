// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class BaseReportOnDialogView<T> extends StatefulWidget {
  const BaseReportOnDialogView({
    super.key,
    this.title,
    this.subtitle,
    this.money,
    this.prompt,
    this.onConfirm,
    this.showCancelButton = true,
    this.preventGetBackOnConfirmComplete = false,
    this.width,
    this.confirmText,
    this.cancelText,
    this.content,
    this.onCancel,
  });

  final String? title;
  final String? subtitle;
  final String? money;
  final String? prompt;
  final Future<T>? Function(String? value)? onConfirm;
  final Future<void>? Function()? onCancel;
  final bool showCancelButton;
  // NOTE: 阻止内部关闭这个弹窗
  final bool preventGetBackOnConfirmComplete;
  final double? width;
  final String? confirmText;
  final String? cancelText;
  final List<String>? content;

  @override
  State<BaseReportOnDialogView<T>> createState() => _BaseReportOnDialogViewState<T>();
}

class _BaseReportOnDialogViewState<T> extends State<BaseReportOnDialogView<T>> {
  final RxBool _isLoading = false.obs;
  final RxString _prompt = ''.obs;

  void _onChanged(String value) {
    _prompt.value = value;
  }

  @override
  void initState() {
    _prompt.value = widget.prompt ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _prompt.value = '';
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: 320.0.scaleWidth,
        padding: EdgeInsets.all(16.0.scalePadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title?.tr ?? "提示".tr,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (widget.subtitle?.isNotEmpty == true) ...[
              SizedBox(height: 16.0.scaleHeight),
              SizedBox(
                width: double.infinity,
                child: Row(
                  spacing: 8.0,
                  children: [
                    Text(
                      widget.subtitle?.tr ?? '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.44,
                      ),
                    ),
                    Text(
                      widget.money?.primaryCurrency ?? '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: CustomTheme.errorColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        height: 1.44,
                      ),
                    ),
                    Text(
                      widget.money?.secondaryCurrency ?? '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: CustomTheme.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        height: 1.44,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            if (widget.content?.isNotEmpty == true) ...[
              SizedBox(height: 8.0.scaleHeight),
              Container(
                constraints: BoxConstraints(
                  // 使用可用空间的一部分作为最大高度，确保不会占用过多空间
                  maxHeight: 120.0.scaleHeight,
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
                    children: (widget.content ?? [])
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
                                fontSize: 12.0,
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
            SizedBox(height: 12.0.scaleHeight),
            Text(
              '异常报备'.tr,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                height: 1.44,
              ),
            ),
            SizedBox(height: 8.0.scaleHeight),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 4.0.scalePadding,
              ),
              child: TtInput(
                value: _prompt.value,
                onChanged: _onChanged,
                hintText: '如有异常，请报备'.tr,
                maxLength: 50,
                maxLines: 3,
                height: 56.0.scaleHeight,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                '${_prompt.value.length}/50'.tr,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: CustomTheme.greyColor,
                  fontSize: 10.0,
                ),
              ),
            ),
            SizedBox(height: 12.0.scaleHeight),
            Row(
              spacing: 8.0.scalePadding,
              children: [
                if (widget.showCancelButton)
                  Expanded(
                    child: TtButton(
                      text: widget.cancelText ?? '取消'.tr,
                      onTap: () {
                        if (_isLoading.value) return;
                        widget.onCancel?.call();
                        Get.back(result: false);
                      },
                      buttonType: ActionButtonType.outline,
                      sizeType: SizeButtonType.small,
                    ),
                  ),
                Expanded(
                  child: TtButton(
                    text: widget.confirmText ?? '确定'.tr,
                    isLoading: _isLoading.value,
                    onTap: () async {
                      if (_isLoading.value) return;
                      _isLoading.value = true;
                      try {
                        final result = await widget.onConfirm?.call(_prompt.value);
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
