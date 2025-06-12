part of '../main_controller.dart';

mixin BaseInfoPermission on GetxController {
  Rx<BaseInfo?> get data;

  List<Permission> get permissions => data.value?.permissions ?? [];

  bool get hasNoPermission => permissions.isEmpty;

  bool get hasInstantMain => permissions.any(
        (e) =>
            e.path == PermissionKey.instantMain.asString &&
            data.value?.cashier.orderMethod.isCashierOrder.toSafetyInt() == 1,
      );

  bool get hasDeskMain => permissions.any(
        (e) =>
            e.path == PermissionKey.deskMain.asString &&
            data.value?.cashier.orderMethod.isTableOrder.toSafetyInt() == 1,
      );

  bool get hasOrderMain => permissions.any(
        (e) => e.path == PermissionKey.orderMain.asString,
      );

  bool get hasPrintsMain => permissions.any(
        (e) => e.path == PermissionKey.printsMain.asString,
      );

  bool get hasPrintsPrint => permissions.any(
        (e) => e.path == PermissionKey.printsPrint.asString,
      );

  bool get hasSetting => permissions.any(
        (e) => e.path == PermissionKey.setting.asString,
      );

  bool get hasRecharge => permissions.any(
        (e) => e.path == PermissionKey.recharge.asString && isModuleAvailableMember,
      );

  bool get hasBusinessData => permissions.any(
        (e) => e.path == PermissionKey.businessData.asString,
      );

  bool get hasHandover => permissions.any(
        (e) => e.path == PermissionKey.handover.asString,
      );

  bool get hasOpenBox => permissions.any(
        (e) => e.path == PermissionKey.openBox.asString,
      );

  bool get hasAddMember => permissions.any(
        (e) => e.path == PermissionKey.addMember.asString && isModuleAvailableMember,
      );

  bool get hasAcceptOrder => permissions.any(
        (e) => e.path == PermissionKey.acceptOrder.asString && isModuleAvailableH5Order,
      );

  bool get hasSoldOut => permissions.any(
        (e) => e.path == PermissionKey.soldOut.asString,
      );

  bool get hasDeskClear => hasPermission(PermissionKey.deskClear);

  bool get isModuleAvailableMember => data.value?.company.isModuleAvailableMember?.toSafetyInt() == 1;

  bool get isModuleAvailableH5Order => data.value?.company.isModuleAvailableH5Order?.toSafetyInt() == 1;

  bool get isModuleAvailableOldOrder => data.value?.company.isModuleAvailableOldOrder?.toSafetyInt() == 1;

  bool hasPermission(
    PermissionKey key, {
    List<Permission>? list,
  }) {
    list ??= permissions;

    for (var element in list) {
      // 检查当前节点，找到就立即返回
      if (element.path == key.asString) {
        return true;
      }

      // 检查子节点，如果找到也立即返回
      if (element.children.isNotEmpty) {
        final hasChildPermission = hasPermission(key, list: element.children);
        if (hasChildPermission) {
          return true;
        }
      }
    }

    return false;
  }

  void _handleRoute() {
    debugPrint('_handleRoute: ${Get.currentRoute}');

    if (data.value == null) return;

    if (!Get.isRegistered<MenuController>()) return;

    final menuController = Get.find<MenuController>();

    debugPrint('_handleRoute: ${menuController.currentRoute.value}');

    if (menuController.currentRoute.value == HomeRoutes.instant.homeRoute && !hasInstantMain) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value == HomeRoutes.desks.homeRoute && !hasDeskMain) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value.startsWith('/home/desk/') && !hasDeskMain) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value == HomeRoutes.orders.homeRoute && !hasOrderMain) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value == HomeRoutes.accept.homeRoute && !hasAcceptOrder) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value == HomeRoutes.soldOut.homeRoute && !hasSoldOut) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value == HomeRoutes.settings.homeRoute && !hasSetting) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }

    if (menuController.currentRoute.value == HomeRoutes.prints.homeRoute && !hasPrintsPrint) {
      menuController.setCurrentRoute(HomeRoutes.empty.homeRoute);
      _showPermissionToast();
      return;
    }
  }

  static void _showPermissionToast() {
    // NOTE: 本来我觉得提示一下用户是合理的，但产品和测试说不要
    // DialogManager.showToast('您无权访问此功能, 请尝试刷新。'.tr, duration: const Duration(seconds: 5));
  }

  Worker? _permissionWorker;

  @override
  void onInit() {
    super.onInit();

    _permissionWorker = ever(
      data,
      (_) {
        _handleRoute();
      },
    );
  }

  @override
  void onClose() {
    _permissionWorker?.dispose();
    _permissionWorker = null;
    super.onClose();
  }
}
