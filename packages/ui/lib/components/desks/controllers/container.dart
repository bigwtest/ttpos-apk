import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/buffet/response/item/item.dart' as buffet_item;
import 'package:ttpos_model/buffet/response/list/list.dart';
import 'package:ttpos_model/desk/response/category/category.dart';
import 'package:ttpos_model/desk/response/category/models/desk_region.dart';
import 'package:ttpos_model/desk/response/category/models/desk_region_item.dart';
import 'package:ttpos_model/desk/response/category/models/desk_type.dart';
import 'package:ttpos_model/desk/response/category/models/desk_type_item.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/desk/response/list/list.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/category.dart';
import 'package:ttpos_ui/components/desks/models/extra.dart';
import 'package:ttpos_ui/theme/theme.dart';

part 'mixin/buffet.dart';
part 'mixin/desks.dart';
part 'mixin/filter.dart';
part 'mixin/timer.dart';

class DeskContainerInternalController extends GetxController
    with MixinDesks, MixinFilter, MixinBuffet, MixinTimerWatcher {
  final Future<DeskList?> Function({
    bool showGlobalLoading,
    MetaRequest? meta,
  }) getDeskList;
  final Future<DeskCategory?> Function() getDeskCategory;
  final Future<BuffetList?> Function() getBuffetList;

  DeskContainerInternalController({
    required this.getDeskList,
    required this.getDeskCategory,
    required this.getBuffetList,
  });

  @override
  String get _appName => 'DeskContainerInternalController';
  @override
  Logger get _logger {
    try {
      return Get.isRegistered<LoggerController>(tag: _appName)
          ? Get.find<LoggerController>(tag: _appName).logger
          : Get.put(LoggerController(appName: _appName), tag: _appName).logger;
    } catch (e) {
      return Get.put(LoggerController(appName: _appName), tag: _appName).logger;
    }
  }

  @override
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  @override
  Future<DeskList?> Function({
    bool showGlobalLoading,
    MetaRequest? meta,
  }) get _getDeskListFromAPI => getDeskList;

  @override
  Future<DeskCategory?> Function() get _getDeskCategoryFromAPI => getDeskCategory;

  @override
  Future<BuffetList?> Function() get _getBuffetListFromAPI => getBuffetList;

  @override
  final RxList<Desk> _desks = <Desk>[].obs;

  @override
  final Rx<BaseListMeta> _desksMeta = BaseListMeta(
    total: 0,
    pageNo: 0,
    pageSize: 1000,
  ).obs;

  @override
  final Rx<DeskCategory> _desksCategory = DeskCategory(
    region: DeskRegion(
      list: [],
    ),
    type: DeskType(
      list: [],
    ),
  ).obs;

  @override
  final RxList<Desk> _deskListFiltered = <Desk>[].obs;

  @override
  final Rx<Extra> _deskExtraFiltered = Extra(
    availableNum: 0,
    lockNum: 0,
    occupyBuffetNum: 0,
    occupyNotBuffetNum: 0,
    occupyWaitNum: 0,
    totalNum: 0,
  ).obs;

  @override
  final RxList<buffet_item.Buffet> _buffetList = <buffet_item.Buffet>[].obs;

  final RxInt _currentActionDeskUuid = 0.obs;
  bool get isActionAvailable => _currentActionDeskUuid.value == 0;
  set currentActionDeskUuid(int value) {
    // 如果当前是 0, 入参非 0 则赋值，反之亦然
    if ((_currentActionDeskUuid.value == 0) != (value == 0)) {
      _currentActionDeskUuid.value = value;
    }
  }
}
