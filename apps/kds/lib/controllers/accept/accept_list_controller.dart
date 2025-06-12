import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/api/accept/category_list_api.dart';
import 'package:kds/api/accept/production_finish_api.dart';
import 'package:kds/api/accept/production_order_list_api.dart';
import 'package:kds/api/accept/production_order_list_by_api.dart';
import 'package:kds/api/accept/production_recovery_api.dart';
import 'package:kds/controllers/common/call_reminder_controller.dart';
import 'package:kds/model/request/req_list.dart';
import 'package:kds/model/request/req_product_uuid.dart';
import 'package:kds/model/response/resp_category_list.dart';
import 'package:kds/model/response/resp_production.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class AcceptListController extends GetxController {
  final Log _logger = Log(appName: 'AcceptListController');
  Logger get logger => _logger.logger;

  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  final CallReminderController callReminderController = Get.find<CallReminderController>();
  final RxInt _type = 1.obs;
  int get type => _type.value;
  set type(int value) => _type.value = value;

  final RxList<Map<String, dynamic>> _acceptList = <Map<String, dynamic>>[].obs;
  List<Map<String, dynamic>> get acceptList => _acceptList;
  set acceptList(List<Map<String, dynamic>> value) => _acceptList.value = value;

  final RxList<ResponseCategory> _categoryList = <ResponseCategory>[].obs;
  List<ResponseCategory> get categoryList => _categoryList;
  set categoryList(List<ResponseCategory> value) => _categoryList.value = value;

  final RxInt _categoryUuid = 0.obs;
  int get categoryUuid => _categoryUuid.value;
  set categoryUuid(int value) => _categoryUuid.value = value;

  final CategoryListAPI _categoryListAPI = CategoryListAPI();

  /// 返回API响应数据，如果发生错误则返回null
  Future<List<ResponseCategory>?> getCategoryListAPI() async {
    try {
      final response = await _categoryListAPI.getCategoryList();
      // 处理数组
      categoryList = response ?? [];
      return response;
    } catch (error, stackTrace) {
      logger.severe('getCategoryListAPI Error:', error, stackTrace);
      return null;
    }
  }

  final Rx<ResponseProduction> _productionOrderList = ResponseProduction(
    list: [],
    finishedList: FinishedListClass(list: []),
    meta: Meta(pageNo: 1, pageSize: 4, total: 0),
    sendKitchenNum: 0,
  ).obs;
  ResponseProduction get productionOrderList => _productionOrderList.value;
  set productionOrderList(ResponseProduction value) => _productionOrderList.value = value;

  final RxInt _pageNo = 1.obs;
  int get pageNo => _pageNo.value;
  set pageNo(int value) => _pageNo.value = value;
  final RxInt _pageSize = 4.obs;
  int get pageSize => _pageSize.value;
  set pageSize(int value) => _pageSize.value = value;

  final RxInt _total = 0.obs;
  int get total => _total.value;
  set total(int value) => _total.value = value;

  final RxInt _sendKitchenNum = 0.obs;
  int get sendKitchenNum => _sendKitchenNum.value;
  set sendKitchenNum(int value) => _sendKitchenNum.value = value;

  int get lastPageNo {
    if (pageSize <= 0) return 1;
    final result = (total / pageSize).ceil();
    return result < 1 ? 1 : result;
  }

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  //现在的秒级时间戳
  final RxInt _nowTime = 0.obs;
  int get nowTime => _nowTime.value;
  set nowTime(int value) => _nowTime.value = value;

  // 更新当前时间
  void _updateCurrentTime() {
    nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  }

  Timer? _timeUpdateTimer;

  void _startTimeUpdateTimer() {
    _stopTimeUpdateTimer();

    // 初始化时间
    _updateCurrentTime();

    _timeUpdateTimer = Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        _updateCurrentTime();
      },
    );
  }

  void _stopTimeUpdateTimer() {
    _timeUpdateTimer?.cancel();
    _timeUpdateTimer = null;
  }

  final ProductionOrderListAPI _productionOrderListAPI = ProductionOrderListAPI();

  final RxBool _isFetchingProductionOrderList = false.obs;
  bool get isFetchingProductionOrderList => _isFetchingProductionOrderList.value;
  set isFetchingProductionOrderList(bool value) => _isFetchingProductionOrderList.value = value;

  /// 获取订单列表
  Future<ResponseProduction?> getProductionOrderList({bool showLoading = false}) async {
    if (isFetchingProductionOrderList) return null;
    try {
      if (showLoading) {
        isLoading = true;
      }
      isFetchingProductionOrderList = true;
      final response = await _productionOrderListAPI.getProductionOrderList(
        data: ReqList(
          pageNo: pageNo,
          pageSize: pageSize,
        ),
      );
      // 处理数组
      productionOrderList = response!;
      // 更新总数
      if (response.sendKitchenNum > sendKitchenNum && callReminderController.callReminder) {
        //播放mp3
        AudioPlayer().play(AssetSource('media/dingdingding.mp3'));
      }
      sendKitchenNum = response.sendKitchenNum;
      total = response.meta.total;
      // 更新当前页数
      pageNo = response.meta.pageNo == 0 ? 1 : response.meta.pageNo;
      // 更新每页显示条数
      pageSize = response.meta.pageSize;
      //当前页面无数据并且不是第一页的时候页面减1重新请求
      if (response.list.isEmpty && pageNo > 1) {
        pageNo--;
        getProductionOrderList();
      }
      return response;
    } catch (error, stackTrace) {
      logger.severe('getProductionOrderList Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
      isFetchingProductionOrderList = false;
    }
  }

  final ProductionOrderListByCategoryAPI _productionOrderListByCategoryAPI = ProductionOrderListByCategoryAPI();

  final RxBool _isFetchingProductionOrderListByCategory = false.obs;
  bool get isFetchingProductionOrderListByCategory => _isFetchingProductionOrderListByCategory.value;
  set isFetchingProductionOrderListByCategory(bool value) => _isFetchingProductionOrderListByCategory.value = value;

  /// 获取分类菜品
  Future<ResponseProduction?> getProductionOrderListByCategory({bool showLoading = false}) async {
    if (isFetchingProductionOrderListByCategory) return null;
    try {
      if (showLoading) {
        isLoading = true;
      }
      isFetchingProductionOrderListByCategory = true;
      final response = await _productionOrderListByCategoryAPI.getProductionOrderList(
        data: ReqList(
          categoryUuid: categoryUuid,
          pageNo: pageNo,
          pageSize: pageSize,
        ),
      );

      // 处理数组
      productionOrderList = response!;
      // 更新总数
      if (response.sendKitchenNum > sendKitchenNum && callReminderController.callReminder) {
        //播放mp3
        AudioPlayer().play(AssetSource('media/dingdingding.mp3'));
      }
      sendKitchenNum = response.sendKitchenNum;
      // 更新当前页数
      total = response.meta.total;

      pageNo = response.meta.pageNo;
      // 更新每页显示条数
      pageSize = response.meta.pageSize;
      //当前页面无数据并且不是第一页的时候页面减1重新请求
      if (response.list.isEmpty && pageNo > 1) {
        pageNo--;
        getProductionOrderListByCategory();
      }
      return response;
    } catch (error, stackTrace) {
      logger.severe('getProductionOrderListByCategory Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
      isFetchingProductionOrderListByCategory = false;
    }
  }

  final ProductionFinishAPI _productionFinishAPI = ProductionFinishAPI();

  /// 完成菜品
  Future<bool?> productionFinish(int productUuid) async {
    try {
      isLoading = true;
      final response = await _productionFinishAPI.finish(
        ReqProductUuid(productUuid: productUuid),
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (response == true) {
        getAcceptList();
      }
      return response;
    } catch (error, stackTrace) {
      logger.severe('productionFinish Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final ProductionRecoveryAPI _productionRecoveryAPI = ProductionRecoveryAPI();

  /// 恢复菜品
  Future<bool?> productionRecovery(int productUuid) async {
    try {
      isLoading = true;
      final response = await _productionRecoveryAPI.recovery(
        ReqProductUuid(productUuid: productUuid),
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (response == true) {
        getAcceptList();
      }
      return response;
    } catch (error, stackTrace) {
      logger.severe('productionRecovery Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  Future<void> getAcceptList({bool showLoading = true}) async {
    if (type == 1) {
      getProductionOrderList(showLoading: showLoading);
    } else {
      getProductionOrderListByCategory(showLoading: showLoading);
    }
  }

  void _startTimer() {
    _stopTimer();

    _timer = Timer.periodic(
      const Duration(seconds: 15),
      (timer) {
        getAcceptList(showLoading: false);
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  Timer? _timer;

  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() {
    super.onInit();
    pageSize = fontSizeController.currentFontSize == 24 ? 3 : 4;
    getCategoryListAPI();
    getProductionOrderList();
  }

  @override
  void onReady() {
    super.onReady();

    _startTimer();
    _startTimeUpdateTimer(); // 启动时间更新定时器

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [AcceptListController]');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [AcceptListController]');
        _stopTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('refreshWorker 收到 refreshSignal 信号 [AcceptListController]');

        await Future.wait([
          getAcceptList(showLoading: true),
        ]);
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [AcceptListController]: $message');
        // NOTE: 如果是更新分类消息, 则处理
        if (message.isEventProductCategory) {
          getCategoryListAPI();
          return;
        }

        // NOTE: 如果是厨显独占消息, 则处理
        if (message.isEventKitchen || message.isEventDesk) {
          getAcceptList(showLoading: false);
          return;
        }
      },
    );
  }

  @override
  void onClose() {
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    _stopTimer();
    _stopTimeUpdateTimer(); // 停止时间更新定时器

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _refreshWorker?.dispose();
    _refreshWorker = null;

    super.onClose();
  }
}
