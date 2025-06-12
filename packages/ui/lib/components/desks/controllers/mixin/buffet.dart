part of '../container.dart';

mixin MixinBuffet on GetxController {
  String get _appName;
  Logger get _logger;
  SharedPreferencesWithCache get _storage;

  RxList<buffet_item.Buffet> get _buffetList;
  List<buffet_item.Buffet> get buffetList => _buffetList;

  final RxBool _isFetchingBuffetList = false.obs;
  bool get isFetchingBuffetList => _isFetchingBuffetList.value;

  @override
  void onInit() {
    super.onInit();
    _loadBuffetList(fromStorage: true, fromAPI: true);
  }

  Future<void> _updateBuffetList(
    BuffetList data, {
    bool updateStorage = true,
  }) async {
    _buffetList.assignAll(data.list);

    if (updateStorage) {
      await _saveBuffetListIntoStorage(data);
    }
  }

  Future<void> _loadBuffetList({
    bool fromStorage = false,
    bool fromAPI = true,
  }) async {
    if (fromStorage) {
      await _loadBuffetListFromStorage();
    }

    if (fromAPI) {
      await loadBuffetListFromAPI();
    }
  }

  Future<void> _loadBuffetListFromStorage() async {
    try {
      final data = await _getBuffetListFromStorage();
      if (data == null) return;
      await _updateBuffetList(data, updateStorage: false);
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 加载缓存数据失败');
      _logger.severe('loadBuffetListFromStorage Error:', error, stackTrace);
    }
  }

  Future<void> _saveBuffetListIntoStorage(BuffetList data) async {
    try {
      await _storage.setString(StorageKey.buffetList.asString, jsonEncode(data.toJson()));
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 保存缓存数据失败');
      _logger.severe('saveBuffetListIntoStorage Error:', error, stackTrace);
    }
  }

  Future<BuffetList?> _getBuffetListFromStorage() async {
    try {
      final list = _storage.getString(StorageKey.buffetList.asString);
      if (list == null) return null;
      return BuffetList.fromJson(jsonDecode(list));
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 获取缓存数据失败');
      _logger.severe('getBuffetListFromStorage Error:', error, stackTrace);
      return null;
    }
  }

  Future<void> loadBuffetListFromAPI() async {
    if (isFetchingBuffetList) return;

    try {
      _isFetchingBuffetList.value = true;
      final data = await _getBuffetListFromAPI();
      if (data == null) return;
      await _updateBuffetList(data, updateStorage: true);
    } catch (error, stackTrace) {
      DialogManager.showToast('$_appName 加载数据失败');
      _logger.severe('loadBuffetListFromAPI Error:', error, stackTrace);
    } finally {
      _isFetchingBuffetList.value = false;
    }
  }

  Future<BuffetList?> Function() get _getBuffetListFromAPI;
}
