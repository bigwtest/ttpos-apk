import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/goods/response/flavors/flavors.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

//===========================================================================
// 商品列表控制器
//===========================================================================

mixin MixinGoodsList on GetxController {
  bool get isSort;
  // 是否为自助餐
  bool get initIsBuffet;
  // 是否监听扫码
  bool get isListenScan;
  void Function(GoodsProduct detail, {int? flavorId})? get onDetailChange;
  // 获取商品列表接口
  Future<BaseList<GoodsProduct>?> Function(BasePageQuery data)? get fetchGoodsBaseList;
  // 获取自助餐商品列表
  Future<BaseList<GoodsBuffet>?> Function()? get fetchBuffetList;

  /// 轮询周期
  Duration? get pollingGoodsBaseListDuration;

  // store
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  ConfigController get _configController {
    try {
      return Get.find<ConfigController>();
    } catch (e) {
      return Get.put(ConfigController());
    }
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) {
    if (_isLoading.value == value) return;
    try {
      _isLoading.value = value;
    } catch (error, stackTrace) {
      _logger.severe(
        '设置_isLoading报错 Error: $error\n$stackTrace',
      );
    }
  }

  // 是否为自助餐
  final RxBool _isBuffet = false.obs;
  bool get isBuffet => _isBuffet.value;
  set isBuffet(bool value) {
    if (_isBuffet.value == value) return;
    //
    _isBuffet.value = value;
  }

  // 查询条件
  final Rx<BasePageQuery> _basePageQuery = BasePageQuery(
    pageNo: 1,
    pageSize: 500,
  ).obs;
  BasePageQuery get basePageQuery => _basePageQuery.value;

  // 基础缓存数据
  final RxList<GoodsProduct> _goodsBaseList = <GoodsProduct>[].obs;
  RxList<GoodsProduct> get searchGoodsBaseList => _goodsBaseList; // 暴露给商品控制用
  List<GoodsProduct> get goodsBaseList {
    List<GoodsProduct> list = _goodsBaseList.toList();
    // 是否显示售罄商品
    if (!_configController.isSoldOutProductVisible) {
      list = [...list.where((item) => !item.isSoldOut)];
    } else {
      // 是否需要排序
      if (isSort) {
        list = [...list.where((item) => !item.isSoldOut), ...list.where((item) => item.isSoldOut)];
      }
    }
    // 自助餐
    if (isBuffet && buffetGoodsList.isNotEmpty) {
      return list.map((item) {
        final buffet = buffetGoodsList.firstWhereOrNull(
          (buffetItem) => item.uuid == buffetItem.uuid,
        );
        // 该商品是否为自助餐
        if (buffet != null) {
          item.isBuffet = true;
          // 限制数量
          item.limitNum = buffet.limit;
          // 列表价格
          item.price = SafetyNumber.zero;
          // 规格价格
          for (var flavor in item.flavors.list) {
            flavor.price = SafetyNumber.zero;
          }
        }
        return item;
      }).toList();
    }
    //
    return list;
  }

  // 设置
  set goodsBaseList(List<GoodsProduct> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<GoodsProduct>().equals(_goodsBaseList, value);
    if (areEqual) return;
    //
    _goodsBaseList.assignAll(value);
    // 记录最后更新时间
    _goodsListUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;
  }

  // 自助餐列表
  final RxList<GoodsBuffet> _buffetGoodsList = <GoodsBuffet>[].obs;
  RxList<GoodsBuffet> get searchBuffetGoodsList => _buffetGoodsList;
  List<GoodsBuffet> get buffetGoodsList => _buffetGoodsList.toList();
  set buffetGoodsList(List<GoodsBuffet> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<GoodsBuffet>().equals(_buffetGoodsList, value);
    if (areEqual) return;
    //
    _buffetGoodsList.assignAll(value);
  }

  // 加载状态
  final RxBool _isBuffetLoading = false.obs;
  bool get isBuffetLoading => _isBuffetLoading.value;

  // 判断是否还有下一页
  final RxBool _hasMore = false.obs;
  bool get hasMore => _hasMore.value;
  set hasMore(bool value) {
    _hasMore.value = value;
  }

  MethodChannel? _channel;
  //
  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _goodsListUpdateTimestamp = 0;
  //
  Worker? _worker;
  Worker? _everAllWorker;
  Worker? _setStorageWorker;
  Worker? _buffetWorker;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() async {
    // 加载缓存
    await loadGoodsBaseListFromStorage();
    //
    isBuffet = initIsBuffet;
    // 请求接口
    loadInitData(
      forceRefresh: true,
    );
    // 监听扫码枪回调
    if (isListenScan) {
      _channel = MethodChannel('scanner.channel');
      _setMethodCallHandler();
    }
    // 监听刷新按钮
    _worker = ever(RefreshService.to.signal, (_) {
      // 基础列表
      loadInitData(
        forceRefresh: true,
      );
    });
    // 监听自助餐变化
    _buffetWorker = ever(_isBuffet, (_) {
      // 如果是自助餐
      loadBuffetList();
    });
    // 监听变化设置缓存
    _setStorageWorker = debounce(
      _goodsBaseList,
      (value) {
        setGoodsBaseListToStorage(value);
      },
      time: Duration(
        milliseconds: 500,
      ),
    );

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        _logger.severe('appLifeCycleStartWorker 收到 startTimerSignal 信号');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        _logger.severe('appLifeCycleStopWorker 收到 stopTimerSignal 信号');
        _stopTimer();
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen((message) {
      _logger.severe('WebSocketService 收到消息 [MixinGoodsList]: $message');

      /// 如果不是更新订单消息, 则不处理
      if (!message.isEventProduct) return;

      loadInitData(
        forceRefresh: true,
      );
    });

    //
    super.onInit();
  }

  @override
  void onClose() {
    /// 销毁 websocket 订阅
    _websocketSubscription?.cancel();
    _websocketSubscription = null;
    //
    _worker?.dispose();
    _worker = null;
    _everAllWorker?.dispose();
    _everAllWorker = null;
    _setStorageWorker?.dispose();
    _setStorageWorker = null;
    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _buffetWorker?.dispose();
    _buffetWorker = null;
    //
    _stopTimer();
    // 关闭监听
    _channel?.setMethodCallHandler(null);
    _channel = null;
    //
    super.onClose();
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      pollingGoodsBaseListDuration ?? const Duration(minutes: 10),
      (timer) {
        _logger.severe('商品列表定时刷新任务 ${timer.tick}');
        // 记录定时请求时间
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        // 基础列表
        loadInitData(
          forceRefresh: false,
        );
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  // 加载自助餐商品
  void loadBuffetList() {
    if (isBuffet) {
      loadBuffetGoodsListFromAPI();
    } else {
      buffetGoodsList = [];
    }
  }

  // 第一个页
  void loadInitData({
    bool forceRefresh = false,
  }) {
    // 基础信息列表
    _basePageQuery.value.pageNo = 1;
    loadGoodsBaseListFromAPI(
      forceRefresh: forceRefresh,
    );
    // 加载自助餐列表
    loadBuffetList();
  }

  // 临时存储，轮询完成才会赋值，每次请求都赋值，会有抖动问题（商品列表有第二页才会出现）
  List<GoodsProduct> temporaryList = [];
  // 加载列表
  Future<void> loadGoodsBaseListFromAPI({
    bool forceRefresh = false,
  }) async {
    if (isLoading) return;
    try {
      isLoading = true;
      final data = await fetchGoodsBaseList?.call(basePageQuery);
      if (data == null) return;
      // 检查数据是否过期
      if (_goodsListUpdateTimestamp > _timerExecuteTimestamp && !forceRefresh) return;
      // 记录加载状态
      hasMore = data.meta?.hasMore ?? false;
      // 判断是否为第一页
      List<GoodsProduct> list = goodsBaseList;
      //
      if (list.length == data.meta?.total) {
        if (basePageQuery.pageNo == 1) {
          temporaryList = data.list;
        } else {
          temporaryList.addAll(data.list);
        }
        // 如果没有下一页了重新赋值
        if (!hasMore) {
          goodsBaseList = temporaryList;
          temporaryList.clear();
        }
      } else {
        if (basePageQuery.pageNo == 1) {
          list = data.list;
        } else {
          list.addAll(data.list);
        }
        // 赋值
        goodsBaseList = list;
      }
      //
      if (hasMore) {
        isLoading = false;
        loadNextPage();
      }
      // 记录最后更新时间
    } catch (error, stackTrace) {
      _logger.severe(
        'loadGoodsBaseListFromAPI Error: $error\n$stackTrace ${basePageQuery.toString()}',
      );
    } finally {
      isLoading = false;
    }
  }

  // 加载列表
  Future<void> loadBuffetGoodsListFromAPI() async {
    if (_isBuffetLoading.value) return;
    try {
      _isBuffetLoading.value = true;
      final data = await fetchBuffetList?.call();
      if (data == null) return;
      buffetGoodsList = data.list;
    } catch (error, stackTrace) {
      _logger.severe(
        'loadBuffetGoodsListFromAPI Error: $error\n$stackTrace ${basePageQuery.toString()}',
      );
    } finally {
      _isBuffetLoading.value = false;
    }
  }

  // 存储商品基础数据
  Future<void> setGoodsBaseListToStorage(
    List<GoodsProduct> list,
  ) async {
    try {
      // 存储
      _storage.setString(
        StorageKey.goodsBaseList.asString,
        jsonEncode(list),
      );
    } catch (error, stackTrace) {
      _logger.severe('setGoodsBaseListToStorage Error:', error, stackTrace);
    }
  }

  // 加载基础数据
  Future<void> loadGoodsBaseListFromStorage() async {
    try {
      final list = await getGoodsBaseListFromStorage();
      //
      goodsBaseList = list;
    } catch (error, stackTrace) {
      _logger.severe('loadGoodsBaseListFromStorage Error:', error, stackTrace);
    }
  }

  // 获取商品基础数据接口
  Future<List<GoodsProduct>> getGoodsBaseListFromStorage() async {
    try {
      return (jsonDecode(
        _storage.getString(StorageKey.goodsBaseList.asString) ?? '[]',
      ) as List<dynamic>)
          .map(
            (e) => GoodsProduct.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    } catch (error, stackTrace) {
      _logger.severe('getGoodsBaseListFromStorage Error:', error, stackTrace);
      return [];
    }
  }

  // 加载下一页
  void loadNextPage() {
    if (hasMore) {
      _basePageQuery.value.pageNo = ((_basePageQuery.value.pageNo ?? 1) + 1);
      loadGoodsBaseListFromAPI(forceRefresh: true);
    }
  }

  // 监听事件
  void _setMethodCallHandler() {
    try {
      _channel?.setMethodCallHandler((call) async {
        if (call.method == 'onScanResult') {
          final String barcode = call.arguments.toString();
          // 查询商品
          _searchProductsByBarcode(barcode);
          //
          return;
        }
        //
        _logger.severe('setMethodCallHandler Method: ${call.method}');
      });
    } catch (error, stackTrace) {
      DialogManager.showToast('监听扫码枪事件报错'.tr);
      _logger.severe('_setMethodCallHandler Error:', error, stackTrace);
    }
  }

  // 根据商品条码查询商品
  void _searchProductsByBarcode(String barcode) {
    if (barcode.isEmpty) return;
    //
    GoodsFlavors? flavorsItem;
    final GoodsProduct? detail = goodsBaseList.firstWhereOrNull(
      (item) => item.flavors.list.any((child) {
        if (child.barcode == barcode) {
          flavorsItem = child;
          return true;
        }
        return false;
      }),
    );
    // 如果商品不存在
    if (detail == null) {
      DialogManager.showToast('未找到对应商品，请检查条码是否正确'.tr);
      return;
    }
    // 对应规格没有就提示：商品已售罄
    if (flavorsItem?.stockNum == 0) {
      DialogManager.showToast('商品已售罄'.tr);
      return;
    }
    // 商品已下架就提示：商品已下架
    if (detail.isSoldOut == true) {
      DialogManager.showToast('商品已下架'.tr);
      return;
    }
    // 添加购物车
    onDetailChange?.call(detail, flavorId: flavorsItem?.uuid);
  }
}
