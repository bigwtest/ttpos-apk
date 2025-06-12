import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/prompt.dart';
import 'package:ttpos_ui/components/common/dialog/report_on.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_password/order_password_view.dart';

class DialogManager {
  static Future<bool> showConfirmDialog({
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
    Widget? titleIcon,
    bool showCancelButton = true,
    bool showConfirmButton = true,
    bool preventGetBackOnConfirmComplete = false,
    bool showIconNotification = false,
    double? width,
    Future<bool> Function()? onConfirm,
  }) async {
    bool result = false;
    await Get.dialog(
      DismissKeyboardDialog(
        child: BaseDialogView(
          width: width,
          title: title ?? '提示'.tr,
          subtitle: message,
          titleIcon: titleIcon,
          showCancelButton: showCancelButton,
          showConfirmButton: showConfirmButton,
          showIconNotification: showIconNotification,
          preventGetBackOnConfirmComplete: preventGetBackOnConfirmComplete,
          onConfirm: (int? value) async {
            if (onConfirm == null) {
              result = true;
              return true;
            }
            result = await onConfirm.call();
            return result;
          },
          confirmText: confirmText,
          cancelText: cancelText,
        ),
      ),
      barrierDismissible: false,
    );
    return result;
  }

  static Future<bool> showConfirmContentDialog({
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
    Widget? titleIcon,
    TextAlign? textAlign,
    bool showCancelButton = true,
    bool showConfirmButton = true,
    bool preventGetBackOnConfirmComplete = false,
    bool showIconNotification = false,
    double? width,
    List<SelectionItem>? selections,
    Future<bool> Function(int? value)? onConfirm,
  }) async {
    bool result = false;
    await Get.dialog(
      DismissKeyboardDialog(
        child: BaseDialogView(
          width: width,
          title: title ?? '提示'.tr,
          subtitle: message,
          textAlign: textAlign,
          titleIcon: titleIcon,
          showCancelButton: showCancelButton,
          showConfirmButton: showConfirmButton,
          showIconNotification: showIconNotification,
          preventGetBackOnConfirmComplete: preventGetBackOnConfirmComplete,
          selections: selections?.isEmpty == true ? null : selections,
          onConfirm: (int? value) async {
            if (onConfirm == null) {
              result = true;
              return true;
            }
            result = await onConfirm.call(value);
            return result;
          },
          confirmText: confirmText,
          cancelText: cancelText,
        ),
      ),
      barrierDismissible: false,
    );
    return result;
  }

  static Future<bool> showErrorDialog({
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
    bool showCancelButton = false,
    bool preventGetBackOnConfirmComplete = false,
    Future<bool> Function()? onConfirm,
    bool showIconNotification = false,
  }) async {
    bool result = false;
    await Get.dialog(
      DismissKeyboardDialog(
        child: BaseDialogView(
          title: title ?? '异常提示'.tr,
          subtitle: message,
          showCancelButton: showCancelButton,
          preventGetBackOnConfirmComplete: preventGetBackOnConfirmComplete,
          onConfirm: (int? value) async {
            if (onConfirm == null) {
              result = true;
              return true;
            }
            result = await onConfirm.call();
            return result;
          },
          confirmText: confirmText,
          cancelText: cancelText,
          showIconNotification: showIconNotification,
        ),
      ),
      barrierDismissible: false,
    );
    return result;
  }

  static Future<(bool, String?)> showPromptDialog({
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
    bool showCancelButton = true,
    bool preventGetBackOnConfirmComplete = false,
    List<String>? content,
    Future<bool> Function(String? value)? onConfirm,
    bool center = true,
  }) async {
    bool result = false;
    String? prompt;
    await Get.dialog(
      DismissKeyboardDialog(
        child: BasePromptDialogView<bool>(
          title: title ?? '提示'.tr,
          subtitle: message,
          showCancelButton: showCancelButton,
          preventGetBackOnConfirmComplete: preventGetBackOnConfirmComplete,
          onConfirm: (String? value) async {
            if (onConfirm == null) {
              result = true;
              prompt = value;
              return true;
            }
            result = await onConfirm.call(value);
            return result;
          },
          confirmText: confirmText,
          cancelText: cancelText,
          content: content,
          center: center,
        ),
      ),
      barrierDismissible: false,
    );

    return (result, prompt);
  }

  static Future<bool> showOrderCheckDialog({
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
    bool showCancelButton = true,
    bool preventGetBackOnConfirmComplete = false,
    Future<bool> Function()? onConfirm,
    List<String>? content,
  }) async {
    bool result = false;
    await Get.dialog(
      DismissKeyboardDialog(
        child: BaseDialogView(
          title: title,
          subtitle: message,
          showCancelButton: showCancelButton,
          preventGetBackOnConfirmComplete: preventGetBackOnConfirmComplete,
          onConfirm: (int? value) async {
            if (onConfirm == null) {
              result = true;
              return true;
            }
            result = await onConfirm.call();
            return result;
          },
          confirmText: confirmText,
          cancelText: cancelText,
          products: content?.isEmpty == true ? null : content,
        ),
      ),
      barrierDismissible: false,
    );
    return result;
  }

  static List<String> getContent(
    List<Product> products,
  ) {
    return products
        .map(
          (product) =>
              '${product.localeName.translate}${product.localeAttributeName.translate.isNotEmpty ? '（${product.localeAttributeName.translate}）' : ''}',
        )
        .toList();
  }

  static void showToast(
    String message, {
    Duration? duration,
    VoidCallback? onClose,
    double? fontSize,
  }) {
    duration ??= const Duration(seconds: 3);

    final cancelFunc = BotToast.showText(
      text: message,
      align: Alignment.center, // 设置在屏幕中间
      contentColor: const Color.fromRGBO(0, 0, 0, 0.8),
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize ?? 16.0, // UI要求这样修改
        fontWeight: FontWeight.w400,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      duration: duration,
      clickClose: false,
      crossPage: true,
      onlyOne: true,
    );

    // 三秒后关闭
    Future.delayed(duration, () {
      cancelFunc();
      onClose?.call();
    });
  }

  static Future<String> showPasswordDialog({
    String? title,
    String? hintText,
    required Future<bool> Function({required String password}) onConfirm,
  }) async {
    String password = '';
    await Get.dialog(
      DismissKeyboardDialog(
        child: OrderPasswordView(
          title: title ?? '密码'.tr,
          hintText: hintText ?? '请输入密码'.tr,
          onConfirm: (value) async {
            final res = await onConfirm(password: value);
            if (res) password = value;
            return res;
          },
        ),
      ),
      barrierDismissible: false,
    );
    return password;
  }

  static Future<(bool, String?)> showReportOnDialog({
    String? money,
    String? confirmText,
    String? cancelText,
    bool showCancelButton = true,
    bool preventGetBackOnConfirmComplete = false,
    List<String>? content,
    Future<bool> Function(String? value)? onConfirm,
    Future<void> Function()? onCancel,
  }) async {
    bool result = false;
    String? prompt;
    await Get.dialog(
      DismissKeyboardDialog(
        child: BaseReportOnDialogView<bool>(
          title: '本班情况',
          subtitle: '本班备用现金',
          money: money,
          showCancelButton: showCancelButton,
          preventGetBackOnConfirmComplete: preventGetBackOnConfirmComplete,
          onConfirm: (String? value) async {
            if (onConfirm == null) {
              result = true;
              prompt = value;
              return true;
            }
            return await onConfirm.call(value);
          },
          onCancel: onCancel,
          confirmText: confirmText,
          cancelText: cancelText,
          content: content,
        ),
      ),
      barrierDismissible: false,
    );

    return (result, prompt);
  }

  /// 关闭所有弹窗
  /// [keepRouteNames] 需要保留的弹窗名称列表
  static void closeAll({List<String>? keepRouteNames}) {
    Get.until((route) {
      return route.isFirst || (keepRouteNames?.contains(route.settings.name) ?? false);
    });
    Get.delete<DialogManager>();
  }

  static void closeAllToast() {
    BotToast.cleanAll();
  }
}
