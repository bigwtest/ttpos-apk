part of '../view/index.dart';

// 点餐按钮
mixin GoodsCartActionControllerMixin on GetxController {
  // 权限
  final BaseInfoController _baseController = Get.find<BaseInfoController>();
  //
  RxList<Map<String, dynamic>> _getActionList(
    ResponseCart? cart,
    ResponseCartProduct? product,
    bool hasUnsentProducts,
  ) {
    bool isLock = cart?.isLock ?? false;
    bool isSplit = cart != null && cart.saleOrderList.isNotEmpty && cart.saleOrderList.length > 1;
    //
    return RxList<Map<String, dynamic>>.from(
      [
        {
          'text': '删除'.tr,
          'type': ActionCommonType.delete,
          'buttonType': ActionButtonType.danger,
          'isDisabled': isLock || product == null || (product.status == 1 && product.isCancel != true),
          'isPermission': _baseController.hasPermission(PermissionKey.instantDelete),
        },
        {
          'text': '价格'.tr,
          'type': ActionCommonType.price,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || product == null || product.isCancel == true,
          'isPermission': _baseController.hasPermission(PermissionKey.instantPrice),
        },
        {
          'text': '挂单'.tr,
          'type': ActionCommonType.hangingOrder,
          'buttonType': ActionButtonType.primary,
          'isDisabled': false || product == null,
          'isPermission': _baseController.hasPermission(PermissionKey.instantPlacement),
        },
        {
          'text': '取单'.tr,
          'type': ActionCommonType.pickOrder,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || product != null || isSplit,
          'isPermission': _baseController.hasPermission(PermissionKey.instantPick),
        },
        {
          'text': '整单取消'.tr,
          'type': ActionCommonType.orderCancel,
          'buttonType': ActionButtonType.danger,
          'isDisabled': product == null || isLock,
          'isPermission': _baseController.hasPermission(PermissionKey.instantCancel),
        },
        {
          'text': '送厨'.tr,
          'type': ActionCommonType.sendingKitchen,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || !hasUnsentProducts,
          'isPermission': _baseController.hasPermission(PermissionKey.instantSendKitchen),
        },
        {
          'text': product?.isCancel == true ? '取消退菜'.tr : '退菜'.tr,
          'type': product?.isCancel == true ? ActionCommonType.cancelReturningDishes : ActionCommonType.returningDishes,
          'buttonType': ActionButtonType.danger,
          'isDisabled': isLock || product == null || (product.status == 0 && product.isCancel != true),
          'isPermission': _baseController.hasPermission(PermissionKey.instantReturn),
        },
        {
          'text': '备注'.tr,
          'type': ActionCommonType.remarks,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || product == null || product.status == 1 || product.isCancel == true,
          'isPermission': _baseController.hasPermission(PermissionKey.instantRemark),
        },
        {
          'text': product?.isGift == true ? '取消赠菜'.tr : '赠菜'.tr,
          'type': product?.isGift == true ? ActionCommonType.cancelGiftDishes : ActionCommonType.giftDishes,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || product == null || product.isCancel == true,
          'isPermission': _baseController.hasPermission(PermissionKey.instantGift),
        },
        {
          'text': '优惠折扣'.tr,
          'type': ActionCommonType.discounts,
          'buttonType': ActionButtonType.primary,
          'isDisabled': false || product == null,
          'isPermission': _baseController.hasPermission(PermissionKey.instantDiscount),
        },
      ].obs,
    );
  }
}
