import 'dart:async';

import 'package:get/get.dart';
import 'package:pos/api/sold_out/sold_out.dart';
import 'package:pos/model/request/sold_out/cancel_sold_out.dart';
import 'package:pos/model/response/sold_out/sold_out_list.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_ui/components/goods/controllers/goods_controller.dart';

class SoldOutController extends GetxController {
  final String tag;
  SoldOutController({
    this.tag = 'sold_out',
  });
  //
  // 商品列表控制器
  GoodsController get _goodsController {
    try {
      return Get.find<GoodsController>(tag: tag);
    } catch (e) {
      return Get.put(GoodsController(), tag: tag);
    }
  }

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  // 查询条件
  final Rx<BasePageQuery> _basePageQuery = BasePageQuery(
    pageNo: 1,
    pageSize: 500,
  ).obs;
  BasePageQuery get basePageQuery => _basePageQuery.value;
  // 估清列表
  final RxList<ResponseSoldOutList> _listSoldOut = <ResponseSoldOutList>[].obs;
  get listSoldOut => _listSoldOut.toList();
  set listSoldOut(value) {
    _listSoldOut.value = value;
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  // 加载状态
  final RxBool _isLoadingCancelAll = false.obs;
  bool get isLoadingCancelAll => _isLoadingCancelAll.value;
  // 加载状态
  final RxBool _isLoadingCancel = false.obs;
  bool get isLoadingCancel => _isLoadingCancel.value;
  final RxInt _cancelId = 0.obs;
  int get cancelId => _cancelId.value;
  set cancelId(int value) {
    _cancelId.value = value;
  }

  //
  final RxBool _hasMore = false.obs;
  bool get hasMore => _hasMore.value;
  set hasMore(bool value) {
    _hasMore.value = value;
  }

  //
  Worker? _worker;

  @override
  void onInit() async {
    // 加载第一个页
    loadInitData();
    // 监听刷新按钮
    _worker = ever(RefreshService.to.signal, (_) => loadInitData());
    //
    super.onInit();
  }

  @override
  void onClose() {
    //
    _worker?.dispose();
    //
    super.onClose();
  }

  // 全部取消
  void handleCancelAllSoldOut() async {
    if (_isLoadingCancelAll.value) return;
    try {
      _isLoadingCancelAll.value = true;
      final res = await SoldOutAPI().cancelAllSoldOut(
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (res) {
        listSoldOut = <ResponseSoldOutList>[];
        // 刷新商品列表
        _goodsController.loadInitData(
          forceRefresh: true,
        );
      }
    } catch (error, stackTrace) {
      _logger.severe('handleCancelAllSoldOut Error:', error, stackTrace);
    } finally {
      _isLoadingCancelAll.value = false;
    }
  }

  // 取消沽清商品
  void handleCancelSoldOut(int uuid, int index) async {
    if (_isLoadingCancel.value) return;
    try {
      cancelId = uuid;
      _isLoadingCancel.value = true;
      final res = await SoldOutAPI().cancelSoldOut(
        RequestCancelSoldOut(
          productBomUuid: uuid,
        ),
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      //
      if (res) {
        List<ResponseSoldOutList> list = listSoldOut;
        list.removeAt(index);
        listSoldOut = list;
        // 刷新商品列表
        _goodsController.loadInitData(
          forceRefresh: true,
        );
      }
      //
    } catch (error, stackTrace) {
      _logger.severe('handleCancelSoldOut Error:', error, stackTrace);
    } finally {
      _isLoadingCancel.value = false;
    }
  }

  // 获取列表数据
  Future<BaseList<ResponseSoldOutList>?> getSoldOutListFromAPI(
    BasePageQuery data,
  ) async {
    try {
      final res = await SoldOutAPI().getSoldOutList(data);
      return res;
    } catch (error, stackTrace) {
      _logger.severe('getSoldOutListFromAPI Error:', error, stackTrace);
      return null;
    }
  }

  // 第一个页
  void loadInitData() {
    _basePageQuery.value.pageNo = 1;
    _loadSoldOutListFromAPI();
  }

  // 加载数据
  void _loadSoldOutListFromAPI() async {
    if (_isLoading.value) return;
    try {
      _isLoading.value = true;
      final res = await getSoldOutListFromAPI(
        basePageQuery,
      );
      // 判断是否为第一页
      List<ResponseSoldOutList> list = listSoldOut;
      if (basePageQuery.pageNo == 1) {
        list = res?.list ?? [];
      } else {
        list.addAll(res?.list ?? []);
      }
      //
      listSoldOut = list;
      // 是否还有下一页
      hasMore = res?.meta?.hasMore ?? false;
    } catch (error, stackTrace) {
      _logger.severe('_loadSoldOutListFromAPI Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  // 加载下一页
  void loadNextPage() {
    if (hasMore) {
      _basePageQuery.value.pageNo = ((_basePageQuery.value.pageNo ?? 1) + 1);
      _loadSoldOutListFromAPI();
    }
  }
}
