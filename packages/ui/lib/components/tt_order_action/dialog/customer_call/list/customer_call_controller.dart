import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/customer_call/response/abnormal_print_item.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call_list.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/list/customer_call_model.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class CustomerCallController extends GetxController {
  final ResponseUnprocessedCall? initCount; // 初始化统计
  final Future<BaseList<ResponseUnprocessedCallList>?> Function(BasePageQuery data)? fetchUnprocessedCallList; // 呼叫列表接口
  final Future<bool> Function(int uuid)? fetchUnprocessedCallFinish; // 呼叫列表-已处理接口
  final Future<BaseList<AbnormalPrintItem>?> Function(BasePageQuery data)? fetchPrintList; // 打印列表
  final Future<bool> Function(int uuid)? fetchReprint; // 重新打印
  final Future<bool> Function(int uuid)? fetchDeletePrint; // 删除打印

  CustomerCallController({
    this.initCount,
    this.fetchUnprocessedCallList,
    this.fetchUnprocessedCallFinish,
    this.fetchPrintList,
    this.fetchReprint,
    this.fetchDeletePrint,
  });

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 查询条件
  final Rx<BasePageQuery> _basePageQuery = BasePageQuery(
    pageNo: 1,
    pageSize: 50,
  ).obs;
  BasePageQuery get basePageQuery => _basePageQuery.value;

  // 未处理呼叫列表
  final RxList<CustomerCallModel> _unprocessedCallList = <CustomerCallModel>[].obs;
  List<CustomerCallModel> get unprocessedCallList => _unprocessedCallList.toList();
  set unprocessedCallList(List<CustomerCallModel> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<CustomerCallModel>().equals(_unprocessedCallList, value);
    if (areEqual) return;
    //
    _unprocessedCallList.assignAll(value);
    // 缓存
    _cachedUnprocessedCallList = value;
  }

  // 缓存列表
  static List<CustomerCallModel> _cachedUnprocessedCallList = [];

  // 呼叫未读数量
  final RxInt _unprocessedCallCount = 0.obs;
  int get unprocessedCallCount => _unprocessedCallCount.value;
  set unprocessedCallCount(int value) {
    if (_unprocessedCallCount.value == value) return;
    _unprocessedCallCount.value = value;
  }

  // 打印未读数量
  final RxInt _printCount = 0.obs;
  int get printCount => _printCount.value;
  set printCount(int value) {
    if (_printCount.value == value) return;
    _printCount.value = value;
  }

  // 查询条件
  final Rx<BasePageQuery> _printQuery = BasePageQuery(
    pageNo: 1,
    pageSize: 50,
  ).obs;
  BasePageQuery get printQuery => _printQuery.value;

  // 未处理呼叫列表
  final RxList<CustomerCallModel> _printList = <CustomerCallModel>[].obs;
  List<CustomerCallModel> get printList => _printList.toList();
  set printList(List<CustomerCallModel> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<CustomerCallModel>().equals(_printList, value);
    if (areEqual) return;
    //
    _printList.assignAll(value);
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) {
    _isLoading.value = value;
  }

  // 是不是第一次加载
  bool get isOnceLoading => isLoading && basePageQuery.pageNo == 1;

  // 判断是否还有下一页
  final RxBool _hasMore = false.obs;
  bool get hasMore => _hasMore.value;
  set hasMore(bool value) {
    _hasMore.value = value;
  }

  // 点击按钮ID
  final RxInt _detailId = 0.obs;
  int get detailId => _detailId.value;
  set detailId(int value) {
    _detailId.value = value;
  }

  // 点击按钮
  final RxBool _isBtnLoading = false.obs;
  bool get isBtnLoading => _isBtnLoading.value;

  // 点击删除按钮
  final RxBool _isDelLoading = false.obs;
  bool get isDelLoading => _isDelLoading.value;

  // 消息类型 0=顾客呼叫，1=异常打印
  final RxInt _callType = 0.obs;
  int get callType => _callType.value;
  set callType(int value) {
    _callType.value = value;
  }

  // 获取列表
  RxList<CustomerCallModel> get callList => callType == 1 ? _printList : _unprocessedCallList;

  @override
  void onInit() {
    // 如果有缓存数据，直接使用
    if (_cachedUnprocessedCallList.isNotEmpty) {
      unprocessedCallList = _cachedUnprocessedCallList;
    }
    // 初始化统计数量
    if (initCount != null) {
      unprocessedCallCount = initCount?.unprocessedCallCount ?? 0;
      printCount = initCount?.abnormalPrintCount ?? 0;
    }
    // 加载第一个页
    _loadInitData();
    //
    super.onInit();
  }

  // @override
  // void onClose() {
  //   //
  //   super.onClose();
  // }

  // 如果未读数量和打印数量都为零关闭弹窗
  void _hideDialog() {
    if (unprocessedCallCount == 0 && printCount == 0) {
      Get.back();
    }
  }

  // 第一个页
  Future<void> _loadInitData({bool isLoad = true}) async {
    if (callType == 0) {
      _basePageQuery.value.pageNo = 1;
      await _loadUnprocessedCallListFromAPI(isLoad: isLoad);
    } else {
      _printQuery.value.pageNo = 1;
      await _loadPrintListFromAPI(isLoad: isLoad);
    }
  }

  // 加载呼叫未读消息数据
  Future<void> _loadUnprocessedCallListFromAPI({bool isLoad = true}) async {
    if (_isLoading.value) return;
    try {
      if (isLoad) _isLoading.value = true;
      final res = await fetchUnprocessedCallList?.call(
        basePageQuery,
      );
      // 转化类型
      final resList = (res?.list ?? [])
          .map(
            (item) => CustomerCallModel(
              uuid: item.uuid,
              title: item.deskNo,
              subtitle: item.callType == 2 ? '呼叫结账'.tr : '呼叫'.tr,
            ),
          )
          .toList();
      // 判断是否为第一页
      List<CustomerCallModel> list = unprocessedCallList;
      if (basePageQuery.pageNo == 1) {
        list = resList;
      } else {
        list.addAll(resList);
      }
      //
      unprocessedCallList = list;
      // 是否还有下一页
      hasMore = res?.meta?.hasMore ?? false;
      unprocessedCallCount = res?.meta?.total ?? 0;
    } catch (error, stackTrace) {
      _logger.severe('_loadUnprocessedCallListFromAPI Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  //
  Future<void> _loadPrintListFromAPI({bool isLoad = true}) async {
    if (_isLoading.value) return;
    try {
      if (isLoad) _isLoading.value = true;
      final res = await fetchPrintList?.call(
        basePageQuery,
      );
      // 转化类型
      final resList = (res?.list ?? [])
          .map(
            (item) => CustomerCallModel(
              uuid: item.uuid,
              title: item.deskNo,
              subtitle: item.createTime.tz,
              description: item.reason ?? '打印机连接超时'.tr,
            ),
          )
          .toList();
      // 判断是否为第一页
      List<CustomerCallModel> list = unprocessedCallList;
      if (basePageQuery.pageNo == 1) {
        list = resList;
      } else {
        list.addAll(resList);
      }
      //
      printList = list;
      // 是否还有下一页
      hasMore = res?.meta?.hasMore ?? false;
      printCount = res?.meta?.total ?? 0;
    } catch (error, stackTrace) {
      _logger.severe('_loadPrintListFromAPI Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  // 加载下一页
  void loadNextPage() {
    if (hasMore) {
      if (callType == 0) {
        _basePageQuery.value.pageNo = ((_basePageQuery.value.pageNo ?? 1) + 1);
        _loadUnprocessedCallListFromAPI();
      } else {
        _printQuery.value.pageNo = ((_printQuery.value.pageNo ?? 1) + 1);
        _loadPrintListFromAPI();
      }
    }
  }

  // 处理呼叫方法
  void handleCallFinish(int uuid) async {
    if (isBtnLoading) return;
    detailId = uuid;
    try {
      _isBtnLoading.value = true;
      final res = await fetchUnprocessedCallFinish?.call(detailId);
      // 重新请求列表
      if (res != null && res) {
        await _loadInitData(
          isLoad: false,
        );
        // 判断是否需要关闭
        _hideDialog();
      }
    } catch (error, stackTrace) {
      _logger.severe('unprocessedCallFinish Error:', error, stackTrace);
    } finally {
      _isBtnLoading.value = false;
    }
  }

  // 重新打印
  void handleReprint(int uuid) async {
    if (isBtnLoading) return;
    detailId = uuid;
    try {
      _isBtnLoading.value = true;
      final res = await fetchReprint?.call(detailId);
      // 重新请求列表
      if (res != null && res) {
        await _loadInitData(
          isLoad: false,
        );
        // 判断是否需要关闭
        _hideDialog();
      }
    } catch (error, stackTrace) {
      _logger.severe('unprocessedCallFinish Error:', error, stackTrace);
    } finally {
      _isBtnLoading.value = false;
    }
  }

  // 删除打印
  void handleDeletePrint(int uuid) async {
    if (isDelLoading) return;
    detailId = uuid;
    try {
      _isDelLoading.value = true;
      final res = await fetchDeletePrint?.call(detailId);
      // 重新请求列表
      if (res != null && res) {
        await _loadInitData(
          isLoad: false,
        );
        // 判断是否需要关闭
        _hideDialog();
      }
    } catch (error, stackTrace) {
      _logger.severe('handleDeletePrint Error:', error, stackTrace);
    } finally {
      _isDelLoading.value = false;
    }
  }

  // 切换
  void handleChangeTab(int index) {
    if (callType == index) return;
    callType = index;
    //
    _isLoading.value = false;
    _loadInitData();
  }
}
