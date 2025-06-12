import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/goods/controllers/detail_controller.dart';

mixin MixinTabletCart on GetxController {
  int get deskId;
  int get saleBillUuid;
  int get pollingTime;

  Future<ResponseDeskPing?> Function(int deskId)? get fetchDeskPing;

  void Function()? get onBack;
  bool get isShowMustDialog;

  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 桌台信息
  final Rx<Desk?> _deskInfo = Rx<Desk?>(null);
  Rx<Desk?> get searchDeskInfo => _deskInfo;
  Desk? get deskInfo => _deskInfo.value;
  set deskInfo(Desk? value) {
    if (_deskInfo.value == value) return;
    _deskInfo.value = value;
  }

  // 自助餐是否到期
  bool get isTimeout {
    if (deskInfo?.isBuffet == true && buffetInfo?.remainingOrderingTime == 0) {
      return true;
    }
    return false;
  }

  // 已送厨商品列表（用于显示制作中的状态）
  final RxList<SentKitchenProduct> _sentKitchenProducts = <SentKitchenProduct>[].obs;
  List<SentKitchenProduct> get sentKitchenProducts => _sentKitchenProducts;
  set sentKitchenProducts(List<SentKitchenProduct> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<SentKitchenProduct>().equals(_sentKitchenProducts, value);
    if (areEqual) return;
    _sentKitchenProducts.value = value;
  }

  // 已送厨商品信息
  final Rxn<SentKitchenAmountInfo> _sentKitchenInfo = Rxn<SentKitchenAmountInfo>(null);
  SentKitchenAmountInfo? get sentKitchenInfo => _sentKitchenInfo.value;
  set sentKitchenInfo(SentKitchenAmountInfo? value) {
    if (_sentKitchenInfo.value == value) return;
    _sentKitchenInfo.value = value;
  }

  // 未送厨商品信息
  final Rx<UnsentKitchen?> _unsentKitchenInfo = Rx<UnsentKitchen?>(null);
  UnsentKitchen? get unsentKitchenInfo => _unsentKitchenInfo.value;
  set unsentKitchenInfo(UnsentKitchen? value) {
    if (_unsentKitchenInfo.value == value) return;
    _unsentKitchenInfo.value = value;
  }

  // 自助餐信息
  final Rx<ResponseBuffet?> _buffetInfo = Rx<ResponseBuffet?>(null);
  ResponseBuffet? get buffetInfo => _buffetInfo.value;
  set buffetInfo(ResponseBuffet? value) {
    if (_buffetInfo.value == value) return;
    _buffetInfo.value = value;
  }

  // 优惠折扣信息
  final RxList<ResponseSaleOrder> _saleOrderList = <ResponseSaleOrder>[].obs;
  List<ResponseSaleOrder> get saleOrderList => _saleOrderList.toList();
  set saleOrderList(List<ResponseSaleOrder> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<ResponseSaleOrder>().equals(_saleOrderList, value);
    if (areEqual) return;
    _saleOrderList.value = value;
  }

  // 所有商品列表
  List<Product> get productList => saleOrderList[0].productList.toList();

  // 必点商品列表
  final RxList<MustGoodsItem> _mustGoodsList = <MustGoodsItem>[].obs;
  RxList<MustGoodsItem> get mustGoodsSearchList => _mustGoodsList;
  List<MustGoodsItem> get mustGoodsList => _mustGoodsList.toList();
  set mustGoodsList(List<MustGoodsItem> value) {
    // 检查两个列表是否相等
    final listEquality = ListEquality<MustGoodsItem>();
    bool areEqual = listEquality.equals(_mustGoodsList, value);
    if (areEqual) return;
    _mustGoodsList.value = value;
  }

  final RxList<GoodsBuffet> _mustProducts = <GoodsBuffet>[].obs;
  RxList<GoodsBuffet> get mustProducts => _mustProducts;
  set mustProducts(List<GoodsBuffet> value) {
    // 检查两个列表是否相等
    final listEquality = ListEquality<GoodsBuffet>();
    bool areEqual = listEquality.equals(_mustProducts, value);
    if (areEqual) return;
    _mustProducts.value = value;
  }

  //
  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _updateTimestamp = 0;
  //
  Worker? _workerRefresh;
  Worker? _workerMust;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;
  int _responseUpdateTimestamp = 0;

  @override
  void onReady() {
    super.onReady();

    loadDeskPingFromAPI(forceRefresh: true);

    // 监听刷新按钮
    _workerRefresh = ever(
      RefreshService.to.signal,
      (_) => loadDeskPingFromAPI(forceRefresh: true),
    );

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        _logger.severe('appLifeCycleStartWorker 收到 startTimerSignal 信号');
        loadDeskPingFromAPI(forceRefresh: true);
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        _logger.severe('appLifeCycleStopWorker 收到 stopTimerSignal 信号');
        stopTimer();
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [MixinTabletCart]: $message');

        // NOTE: 如果是更新桌台消息且桌台ID相同, 或者更新订单消息且订单ID相同, 则刷新购物车
        if ((message.isEventDesk && message.data?['desk_uuid'] == deskId) ||
            (message.isEventUpdateOrder && message.data?['sale_bill_uuid'] == saleBillUuid)) {
          // NOTE: 如果更新时间大于购物车更新时间，则刷新购物车
          if (message.updateTime > _responseUpdateTimestamp) {
            loadDeskPingFromAPI(forceRefresh: true);
            debugPrint('WebSocketService 收到消息 [MixinTabletCart]: 更新时间大于购物车更新时间，刷新购物车');
          }
        }
      },
    );
  }

  @override
  void onClose() {
    /// 销毁 websocket 订阅
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    //
    _workerRefresh?.dispose();
    _workerRefresh = null;
    _workerMust?.dispose();
    _workerMust = null;
    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    //
    stopTimer();
    //
    super.onClose();
  }

  void _startTimer() {
    stopTimer();
    _timer = Timer.periodic(
      // NOTE: 接了 websocket 后, 30s 轮询一次
      Duration(seconds: pollingTime),
      (timer) {
        // _logger.severe('桌台订单定时刷新任务 ${timer.tick}');
        // 记录定时请求时间
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadDeskPingFromAPI(
          forceRefresh: false,
        );
      },
    );
  }

  void stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  // 加载接口
  bool _isLoading = false;
  Future<bool> loadDeskPingFromAPI({
    bool forceRefresh = false,
  }) async {
    if (_isLoading) return false;
    _isLoading = true;
    try {
      final res = await fetchDeskPing?.call(deskId);
      // 检查数据是否过期
      if (_updateTimestamp > _timerExecuteTimestamp && !forceRefresh) return false;
      if (res == null) return false;
      // 自助餐信息
      buffetInfo = res.buffet;
      // 桌台信息
      deskInfo = res.deskInfo;
      // 已送厨商品列表
      sentKitchenProducts = res.sentKitchenProducts?.list ?? [];
      sentKitchenInfo = res.sentKitchen.amountInfo;
      // 未送厨商品信息
      unsentKitchenInfo = res.unsentKitchen;
      saleOrderList = res.saleOrderList ?? [];
      mustProducts = res.mustProducts?.list ?? [];
      // 必选商品
      mustGoodsList = res.mustPlans.list;
      // 记录最后更新时间
      _updateTimestamp = DateTime.now().millisecondsSinceEpoch;

      /// NOTE: 返回中的更新时间
      _responseUpdateTimestamp = res.updateTime ?? 0;
      return true;
    } catch (error, stackTrace) {
      _logger.severe('loadDeskPingFromAPI Error:', error, stackTrace);
      return false;
    } finally {
      _isLoading = false;
      if (deskInfo?.isAvailable == true || deskInfo?.isWait == true || deskInfo?.saleBillUuid == 0) {
        if (isShowMustDialog) {
          Get.back();
        }
        GoodsDetailController.hideDialog();
        onBack?.call();
      }
    }
  }

  void deskInfoUpdate({bool? isLock}) {
    _deskInfo.update((data) {
      if (data != null && isLock != null) {
        data.isLock = isLock;
      }
    });
  }
}
