import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mobile/api/buffet/buffet_api.dart';
import 'package:mobile/api/desk/desk_api.dart';
import 'package:mobile/components/open/open_tips_dialog.dart';
import 'package:mobile/controllers/base/main_controller.dart';
import 'package:mobile/controllers/common/drawer_controller.dart';
import 'package:mobile/controllers/notification/notification_controller.dart';
import 'package:mobile/pages/home/controller.dart';
import 'package:mobile/pages/home/main.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_model/desk/request/desk/open.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class DeskOpenContainerController {
  static bool isLoading = false;
  static bool isCalling = false;

  static Future<void> open({
    required int deskUuid,
    required String deskNo,
  }) async {
    try {
      if (isLoading) return;
      isLoading = true;

      if (Get.isRegistered<HomePageController>()) {
        final homePageController = Get.find<HomePageController>();

        final result = await homePageController.loadDataFromAPI(forceRefresh: true);
        if (result == null) {
          throw Exception('loadDeskFromAPI 失败');
        }

        if (result.isAvailable) {
          await onClickAvailable(result);
          return;
        }

        if (result.isLock) {
          await onClickLock(result);
          return;
        }

        if (result.isWait) {
          await onClickWait(result);
          return;
        }

        if (result.isCountDown) {
          await onClickBuffet(result);
          return;
        }

        if (result.isCountUp) {
          await onClickNotBuffet(result);
          return;
        }
      } else {
        throw Exception('DeskBindController is not registered');
      }
    } catch (error, stackTrace) {
      DialogManager.showErrorDialog(message: kDebugMode ? error.toString() : '开桌失败');
      debugPrint('OpenMenuController open Error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
  }

  static Future<bool> onConfirm(DeskOpenModel data) async {
    debugPrint('onConfirm: ${data.toJson()}');

    final uuid = data.uuid ?? 0;
    if (uuid == 0) {
      NotificationController.showNotification(message: 'onOpenDesk 参数错误'.tr, isError: true);
      return false;
    }

    final response = await DeskAPI().openDesk(
      RequestDeskOpen(
        deskUuid: uuid,
        isBuffet: data.isBuffet,
        buffetCustomerTypes: data.buffetCustomers
            .map(
              (e) => RequestDeskBuffetCustomerType(mealNum: e.count, uuid: e.uuid),
            )
            .toList(),
        buffetUuids: data.selectedBuffetUuids,
        mealNum: data.totalCustomerCount,
        remark: data.remark,
      ),
      options: ExtraRequestOptions(
        showFailToast: true,
        showSuccessToast: true,
      ),
    );

    final success = response != null && response.saleBillUuid > 0 && response.saleOrderUuid > 0;

    // 跳转
    if (success) {
      if (Get.isRegistered<HomePageController>()) {
        final controller = Get.find<HomePageController>();
        final data = await controller.loadDataFromAPI(forceRefresh: true);

        if (data != null && !data.isAvailable && !data.isWait) {
          Future.microtask(() {
            toDeskOrderView(
              DeskStorageModel(
                deskId: uuid,
                saleBillUuid: response.saleBillUuid,
                saleOrderUuid: response.saleOrderUuid,
              ),
            );
          });
        }
      }
    }

    return success;
  }

  static void onCancel() {
    CustomDrawerController.closeDrawer();
  }

  static Future<void> onClickAvailable(Desk data) async {
    if (Get.isRegistered<BaseInfoController>()) {
      final baseInfo = Get.find<BaseInfoController>();
      await baseInfo.loadBaseInfoFromAPI();

      if (!baseInfo.isCustomerOrder) {
        await NotificationController.onCallService(data.uuid);
        return;
      }
    } else {
      throw Exception('BaseInfoController is not registered');
    }

    bool isEnableBuffet = false;
    if (Get.isRegistered<ConfigController>()) {
      final config = Get.find<ConfigController>();
      isEnableBuffet = config.isEnableBuffet;
    }

    // NOTE: 2.1 新增逻辑 - 如果没开启自助餐，且开启了默认人数，则直接开桌
    if (!isEnableBuffet && (data.isOpenDefaultPeopleNum ?? false) == true && (data.defaultPeopleNum ?? 0) > 0) {
      final DeskOpenModel deskOpenModel = DeskOpenModel(
        uuid: data.uuid,
        isBuffet: false,
        selectedBuffetUuids: [],
        buffetCustomers: [],
        notBuffetCustomerCount: data.defaultPeopleNum ?? 0,
        remark: '',
      );

      await onConfirm(deskOpenModel);

      return;
    }

    List<Buffet>? buffetList;
    try {
      final response = await BuffetAPI().getBuffetList(
        options: ExtraRequestOptions(showGlobalLoading: true, showFailToast: true),
      );
      buffetList = response?.list;
    } catch (error, stackTrace) {
      debugPrint('OpenMenuController getBuffetList Error: $error\n$stackTrace');
    }

    if (!Get.isRegistered<CustomDrawerController>()) return;

    final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
    drawerController.openEndDrawer(
      DrawerType.openDesk,
      {
        'deskUuid': data.uuid,
        'deskNo': data.deskNo,
        'isBuffetOrNot': isEnableBuffet,
        'buffetList': buffetList,
        'isOpenDefaultPeopleNum': data.isOpenDefaultPeopleNum ?? false,
        'defaultPeopleNum': data.defaultPeopleNum ?? 0,
      },
    );
  }

  static Future<void> onClickLock(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      NotificationController.showNotification(message: 'onClickLockDesk 参数错误'.tr, isError: true);
      return;
    }

    Future.microtask(() {
      toDeskOrderView(
        DeskStorageModel(
          deskId: deskId,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: 0,
        ),
      );
    });
  }

  static Future<void> onClickWait(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      NotificationController.showNotification(message: 'onClickWait 参数错误'.tr, isError: true);
      return;
    }

    DialogManager.showToast('桌台已关闭'.tr);
  }

  static Future<void> onClickBuffet(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      NotificationController.showNotification(message: 'onClickBuffet 参数错误'.tr, isError: true);
      return;
    }
    final result = await showOpenTipsDialog();

    if (result == true) {
      Future.microtask(() {
        toDeskOrderView(
          DeskStorageModel(
            deskId: deskId,
            saleBillUuid: saleBillUuid,
            saleOrderUuid: 0,
          ),
        );
      });
    }
  }

  static Future<void> onClickNotBuffet(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      NotificationController.showNotification(message: 'onClickNotBuffet 参数错误'.tr, isError: true);
      return;
    }

    Future.microtask(() {
      toDeskOrderView(
        DeskStorageModel(
          deskId: deskId,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: 0,
        ),
      );
    });
  }

  static Future<void> toDeskOrderView(DeskStorageModel data) async {
    try {
      CustomDrawerController.closeDrawer();

      debugPrint('toDeskOrderView: ${data.toJson()}');
      Get.rootDelegate.toNamed(HomeRoutes.desk.homeRoute);
    } catch (error, stackTrace) {
      debugPrint('toDeskOrderView Error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
}
