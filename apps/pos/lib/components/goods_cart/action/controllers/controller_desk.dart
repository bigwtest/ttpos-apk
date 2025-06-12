part of '../view/index.dart';

mixin GoodsCartActionTaskControllerMixin on GetxController {
  // 权限
  final BaseInfoController _baseController = Get.find<BaseInfoController>();

  // ==== 桌台 ====
  RxList<Map<String, dynamic>> _tableActionList(
    ResponseCart? cart,
    ResponseCartProduct? product,
    bool hasUnsentProducts,
  ) {
    bool isBuffet = cart?.buffet != null;
    bool isLock = cart?.isLock ?? false;
    bool isCustomer = (product?.aboutBuffet.isCustomer ?? false) || (product?.aboutBuffet.isDelay ?? false);

    return RxList<Map<String, dynamic>>.from(
      [
        {
          'text': '返回'.tr,
          'type': ActionCommonType.returns,
          'buttonType': ActionButtonType.primary,
          'isDisabled': false,
          'isPermission': true,
        },
        {
          'text': '删除'.tr,
          'type': ActionCommonType.delete,
          'buttonType': ActionButtonType.danger,
          'isDisabled': isLock || product == null || (product.status == 1 && product.isCancel != true) || isCustomer,
          'isPermission': _baseController.hasPermission(PermissionKey.deskDelete),
        },
        {
          'text': '价格'.tr,
          'type': ActionCommonType.price,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || product == null || product.isCancel == true || isCustomer,
          'isPermission': _baseController.hasPermission(PermissionKey.deskPrice),
        },
        {
          'text': '人数'.tr,
          'type': ActionCommonType.adjustPeople,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock,
          'isPermission': !isBuffet && _baseController.hasPermission(PermissionKey.deskNumberPeople),
        },
        {
          'text': '调整自助餐'.tr,
          'type': ActionCommonType.adjustBuffet,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || (cart?.saleOrderList.length ?? 1) > 1,
          'isPermission': isBuffet && _baseController.hasPermission(PermissionKey.deskAdjust),
        },
        {
          'text': '转台'.tr,
          'type': ActionCommonType.turntable,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock,
          'isPermission': _baseController.hasPermission(PermissionKey.deskTurnTable),
        },
        {
          'text': '送厨'.tr,
          'type': ActionCommonType.sendingKitchen,
          'buttonType': ActionButtonType.primary,
          'isDisabled': isLock || !hasUnsentProducts,
          'isPermission': _baseController.hasPermission(PermissionKey.deskSendKitchen),
        },
        {
          'text': product?.isCancel == true ? '取消退菜'.tr : '退菜'.tr,
          'type': product?.isCancel == true ? ActionCommonType.cancelReturningDishes : ActionCommonType.returningDishes,
          'buttonType': ActionButtonType.danger,
          'isDisabled': isLock || product == null || (product.status == 0 && product.isCancel != true) || isCustomer,
          'isPermission': _baseController.hasPermission(PermissionKey.instantReturn),
        },
        {
          'text': '清台'.tr,
          'type': ActionCommonType.orderCancel,
          'buttonType': ActionButtonType.danger,
          'isDisabled': isLock,
          'isPermission': _baseController.hasPermission(PermissionKey.deskClear),
        },
        {
          'text': '其他'.tr,
          'type': ActionCommonType.otherDialog,
          'buttonType': ActionButtonType.primary,
          'isDisabled': false,
          'isPermission': true,
          'list': [
            {
              'text': '并台'.tr,
              'type': ActionCommonType.parallelPlatform,
              'buttonType': ActionButtonType.primary,
              'isDisabled': isLock || (cart?.saleOrderList.length ?? 1) > 1,
              'isPermission': !isBuffet && _baseController.hasPermission(PermissionKey.deskMerge),
            },
            {
              'text': '备注'.tr,
              'type': ActionCommonType.remarks,
              'buttonType': ActionButtonType.primary,
              'isDisabled': isLock || product == null || product.status == 1 || product.isCancel == true || isCustomer,
              'isPermission': _baseController.hasPermission(PermissionKey.deskRemark),
            },
            {
              'text': '转菜'.tr,
              'type': ActionCommonType.transferDishes,
              'buttonType': ActionButtonType.primary,
              'isDisabled': isLock || product == null || isCustomer,
              'isPermission': _baseController.hasPermission(PermissionKey.deskTransferDishes),
            },
            {
              'text': product?.isGift == true ? '取消赠菜'.tr : '赠菜'.tr,
              'type': product?.isGift == true ? ActionCommonType.cancelGiftDishes : ActionCommonType.giftDishes,
              'buttonType': ActionButtonType.primary,
              'isDisabled': isLock || product == null || isCustomer || product.isCancel == true,
              'isPermission': _baseController.hasPermission(PermissionKey.deskGift),
            },
          ].obs,
        },
        {
          'text': '优惠折扣'.tr,
          'type': ActionCommonType.discounts,
          'buttonType': ActionButtonType.primary,
          'isDisabled': false || product == null,
          'isPermission': _baseController.hasPermission(PermissionKey.deskDiscount),
        },
      ].obs,
    );
  }
}
