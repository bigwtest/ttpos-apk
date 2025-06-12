import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/goods/response/category/category.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_shared/shared.dart';

//===========================================================================
// 商品分类控制器
//===========================================================================

mixin MixinGoodsCategory on GetxController {
  // 请求商品分类列表方法
  Future<List<GoodsCategory>?> Function()? get fetchCategoryList;

  /// 轮询周期
  Duration? get pollingGoodsCategoryListDuration;

  ///
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 存储数据
  final RxList<GoodsCategory> _categoryList = <GoodsCategory>[].obs;
  List<GoodsCategory> get categoryList => _categoryList.toList();
  set categoryList(List<GoodsCategory> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<GoodsCategory>().equals(_categoryList, value);
    if (areEqual) return;
    // 赋值
    _categoryList.assignAll(value);
    // 记录最后更新时间
    _goodsCategoryUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;
  }

  // 一级分类ID
  final RxInt _categoryId = 0.obs;
  RxInt get searchCategoryId => _categoryId; // 暴露给商品控制用
  int get categoryId => _categoryId.value;
  set categoryId(int value) {
    if (_categoryId.value == value) return;
    // 这里需要判断 value 是否在 categoryList 中, 如果不在, 则 return
    bool exists = categoryList.any((item) => item.uuid == value);
    if (!exists) return;
    //
    _categoryId.value = value;
  }

  // 二级分类ID
  final RxInt _categorySubId = 0.obs;
  RxInt get searchCategorySubId => _categorySubId; // 暴露给商品控制用
  int get categorySubId => _categorySubId.value;
  set categorySubId(int value) {
    if (_categorySubId.value == value) return;
    // 判断默认值是否存在，如果不存在，设置默认值
    bool exists = categorySubList.any((item) => item.uuid == value);
    if (!exists) return;
    //
    _categorySubId.value = value;
  }

  // 获取二级分类列表
  List<GoodsCategory> get categorySubList {
    if (categoryList.isNotEmpty) {
      return categoryList.firstWhereOrNull((item) => item.uuid == categoryId)?.children.list.toList() ?? [];
    }
    return [];
  }

  // // 当前分类信息
  GoodsCategory? get categoryInfo {
    if (categorySubId != 0 && categorySubList.isNotEmpty) {
      return categorySubList.firstWhereOrNull((item) => item.uuid == categorySubId);
    } else if (categoryId != 0 && categoryList.isNotEmpty) {
      return categoryList.firstWhereOrNull((item) => item.uuid == categoryId);
    }
    return null;
  }

  //
  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _goodsCategoryUpdateTimestamp = 0;
  //
  Worker? _worker;
  Worker? _setStorageWorker;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() async {
    // 加载存储的商品分类列表
    await loadCategoryListFromStorage();
    // 加载API的商品分类列表
    loadCategoryListFromAPI(
      forceRefresh: true,
    );
    // 监听刷新按钮
    _worker = ever(RefreshService.to.signal, (_) {
      loadCategoryListFromAPI(
        forceRefresh: true,
      );
    });
    // 监听变化设置缓存
    _setStorageWorker = debounce(
      _categoryList,
      (value) {
        // 设置缓存
        setCategoryListToStorage(value);
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
      _logger.severe('WebSocketService 收到消息 [MixinGoodsCategory]: $message');

      /// 如果不是更新订单消息, 则不处理
      if (!message.isEventProductCategory) return;

      loadCategoryListFromAPI(
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
    _setStorageWorker?.dispose();
    _setStorageWorker = null;
    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    //
    _stopTimer();
    //
    super.onClose();
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      pollingGoodsCategoryListDuration ?? const Duration(minutes: 10),
      (timer) {
        _logger.severe('商品分类定时刷新任务 ${timer.tick}');
        // 记录定时请求时间
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadCategoryListFromAPI(
          forceRefresh: false,
        );
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  // 加载接口
  Future<void> loadCategoryListFromAPI({
    bool forceRefresh = false,
  }) async {
    try {
      final list = await fetchCategoryList?.call();
      if (list == null) return;
      // 检查数据是否过期
      if (_goodsCategoryUpdateTimestamp > _timerExecuteTimestamp && !forceRefresh) return;
      //
      if (list.isNotEmpty) {
        // 给二级分类添加全部分类
        for (GoodsCategory item in list) {
          if (item.children.list.isNotEmpty) {
            item.children.list.insert(
              0,
              GoodsCategory(
                uuid: 0,
                isSpecial: false,
                parentUuid: item.uuid,
                categoryKey: 'all',
                localeName: LocaleName(
                  en: 'All',
                  zh: '全部',
                  zhtw: '所有', // 繁体
                  th: 'ทั้งหมด', // 泰语
                  ja: '全部', // 日语
                  ko: '모두', // 韩语
                  tr: 'Tümü', //土耳其
                  my: 'အားလုံး', // 缅甸
                  // de: 'ganz', // 德语
                ),
                children: GoodsCategoryChildren(list: []),
              ),
            );
          }
        }
      }
      // 赋值
      categoryList = list;
      // 设置默认值
      bool exists = list.any((item) => item.uuid == categoryId);
      if (!exists) categoryId = list[0].uuid;
    } catch (error, stackTrace) {
      _logger.severe('loadCategoryListFromAPI Error:', error, stackTrace);
    }
  }

  // 加载缓存
  Future<void> loadCategoryListFromStorage() async {
    try {
      final list = await getCategoryListFromStorage();
      if (list == null) return;
      categoryList = list;
      if (list.isEmpty) return;
      // 判断默认值是否存在，如果不存在，设置默认值
      bool exists = list.any((item) => item.uuid == categoryId);
      if (!exists) categoryId = list[0].uuid;
    } catch (error, stackTrace) {
      _logger.severe('loadCategoryListFromStorage Error:', error, stackTrace);
    }
  }

  // 设置缓存
  Future<void> setCategoryListToStorage(List<GoodsCategory> list) async {
    try {
      _storage.setString(
        StorageKey.goodsCategoryList.asString,
        jsonEncode(list),
      );
    } catch (error, stackTrace) {
      _logger.severe('setCategoryListToStorage Error:', error, stackTrace);
    }
  }

  // 获取缓存
  Future<List<GoodsCategory>?> getCategoryListFromStorage() async {
    try {
      return (jsonDecode(
        _storage.getString(StorageKey.goodsCategoryList.asString) ?? '[]',
      ) as List<dynamic>)
          .map(
            (e) => GoodsCategory.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    } catch (error, stackTrace) {
      _logger.severe('getCategoryListFromStorage Error:', error, stackTrace);
      return null;
    }
  }
}
