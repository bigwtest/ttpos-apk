part of '../main_controller.dart';

mixin BaseInfoPermission on GetxController {
  Rx<BaseInfo?> get data;

  List<String> get permissions => data.value?.permissions ?? [];

  bool get hasTurnTable => permissions.any(
        (e) => e == PermissionKey.turnTable.asString,
      );

  bool get hasClearTable => permissions.any(
        (e) => e == PermissionKey.clearTable.asString,
      );

  bool get hasMergeTable => permissions.any(
        (e) => e == PermissionKey.mergeTable.asString,
      );

  bool get hasDiscount => permissions.any(
        (e) => e == PermissionKey.discount.asString,
      );

  bool get hasPrice => permissions.any(
        (e) => e == PermissionKey.price.asString,
      );

  bool get hasReturnDish => permissions.any(
        (e) => e == PermissionKey.returnDish.asString,
      );

  bool get hasRemark => permissions.any(
        (e) => e == PermissionKey.remark.asString,
      );

  bool get hasSettle => permissions.any(
        (e) => e == PermissionKey.settle.asString,
      );

  bool get hasTransferDish => permissions.any(
        (e) => e == PermissionKey.transferDish.asString,
      );

  bool get hasGiftDish => permissions.any(
        (e) => e == PermissionKey.giftDish.asString,
      );

  bool get hasAddMember => permissions.any(
        (e) => e == PermissionKey.addMember.asString && data.value?.company.isModuleAvailableMember?.toSafetyInt() == 1,
      );

  bool get hasPeople => permissions.any(
        (e) => e == PermissionKey.people.asString,
      );

  bool get hasAdjustBuffet => permissions.any(
        (e) => e == PermissionKey.adjustBuffet.asString,
      );

  // bool hasPermission(
  //   PermissionKey key,
  // ) {
  //   for (var element in permissions) {
  //     // 检查当前节点，找到就立即返回
  //     if (element == key.asString) {
  //       return true;
  //     }
  //   }

  //   return false;
  // }
}
