part of 'checkout_controller.dart';

class CheckoutErrorHandler {
  static Future<bool> handleError({
    required ErrorCode errorCode,
    required OrderCheck orderCheck,
    required Future<bool?> Function() onCookingTap,
    required VoidCallback onCheckFailed,
  }) async {
    debugPrint('errorCode: $errorCode');

    switch (errorCode) {
      case ErrorCode.orderCheckProductMust:
        return await _handleMustProducts(orderCheck);
      case ErrorCode.orderCheckProductDown:
      case ErrorCode.orderCheckProductFlavorDown:
      case ErrorCode.orderCheckProductStockZero:
      case ErrorCode.orderCheckProductPriceChanged:
      case ErrorCode.orderCheckProductLimitOut:
        return await _handleProductErrors(orderCheck, errorCode, onCheckFailed);
      case ErrorCode.orderCheckFailed:
        return await _handleCookingCheck(orderCheck, onCookingTap);
      default:
        DialogManager.showToast(ErrorCode.unknownError.message.tr);
        return false;
    }
  }

  static Future<bool> _handleMustProducts(OrderCheck orderCheck) async {
    final productMustPlans = orderCheck.productMustPlans?.list;
    if (productMustPlans == null || productMustPlans.isEmpty) {
      return true;
    }

    final products = productMustPlans.map((e) {
      return '${e.name} (${'少点'.tr}${e.needNum}${'份'.tr})';
    }).toList();

    final result = await DialogManager.showOrderCheckDialog(
      message: ErrorCode.orderCheckProductMust.message.tr,
      content: products,
    );

    return result;
  }

  static Future<bool> _handleProductErrors(
    OrderCheck orderCheck,
    ErrorCode errorCode,
    VoidCallback onCheckFailed,
  ) async {
    final products = orderCheck.products?.list;
    // NOTE: 这里先去掉这个判断，因为有时候会没有商品
    // if (products == null || products.isEmpty) {
    //   return false;
    // }

    await DialogManager.showOrderCheckDialog(
      message: errorCode.message.tr,
      content: DialogManager.getContent(products ?? []),
      onConfirm: () async {
        onCheckFailed();
        return true;
      },
      showCancelButton: false,
    );

    return false;
  }

  static Future<bool> _handleCookingCheck(
    OrderCheck orderCheck,
    Future<bool?> Function() onCookingTap,
  ) async {
    final products = orderCheck.products?.list;
    // NOTE: 这里先去掉这个判断，因为有时候会没有商品
    // if (products == null || products.isEmpty) {
    //   return false;
    // }

    return await DialogManager.showOrderCheckDialog(
      message: ErrorCode.orderCheckFailed.message.tr,
      content: DialogManager.getContent(products ?? []),
      onConfirm: () async {
        final result = await onCookingTap();
        return result ?? false;
      },
    );
  }
}
