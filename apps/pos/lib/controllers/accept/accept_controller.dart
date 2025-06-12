// Package imports:
import 'dart:async';

import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:pos/api/accept/accept_api.dart';
import 'package:pos/api/desk/desk_api.dart';
import 'package:pos/components/accept/components/dialog/accept_setting.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
import 'package:pos/controllers/accept/accept_setting_controller.dart';
import 'package:pos/model/request/accept/list.dart';
import 'package:pos/model/response/accept/detail.dart';
import 'package:pos/model/response/accept/order/order.dart';
import 'package:pos/model/view/accept/accept_detail.dart';
import 'package:pos/model/view/accept/accept_detail_info.dart';
import 'package:pos/model/view/accept/accept_item.dart';
import 'package:pos/model/view/accept/accept_log_item.dart';
import 'package:pos/model/view/accept/accept_product_item.dart';
import 'package:pos/model/view/category/first_category_model.dart';
import 'package:pos/pages/desks/controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/desk/response/category/models/desk_region_item.dart';
import 'package:ttpos_model/order/response/check.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class AcceptController extends GetxController with GetSingleTickerProviderStateMixin {
  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  final RefreshService _refreshService = Get.find<RefreshService>();

  // TabController
  late TabController tabController;

  // 待接单数量
  final RxInt _notice = 0.obs;
  int get notice => _notice.value;

  // 已接单数量
  final RxInt _done = 0.obs;
  int get done => _done.value;

  // 区域数据
  final RxList<DeskRegionItem> _acceptAreaList = <DeskRegionItem>[
    DeskRegionItem(
      name: '全部'.tr,
      uuid: 0,
    ),
  ].obs;
  List<DeskRegionItem> get acceptAreaList => _acceptAreaList.toList();

  List<FirstCategoryViewModel> get categoryList => _acceptAreaList
      .map(
        (item) => FirstCategoryViewModel(
          name: item.name,
        ),
      )
      .toList();

  // 列表数据
  final RxList<AcceptOrder> _acceptList = <AcceptOrder>[].obs;
  List<AcceptItemViewModel> get acceptList => _acceptList
      .map(
        (item) => AcceptItemViewModel(
          h5OrderUuid: item.h5OrderUuid,
          deskNo: item.deskNo,
          productNum: item.num,
          price: item.price,
          handleTime: item.handleTime,
          orderTime: item.orderTime,
          deskRegionUuid: item.deskRegionUuid,
          status: item.status,
          waitTime: _calculateTime(item.waitTime),
        ),
      )
      .toList();

  final RxInt _orderSelectedIndex = (-1).obs;
  int get orderSelectedIndex => _orderSelectedIndex.value;

  final RxInt _areaSelectedIndex = 0.obs;
  int get areaSelectedIndex => _areaSelectedIndex.value;

  // 页面loading
  final RxBool _isPageLoading = false.obs;
  bool get isPageLoading => _isPageLoading.value;

  // 分页loading
  final RxBool _isListLoading = false.obs;
  bool get isListLoading => _isListLoading.value;

  // 分页数据
  // 总数
  final RxInt _total = 0.obs;
  int get total => _total.value;

  //最后一页
  final RxInt _lastPage = 0.obs;
  int get lastPage => _lastPage.value;

  // 数据请求参数
  final RxInt _areaId = 0.obs;
  int get areaId => _areaId.value;

  final RxInt _status = 0.obs;
  int get status => _status.value;

  final RxInt _page = 1.obs;
  int get page => _page.value;

  final RxInt _pageSize = 10.obs;
  int get pageSize => _pageSize.value;

  // 是否还有更多数据
  final RxBool _hasMore = false.obs;
  bool get hasMore => _hasMore.value;

  // 加载分页loading
  final RxBool _isLoadMoreLoading = false.obs;
  bool get isLoadMoreLoading => _isLoadMoreLoading.value;

  // 区域选择
  void onAreaSelected(int index) {
    if (isListLoading || isPageLoading || isDetailLoading) return;
    _areaSelectedIndex.value = index;
    // 重置列表选择
    _orderSelectedIndex.value = 0;
    _areaId.value = _acceptAreaList[index].uuid;
    _page.value = 1;
    _getAcceptData();
  }

  // 列表选择
  void onOrderSelected({
    required int index,
    required AcceptItemViewModel acceptItem,
    bool isLoading = true,
  }) {
    _orderSelectedIndex.value = index;
    _getDetail(acceptItem.h5OrderUuid, isLoading: isLoading);
  }

  RequestAcceptList get requestAcceptList => RequestAcceptList(
        deskRegionUuid: areaId,
        status: status,
        pageNo: page,
        pageSize: pageSize,
      );

  void _getAreaList() async {
    try {
      final data = await DeskAPI().getDeskCategory();
      if (data != null) {
        final regionList = data.region.list;
        if (regionList.isNotEmpty) {
          _acceptAreaList.value = [
            DeskRegionItem(
              name: '全部'.tr,
              uuid: 0,
            ),
            ...regionList,
          ];
        }
      }
    } catch (error, stackTrace) {
      _logger.severe('getDeskCategoryFromAPI Error:', error, stackTrace);
    } finally {}
  }

  void _getAcceptData({bool isLoading = true}) async {
    if (isListLoading || isPageLoading || isDetailLoading) return;
    if (isLoading) {
      _isListLoading.value = true;
      _isPageLoading.value = true;
    }
    try {
      final response = await AcceptAPI().getAcceptList(requestAcceptList);
      if (response == null) return;
      _pageSize.value = response.meta.pageSize;
      _total.value = response.meta.total;
      _hasMore.value = response.meta.hasMore;
      _acceptList.value = response.list;
      _notice.value = response.extra.unhandledCount;
      _done.value = response.extra.handledCount;
      // 如果列表不为空，则选中第一个
      if (_acceptList.isNotEmpty) {
        onOrderSelected(
          index: 0,
          acceptItem: AcceptItemViewModel(
            h5OrderUuid: _acceptList.first.h5OrderUuid,
          ),
          isLoading: isLoading,
        );
      } else {
        _orderSelectedIndex.value = -1;
        _currentAcceptDetail.value = null;
        _isPageLoading.value = false;
      }
    } catch (error, stackTrace) {
      _logger.severe('_getAcceptData Error:', error, stackTrace);
    } finally {
      _isListLoading.value = false;
      setIsButtonDisabled(false);
    }
  }

  void loadMore() async {
    if (!_hasMore.value) return;
    try {
      _isLoadMoreLoading.value = true;
      _page.value++;
      final response = await AcceptAPI().getAcceptList(requestAcceptList);
      if (response == null) return;
      _pageSize.value = response.meta.pageSize;
      _total.value = response.meta.total;
      _hasMore.value = response.meta.hasMore;
      _acceptList.value = [..._acceptList, ...response.list];
    } catch (error, stackTrace) {
      _logger.severe('loadMore Error:', error, stackTrace);
    } finally {
      _isLoadMoreLoading.value = false;
    }
  }

  // 详情

  final RxBool _isDetailLoading = false.obs;
  bool get isDetailLoading => _isDetailLoading.value;
  // 订单信息
  final Rx<ResponseAcceptDetail?> _currentAcceptDetail = Rx<ResponseAcceptDetail?>(null);
  AcceptDetailViewModel? get currentAcceptDetail {
    if (_currentAcceptDetail.value == null) return null;
    final detail = _currentAcceptDetail.value?.h5OrderDetail;
    return AcceptDetailViewModel(
      newProducts: _currentAcceptDetail.value!.newProductList.list
          .map(
            (e) => AcceptProductItemViewModel(
              name: e.localeName.translate,
              price: e.totalPrice,
              number: e.num,
            ),
          )
          .toList(),
      takeProducts: _currentAcceptDetail.value!.acceptedProductList.list
          .map(
            (e) => AcceptProductItemViewModel(
              name: e.localeName.translate,
              price: e.totalPrice,
              number: e.num,
            ),
          )
          .toList(),
      detailInfo: AcceptDetailInfoViewModel(
        deskNo: detail?.deskNo,
        operatorName: detail?.cashier,
        orderTime: detail?.orderTime.tz,
        handleTime: detail?.handleTime.tz,
        orderAmount: detail?.price,
        status: detail?.status,
        h5OrderUuid: detail?.h5OrderUuid,
        deskUuid: detail?.deskUuid,
        saleBillUuid: detail?.saleBillUuid,
      ),
      logs: _currentAcceptDetail.value!.operationLogList.list
          .map(
            (e) => AcceptLogItemViewModel(
              userName: e.userName,
              userEmail: e.userEmail,
              source: e.source,
              description: e.description,
              createTime: e.createTime.tz,
            ),
          )
          .toList(),
    );
  }

  // 新增商品
  get newProducts => currentAcceptDetail?.newProducts ?? [];

  // 已下单商品
  get takeProducts => currentAcceptDetail?.takeProducts ?? [];

  // 订单信息
  AcceptDetailInfoViewModel? get currentAcceptDetailInfo => currentAcceptDetail?.detailInfo;

  // 操作日志
  get logs => currentAcceptDetail?.logs ?? [];

  void _getDetail(int id, {isLoading = true}) async {
    if (isDetailLoading) return;
    if (isLoading) {
      _isDetailLoading.value = true;
      _isPageLoading.value = true;
    }

    try {
      final response = await AcceptAPI().getAcceptDetail(id);
      if (response == null) return;
      _currentAcceptDetail.value = response;
    } catch (error, stackTrace) {
      _logger.severe('_getDetail Error:', error, stackTrace);
    } finally {
      _isDetailLoading.value = false;
      _isPageLoading.value = false;
      setIsButtonDisabled(false);
    }
  }

  final RxBool _isButtonDisabled = false.obs;
  bool get isButtonDisabled => _isButtonDisabled.value;
  void setIsButtonDisabled(bool value) {
    _isButtonDisabled.value = value;
  }

  // 拒单
  void onOrderRejection(int id) {
    DialogManager.showConfirmDialog(
      title: '提示'.tr,
      message: '确定要拒单吗，拒单后将不会打印送厨单'.tr,
      onConfirm: () async {
        if (isButtonDisabled) return false;
        try {
          setIsButtonDisabled(true);
          final result = await AcceptAPI().rejectOrder(
            id,
            options: ExtraRequestOptions(
              showFailToast: true,
              showSuccessToast: true,
            ),
          );
          if (result == false) return false;
          _getAcceptData();
          return true;
        } catch (error, stackTrace) {
          _logger.severe('onOrderRejection Error:', error, stackTrace);
          return false;
        } finally {
          setIsButtonDisabled(false);
        }
      },
    );
  }

  // 接单
  Future<(bool, OrderCheck?, ErrorCode?)> onTakeOrders(int id) async {
    if (isButtonDisabled) return (false, null, null);
    try {
      setIsButtonDisabled(true);
      final result = await AcceptAPI().acceptOrder(
        id,
        options: ExtraRequestOptions(
          showSuccessToast: true,
        ),
      );
      final (bool canProceed, OrderCheck? orderCheck, ErrorCode? errorCode, String? message) = result;
      // 非必点商品
      if (canProceed == false && errorCode?.code != -203) {
        DialogManager.showOrderCheckDialog(
          title: '提示'.tr,
          message: message ?? errorCode?.message ?? '',
          content: orderCheck?.products?.list.map((e) => e.localeName.translate).toList() ?? [],
        );
        return (false, null, null);
      }
      // 必点商品
      else if (canProceed == false && errorCode?.code == -203) {
        DialogManager.showOrderCheckDialog(
          title: '提示'.tr,
          message: errorCode?.message ?? '',
          content: orderCheck?.productMustPlans?.list.map((e) => e.name).toList() ?? [],
        );
        return (false, null, null);
      }
      // 接单成功
      _getAcceptData();
      return (true, null, null);
    } catch (error, stackTrace) {
      setIsButtonDisabled(false);
      _logger.severe('onTakeOrders Error:', error, stackTrace);
      return (false, null, null);
    } finally {
      setIsButtonDisabled(false);
    }
  }

  final MenuController menuController = Get.find<MenuController>();
  void onEnterDesk(int h5OrderUuid, int saleBillUuid) {
    if (isButtonDisabled) return;
    menuController.currentRoute.value = HomeRoutes.desks.homeRoute;
    //NOTE: 接单进入桌台时，deskId 传 100
    DesksMainController.toDeskOrderView(
      DeskStorageModel(
        deskId: 100,
        h5OrderUuid: h5OrderUuid,
        saleBillUuid: saleBillUuid,
      ),
    );
  }

  String _calculateTime(int waitTime) {
    if (waitTime < 60) {
      return '不足一分钟'.tr;
    }

    final min = (waitTime / 60).floor();
    return '${min + 1} min';
  }

  void acceptSettingDialog() {
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: AcceptSettingController(),
          dispose: (_) => Get.delete<AcceptSettingController>(),
          builder: (controller) => AcceptSettingView(),
        ),
      ),
    );
  }

  // 刷新数据
  void refreshDataFireBySignal() {
    _getAreaList();
    _getAcceptData();
  }

  Worker? _worker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  // 定时器
  Timer? _refreshTimer;

  void _startRefreshTimer() {
    // 取消已存在的定时器
    _refreshTimer?.cancel();
    // 创建新的定时器，每30秒执行一次
    _refreshTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      debugPrint('定时刷新接单数据');
      _getAcceptData(isLoading: false);
    });
  }

  void _stopRefreshTimer() {
    _refreshTimer?.cancel();
    _refreshTimer = null;
  }

  @override
  void onInit() {
    super.onInit();
    // 初始化 TabController，假设有 2 个标签页（待接单和已接单）
    tabController = TabController(length: 2, vsync: this, animationDuration: Duration.zero);

    // 添加监听器以响应标签页变化
    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        _orderSelectedIndex.value = 0;
        _status.value = tabController.index;
        _page.value = 1;
        _getAcceptData();
      }
    });
  }

  @override
  void onReady() async {
    super.onReady();

    _getAreaList();
    _getAcceptData();

    // 启动定时刷新
    _startRefreshTimer();

    _worker = ever(_refreshService.signal, (_) => refreshDataFireBySignal());

    _websocketSubscription = WebSocketService.to.messageStream.listen((message) {
      debugPrint('WebSocketService 收到消息 [AcceptController]: $message');

      /// NOTE: 如果不是 H5 订单消息, 则不处理
      if (!message.isEventH5Order) return;

      _getAcceptData(isLoading: false);
    });
  }

  @override
  void onClose() {
    /// 销毁 websocket 订阅
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    // 销毁 worker
    _worker?.dispose();

    // 销毁定时器
    _stopRefreshTimer();

    // 销毁 TabController
    tabController.dispose();

    super.onClose();
  }
}
