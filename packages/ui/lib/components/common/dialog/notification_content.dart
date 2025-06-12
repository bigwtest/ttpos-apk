import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum NotificationContentType {
  acceptOrder,
  callService,
}

class NotificationContent extends StatelessWidget {
  const NotificationContent({
    super.key,
    required this.title,
    this.message,
    this.confirmText,
    this.cancelText,
    this.onConfirm,
    this.onCancel,
    this.isShowCancel = false,
    this.isShowConfirm = true,
    this.onClose,
    this.contentType = NotificationContentType.acceptOrder,
    this.isShowClose = true,
    this.isActionInNewLine = false,
  });

  final String title;
  final String? message;
  final bool isShowCancel;
  final bool isShowConfirm;
  final String? confirmText;
  final String? cancelText;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;
  final void Function()? onClose;
  final NotificationContentType contentType;
  final bool isShowClose;
  final bool isActionInNewLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: CustomTheme.primaryColor.shade50,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: CustomTheme.primaryColor.shade300),
          borderRadius: BorderRadius.circular(12.0),
        ),
        shadows: [
          BoxShadow(
            color: CustomTheme.rgbBgColor,
            blurRadius: 2,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Row(
            crossAxisAlignment: isActionInNewLine ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: isActionInNewLine
                      ? const EdgeInsets.only(left: 16.0, top: 12.0)
                      : const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: CustomTheme.primaryColor.shade900,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          height: 1.29,
                        ),
                      ),
                      Text(
                        message ?? '',
                        style: TextStyle(
                          color: CustomTheme.primaryColor.shade900,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!isActionInNewLine)
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 8.0,
                          children: [
                            if (isShowConfirm)
                              TtButton(
                                text: confirmText ??
                                    (contentType == NotificationContentType.acceptOrder ? '接单'.tr : '已处理'.tr),
                                onTap: onConfirm,
                                buttonType: ActionButtonType.primary,
                                sizeType: SizeButtonType.small,
                              ),
                            if (isShowCancel)
                              TtButton(
                                text: cancelText ??
                                    (contentType == NotificationContentType.acceptOrder ? '拒单'.tr : '删除'.tr),
                                onTap: onCancel,
                                buttonType: ActionButtonType.error,
                                sizeType: SizeButtonType.small,
                              ),
                          ],
                        ),
                      ),
                    ),
                  if (isShowClose)
                    IconButton(
                      onPressed: () => onClose?.call(),
                      iconSize: 16.0,
                      visualDensity: VisualDensity.compact,
                      icon: Icon(
                        Icons.close,
                        size: 16,
                        color: CustomTheme.primaryColor.shade900,
                      ),
                    ),
                ],
              ),
            ],
          ),
          if (isActionInNewLine)
            Padding(
              padding: const EdgeInsets.only(right: 12.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 8.0,
                children: [
                  if (isShowConfirm)
                    TtButton(
                      text: confirmText ?? (contentType == NotificationContentType.acceptOrder ? '接单'.tr : '已处理'.tr),
                      onTap: onConfirm,
                      buttonType: ActionButtonType.primary,
                      sizeType: SizeButtonType.small,
                    ),
                  if (isShowCancel)
                    TtButton(
                      text: cancelText ?? (contentType == NotificationContentType.acceptOrder ? '拒单'.tr : '删除'.tr),
                      onTap: onCancel,
                      buttonType: ActionButtonType.error,
                      sizeType: SizeButtonType.small,
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
