part of '../container.dart';

mixin MixinDesks on GetxController {
  String get _appName;
  Logger get _logger;
  SharedPreferencesWithCache get _storage;

  RxList<Desk> get _desks;
  Rx<BaseListMeta> get _desksMeta;
  BaseListMeta get desksMeta => _desksMeta.value;

  Rx<DeskCategory> get _desksCategory;

  final RxBool _isFetchingDeskList = false.obs;
  bool get isFetchingDeskList => _isFetchingDeskList.value;

  final RxBool _isFetchingDeskCategory = false.obs;
  bool get isFetchingDeskCategory => _isFetchingDeskCategory.value;

  final RxBool _showDeskListLoading = false.obs;
  bool get showDeskListLoading => _showDeskListLoading.value;

  final Rx<Extra> _extra = Extra(
    availableNum: 0,
    lockNum: 0,
    occupyBuffetNum: 0,
    occupyNotBuffetNum: 0,
    occupyWaitNum: 0,
    totalNum: 0,
    updateTime: 0,
  ).obs;

  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _deskListUpdateTimestamp = 0;
  int _deskCategoryUpdateTimestamp = 0;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() {
    super.onInit();

    _loadDeskList(fromStorage: true, fromAPI: true);
    _loadDeskCategory(fromStorage: true, fromAPI: true);
  }

  @override
  void onReady() {
    super.onReady();

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [MixinDesks]');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [MixinDesks]');
        _stopTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('refreshWorker 收到 refreshSignal 信号 [MixinDesks]');
        _showDeskListLoading.value = true;
        // await Future.delayed(const Duration(seconds: 3));
        await Future.wait([
          loadDeskListFromAPI(
            meta: MetaRequest(pageNo: 1, pageSize: 1000),
            isFirstPage: true,
            forceRefresh: true,
          ),
          loadDeskCategoryFromAPI(
            forceRefresh: true,
          ),
        ]);
        _showDeskListLoading.value = false;
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [MixinDesks]: $message');
        // NOTE: 如果是更新桌台消息, 则处理
        if (message.isEventDesk) {
          // NOTE: 如果更新时间大于桌台列表更新时间，则刷新桌台列表
          if (message.updateTime > (_extra.value.updateTime ?? 0)) {
            loadDeskListFromAPI(forceRefresh: true);
          }
          return;
        }

        // NOTE: 如果是更新桌台区域与类型消息, 则处理
        if (message.isEventDeskCategory) {
          // NOTE: 如果更新时间大于桌台区域与类型更新时间，则刷新桌台区域与类型
          if (message.updateTime > (_desksCategory.value.updateTime ?? 0)) {
            loadDeskCategoryFromAPI(forceRefresh: true);
          }
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

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _refreshWorker?.dispose();
    _refreshWorker = null;

    super.onClose();
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      const Duration(minutes: 10),
      (timer) {
        debugPrint('桌台列表定时刷新任务 ${timer.tick}');
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadDeskCategoryFromAPI();
        loadDeskListFromAPI(
          meta: MetaRequest(pageNo: 1, pageSize: 1000),
          isFirstPage: true,
        );
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _updateDeskList(
    DeskList data, {
    bool updateStorage = true,
    bool append = false,
  }) async {
    if (append) {
      _desks.addAll(data.list);
    } else {
      _desks.assignAll(data.list);
    }
    _desksMeta.value = data.meta;
    _extra.value = data.extra;

    if (updateStorage) {
      await _saveDeskListIntoStorage(data);
      _deskListUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;
    }
  }

  Future<void> _loadDeskList({
    bool fromStorage = false,
    bool fromAPI = true,
  }) async {
    _showDeskListLoading.value = true;
    if (fromStorage) {
      await _loadDeskListFromStorage();
    }

    if (_desks.isNotEmpty) {
      _showDeskListLoading.value = false;
    }

    if (fromAPI) {
      await loadDeskListFromAPI(
        meta: MetaRequest(pageNo: 1, pageSize: 1000),
      );
    }

    _showDeskListLoading.value = false;
  }

  Future<void> _loadDeskListFromStorage() async {
    try {
      final data = await _getDeskListFromStorage();
      if (data == null) return;
      await _updateDeskList(data, updateStorage: false);
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 加载缓存数据失败');
      _logger.severe('loadDeskListFromStorage Error:', error, stackTrace);
    }
  }

  Future<DeskList?> _getDeskListFromStorage() async {
    try {
      final list = _storage.getString(StorageKey.deskList.asString);
      if (list == null) return null;
      return DeskList.fromJson(jsonDecode(list));
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 获取缓存数据失败');
      _logger.severe('getDeskListFromStorage Error:', error, stackTrace);
      return null;
    }
  }

  Future<void> _saveDeskListIntoStorage(DeskList data) async {
    try {
      await _storage.setString(StorageKey.deskList.asString, jsonEncode(data.toJson()));
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 保存缓存数据失败');
      _logger.severe('saveDeskListIntoStorage Error:', error, stackTrace);
    }
  }

  Future<void> loadDeskListFromAPI({
    MetaRequest? meta,
    bool isFirstPage = true,
    bool forceRefresh = false,
  }) async {
    if (isFirstPage && isFetchingDeskList) return;

    try {
      if (isFirstPage) {
        _isFetchingDeskList.value = true;
        // if (forceRefresh) _desks.clear();
        _desksMeta.value = BaseListMeta(
          total: 0,
          pageNo: 0,
          pageSize: 1000,
        );
      }
      final data = await _getDeskListFromAPI(meta: meta);
      if (data == null) return;

      // 检查是否已经加载过这一页
      final currentPage = meta?.pageNo ?? 1;
      final existingPage = _desksMeta.value.pageNo;

      // 如果当前页码小于等于已加载的页码，说明是重复请求，直接返回
      if (currentPage <= existingPage) {
        return;
      }

      // 检查数据是否过期
      if (_deskListUpdateTimestamp > _timerExecuteTimestamp && isFirstPage && !forceRefresh) return;

      await _updateDeskList(
        data,
        updateStorage: true,
        append: currentPage > 1,
      );

      // 如果还有更多数据，继续加载下一页
      if (data.meta.hasMore) {
        await Future.delayed(const Duration(milliseconds: 100));
        await loadDeskListFromAPI(
          meta: MetaRequest(
            pageNo: currentPage + 1,
            pageSize: meta?.pageSize ?? 1000,
          ),
          isFirstPage: false,
          forceRefresh: forceRefresh,
        );
      }
    } catch (error, stackTrace) {
      _logger.severe('loadDeskListFromAPI Error:', error, stackTrace);
    } finally {
      if (isFirstPage) {
        _isFetchingDeskList.value = false;
      }
    }
  }

  Future<DeskList?> Function({
    MetaRequest? meta,
  }) get _getDeskListFromAPI;

  Future<void> _updateDeskCategory(
    DeskCategory data, {
    bool updateStorage = true,
  }) async {
    _desksCategory.value = data;

    if (updateStorage) {
      await _saveDeskCategoryIntoStorage(data);
      _deskCategoryUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;
    }
  }

  Future<void> _loadDeskCategory({
    bool fromStorage = false,
    bool fromAPI = true,
  }) async {
    if (fromStorage) {
      await _loadDeskCategoryFromStorage();
    }

    if (fromAPI) {
      await loadDeskCategoryFromAPI();
    }
  }

  Future<void> _loadDeskCategoryFromStorage() async {
    try {
      final data = await _getDeskCategoryFromStorage();
      if (data == null) return;
      await _updateDeskCategory(data, updateStorage: false);
    } catch (error, stackTrace) {
      _logger.severe('loadDeskCategoryFromStorage Error:', error, stackTrace);
    }
  }

  Future<DeskCategory?> _getDeskCategoryFromStorage() async {
    try {
      final data = _storage.getString(StorageKey.deskCategory.asString);
      if (data == null) return null;
      return DeskCategory.fromJson(jsonDecode(data));
    } catch (error, stackTrace) {
      _logger.severe('getDeskCategoryFromStorage Error:', error, stackTrace);
      return null;
    }
  }

  Future<void> _saveDeskCategoryIntoStorage(DeskCategory data) async {
    try {
      await _storage.setString(StorageKey.deskCategory.asString, jsonEncode(data.toJson()));
    } catch (error, stackTrace) {
      _logger.severe('saveDeskCategoryIntoStorage Error:', error, stackTrace);
    }
  }

  Future<void> loadDeskCategoryFromAPI({
    bool forceRefresh = false,
  }) async {
    if (isFetchingDeskCategory) return;

    try {
      _isFetchingDeskCategory.value = true;
      final data = await _getDeskCategoryFromAPI();
      if (data == null) return;
      if (_deskCategoryUpdateTimestamp > _timerExecuteTimestamp && !forceRefresh) return;
      await _updateDeskCategory(data, updateStorage: true);
    } catch (error, stackTrace) {
      _logger.severe('loadDeskCategoryFromAPI Error:', error, stackTrace);
    } finally {
      _isFetchingDeskCategory.value = false;
    }
  }

  Future<DeskCategory?> Function() get _getDeskCategoryFromAPI;
}
