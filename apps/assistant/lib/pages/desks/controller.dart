import 'dart:convert';

import 'package:assistant/api/auth/auth_api.dart';
import 'package:assistant/api/buffet/buffet_api.dart';
import 'package:assistant/api/desk/desk_api.dart';
import 'package:assistant/api/order/is_cell_close.dart';
import 'package:assistant/pages/home/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/buffet/response/list/list.dart';
import 'package:ttpos_model/desk/request/desk/close.dart';
import 'package:ttpos_model/desk/request/desk/open.dart';
import 'package:ttpos_model/desk/response/category/category.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/desk/response/list/list.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';

class DesksMainController extends GetxController {
  final Log _logger = Log(appName: 'DesksMainController');
  Logger get logger => _logger.logger;

  static Future<void> onEnterDesksRoute() async {
    final data = await getDeskInfoFromStorage();
    if (data == null) {
      await toDeskListView();
      return;
    }

    await toDeskOrderView(data);
  }

  static Future<void> toDeskOrderView(DeskStorageModel data) async {
    try {
      debugPrint('toDeskOrderView: ${data.toJson()}');
      saveDeskInfoToStorage(data);
      Get.rootDelegate.toNamed(
        '${data.deskId}'.deskRoute,
        parameters: {
          'saleBillUuid': data.saleBillUuid.toString(),
          'saleOrderUuid': data.saleOrderUuid.toString(),
        },
      );
    } catch (error, stackTrace) {
      debugPrint('toDeskOrderView Error: $error\n$stackTrace');
    }
  }

  static Future<void> toDeskListView() async {
    try {
      Get.rootDelegate.toNamed(HomeRoutes.desks.homeRoute);
    } catch (error, stackTrace) {
      debugPrint('toDeskListView Error: $error\n$stackTrace');
    }
  }

  static Future<void> backDeskListView({bool immediate = true}) async {
    try {
      await removeDeskInfoFromStorage();

      if (!immediate) await Future.delayed(const Duration(milliseconds: 500));
      Get.rootDelegate.offNamed(HomeRoutes.desks.homeRoute);
    } catch (error, stackTrace) {
      debugPrint('backDeskListView Error: $error\n$stackTrace');
    }
  }

  static Future<void> saveDeskInfoToStorage(DeskStorageModel data) async {
    try {
      final storage = Get.find<SharedPreferencesWithCache>();
      await storage.setString(StorageKey.deskCurrentInfo.asString, jsonEncode(data.toJson()));
    } catch (error, stackTrace) {
      debugPrint('saveDeskInfoToStorage Error: $error\n$stackTrace');
    }
  }

  static Future<void> removeDeskInfoFromStorage() async {
    try {
      final storage = Get.find<SharedPreferencesWithCache>();
      await storage.remove(StorageKey.deskCurrentInfo.asString);
    } catch (error, stackTrace) {
      debugPrint('removeDeskInfoFromStorage Error: $error\n$stackTrace');
    }
  }

  static Future<DeskStorageModel?> getDeskInfoFromStorage() async {
    try {
      final storage = Get.find<SharedPreferencesWithCache>();
      final data = storage.getString(StorageKey.deskCurrentInfo.asString);
      return data != null ? DeskStorageModel.fromJson(jsonDecode(data)) : null;
    } catch (error, stackTrace) {
      debugPrint('getDeskInfoFromStorage Error: $error\n$stackTrace');
      return null;
    }
  }

  Future<Desk?> getDeskData(int uuid) async {
    final response = await DeskAPI().getDesk(
      uuid,
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );
    return response;
  }

  /// 处理开桌
  Future<bool> onOpenDesk(DeskOpenModel data) async {
    final uuid = data.uuid ?? 0;
    if (uuid == 0) {
      DialogManager.showToast('onOpenDesk 参数错误'.tr);
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
      ),
    );
    final success = response != null && response.saleBillUuid > 0 && response.saleOrderUuid > 0;
    // 跳转
    if (success) {
      Future.microtask(() {
        DesksMainController.toDeskOrderView(
          DeskStorageModel(
            deskId: uuid,
            saleBillUuid: response.saleBillUuid,
            saleOrderUuid: response.saleOrderUuid,
          ),
        );
      });
    }
    //
    return success;
  }

  /// 处理校验密码
  Future<bool> onCheckPassword({required String password}) async {
    if (password.isEmpty) {
      DialogManager.showToast('密码不能为空'.tr);
      return false;
    }

    return await AuthAPI().verifyAdvancedPassword(password: password);
  }

  /// 处理关桌
  Future<bool> onCloseDesk(Desk data, {String? password, String? reason}) async {
    final deskId = data.uuid;
    if (deskId == 0) {
      DialogManager.showToast('onCloseDesk 参数错误'.tr);
      return false;
    }

    final response = await DeskAPI().closeDesk(
      RequestDeskClose(
        uuid: deskId,
        reason: reason ?? '[default]',
        password: password,
      ),
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );

    return response;
  }

  /// 处理清台
  Future<bool> onCleanDesk(Desk data) async {
    final deskId = data.uuid;

    if (deskId == 0) {
      DialogManager.showToast('onCleanDesk 参数错误'.tr);
      return false;
    }

    final response = await DeskAPI().cleanDesk(
      deskId,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
    return response;
  }

  /// 处理自助餐
  Future<void> onClickBuffetDesk(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      DialogManager.showToast('onClickBuffetDesk 参数错误'.tr);
      return;
    }

    Future.microtask(() {
      // 跳转
      DesksMainController.toDeskOrderView(
        DeskStorageModel(
          deskId: deskId,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: 0,
        ),
      );
    });
  }

  /// 处理非自助餐
  Future<void> onClickNotBuffetDesk(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      DialogManager.showToast('onClickNotBuffetDesk 参数错误'.tr);
      return;
    }

    Future.microtask(() {
      // 跳转
      DesksMainController.toDeskOrderView(
        DeskStorageModel(
          deskId: deskId,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: 0,
        ),
      );
    });
  }

  /// 处理锁定
  Future<void> onClickLockDesk(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 || saleBillUuid == null) {
      DialogManager.showToast('onClickLockDesk 参数错误'.tr);
      return;
    }
    // 跳转
    Future.microtask(() {
      DesksMainController.toDeskOrderView(
        DeskStorageModel(
          deskId: deskId,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: 0,
        ),
      );
    });
  }

  /// 处理关桌校验
  Future<(bool, BaseList<Product>?, String, bool)> onClickClose(Desk data) async {
    final deskId = data.uuid;
    final saleBillUuid = data.saleBillUuid;

    if (deskId == 0 && saleBillUuid == null) {
      DialogManager.showToast('onClickClose 参数错误'.tr);
      return (false, null, '请求参数错误'.tr, false);
    }

    final response = await OrderIsCellCloseAPI().isCellClose(
      deskUuid: deskId,
      saleBillUuid: saleBillUuid ?? 0,
      options: ExtraRequestOptions(
        showGlobalLoading: true,
      ),
    );

    return response;
  }

  Future<BuffetList?> getBuffetList() async {
    try {
      final response = await BuffetAPI().getBuffetList(
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      return response;
    } catch (error, stackTrace) {
      logger.info('getBuffetList Error: $error\n$stackTrace');
      return null;
    }
  }

  Future<DeskList?> getDeskList({
    bool showGlobalLoading = false,
    MetaRequest? meta,
  }) async {
    try {
      final response = await DeskAPI().getDeskList(
        options: ExtraRequestOptions(
          showGlobalLoading: showGlobalLoading,
          showFailToast: true,
        ),
        meta: meta,
      );
      return response;
    } catch (error, stackTrace) {
      logger.info('getDeskList Error: $error\n$stackTrace');
      return null;
    }
  }

  Future<DeskCategory?> getDeskCategoryList() async {
    try {
      final response = await DeskAPI().getDeskCategory(
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      return response;
    } catch (error, stackTrace) {
      logger.info('getDeskCategoryList Error: $error\n$stackTrace');
      return null;
    }
  }
}
