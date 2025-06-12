part of 'package:pos/components/goods_cart/order/view/index.dart';

// 购物车控制器
class GoodsCartOrderController extends GetxController with SplitOrderController {
  final void Function()? onBack;
  GoodsCartOrderController({
    String tag = "instant",
    this.onBack,
  }) : _tag = tag;

  // 日志控制器
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 订单类型
  final String _tag;
  // 是否加载中
  final RxBool _isLoading = true.obs;
  // 是否加载错误
  final RxString _loadError = "等待触发加载...".tr.obs;
  // 获取点餐购物车信息
  final Rx<ResponseCart?> _cartData = Rx<ResponseCart?>(null);
  // 选中的销售单UUID
  final RxInt _currentSelectedSaleOrderUuid = RxInt(0);
  // 选中的商品UUID
  final RxInt _currentSelectedProductUuid = RxInt(0);
  // 滚动到的商品UUID
  final RxInt _scrollToProductUuid = RxInt(0);
  // 是否Loading 加减按钮
  final RxInt _loadingProductAddAndSubBtns = 0.obs;

  // 购物车数据更新时间戳
  int _cartUpdateTimeStamp = 0;

  // NOTE: 监听器列表
  @override
  final List<Worker> _workers = [];

  @override
  void onInit() {
    super.onInit();
    // 监听购物车数据变化
    _workers.add(
      ever(_cartData, (cart) {
        // 购物车数据更新时间戳
        _cartUpdateTimeStamp = DateTime.now().millisecondsSinceEpoch;

        //
        if (cart == null) {
          _currentSelectedProductUuid.value = 0;
          _currentSelectedSaleOrderUuid.value = 0;
          _isEdit.value = false;
          return;
        }

        // 如果当前选中的订单ID在新的购物车数据中不存在，则重置为0
        if (_currentSelectedSaleOrderUuid.value != 0) {
          bool orderExists = cart.saleOrderList.any(
            (order) => order.uuid == _currentSelectedSaleOrderUuid.value && order.status == 0,
          );
          if (!orderExists) {
            _currentSelectedSaleOrderUuid.value = 0;
          }
        }

        // 设置默认选中 - 选择第一个 status 等于 0 的订单
        if (_currentSelectedSaleOrderUuid.value == 0 && cart.saleOrderList.isNotEmpty) {
          // 查找第一个 status 等于 0 的订单
          final activeOrder = cart.saleOrderList.firstWhereOrNull((order) => order.status == 0);
          if (activeOrder != null) {
            _onSelectedSaleOrder(saleOrder: activeOrder);
          } else {
            _onSelectedSaleOrder(saleOrder: cart.saleOrderList[0]);
            _stopGetCartInfoFromAPITimer();
            // 如果不存在未完成的订单，返回
            if (onBack == null) {
              _cartData.value = null;
            }
            return;
          }
        }

        // 如果当前选中的商品ID在新的购物车数据中不存在，则重置为0
        if (_currentSelectedProductUuid.value != 0) {
          bool productExists = cart.saleOrderList.any(
            (order) => order.productList.any(
              (product) =>
                  order.uuid == _currentSelectedSaleOrderUuid.value &&
                  product.uuid == _currentSelectedProductUuid.value,
            ),
          );
          if (!productExists) {
            _currentSelectedProductUuid.value = 0;
          }
        }

        // 选中第一个商品
        if (_currentSelectedProductUuid.value == 0 && _currentSelectedSaleOrderUuid.value != 0) {
          final activeOrder = getCurrentOrder();
          if (activeOrder != null && activeOrder.productList.isNotEmpty) {
            _onProductRowEvent(product: activeOrder.productList.first);
            _setScrollToProductUuid(product: activeOrder.productList.first);
          }
        }

        // 发送到副屏
        if (!kIsWeb && Platform.isAndroid) {
          try {
            SubScreenService.send(
              method: ScreenMessageType.cartName,
              data: {
                'dataType': CartDataType.updataData.name, // 数据类型 => 更新列表统计数据
                'orderList': getCurrentOrder() != null ? jsonEncode(getCurrentOrder()?.toJson()) : '{}',
                'amountInfo': getAmountInfo() != null ? jsonEncode(getAmountInfo()?.toJson()) : '{}',
              },
            );
          } catch (e) {
            _logger.severe('sendMsgToSubScreen error: $e');
          }
        }
      }),
    );
  }

  @override
  void onClose() {
    super.onClose();
    // 停止获取购物车信息定时器
    _stopGetCartInfoFromAPITimer();
    // 取消所有监听器
    for (final worker in _workers) {
      worker.dispose();
    }
    _workers.clear();
  }

  // ==================================================================================
  //  公共方法 - 外部可访问
  // ==================================================================================
  // 订单类型
  @override
  String get tag => _tag;

  // NOTE: 购物车数据
  @override
  Rx<ResponseCart?> get cartInfo => _cartData;

  // NOTE: 获取当前选中的订单uuid
  @override
  RxInt get getCurrentSelectedSaleOrderUuid => _currentSelectedSaleOrderUuid;

  // NOTE: 获取当前选中的订单产品uuid
  RxInt get getCurrentSelectedProductUuid => _currentSelectedProductUuid;

  // NOTE: 加载购物车数据
  Future<void> loadCartData({
    required int saleBillUuid,
    int h5OrderUuid = 0,
  }) async {
    // 获取购物车信息
    _getCartInfo(saleBillUuid: saleBillUuid, h5OrderUuid: h5OrderUuid);
    // 开始获取购物车信息定时器
    _startGetCartInfoFromAPITimer(saleBillUuid, h5OrderUuid);
  }

  // NOTE: 设置购物车数据
  @override
  Future<void> setCartInfo({
    ResponseCart? cart,
    bool isTriggerSelected = false,
    bool cancelEdit = false,
  }) async {
    if (cancelEdit) {
      _isEdit.value = false;
    }
    //
    if (cart != null && isTriggerSelected) {
      final currentProducts = _cartData.value?.saleOrderList
              .where((order) => order.uuid == _currentSelectedSaleOrderUuid.value)
              .expand((order) => order.productList)
              .toList() ??
          [];
      final newProducts = cart.saleOrderList
          .where((order) => order.uuid == _currentSelectedSaleOrderUuid.value)
          .expand((order) => order.productList)
          .toList();
      // 比较当前购物车商品和新购物车商品，找出新增的商品或数量变动的商品
      final modifiedProducts = newProducts.where((newProduct) {
        final currentProduct = currentProducts.firstWhereOrNull(
          (currentProduct) => currentProduct.uuid == newProduct.uuid,
        );
        return currentProduct == null || currentProduct.num != newProduct.num;
      }).toList();

      // 设置购物车数据
      _cartData.value = cart;

      // 处理新增或数量变动商品逻辑：选中最后一个变动的商品
      if (modifiedProducts.isNotEmpty) {
        // 触发商品选中事件，这样会同时触发滚动
        _onProductRowEvent(product: modifiedProducts.last);
        // 设置滚动到的商品
        _setScrollToProductUuid(product: modifiedProducts.last);
        // 初始化编辑商品
        _initEditProducts();
      }
    } else {
      _cartData.value = cart;
    }
  }

  // NOTE: 获取当前订单
  @override
  ResponseCartSaleOrder? getCurrentOrder() {
    try {
      if ((_cartData.value?.saleOrderList.isEmpty ?? true) || _currentSelectedSaleOrderUuid.value == 0) {
        return null;
      }
      final orders =
          _cartData.value?.saleOrderList.where((order) => order.uuid == _currentSelectedSaleOrderUuid.value).toList();
      return orders?.isNotEmpty == true ? orders?.first : null;
    } catch (e) {
      return null;
    }
  }

  // NOTE: 获取金额信息
  ResponseCartAmountInfo? getAmountInfo() {
    try {
      return getCurrentOrder()?.amountInfo;
    } catch (e) {
      return null;
    }
  }

  // NOTE: 获取选中的商品
  ResponseCartProduct? getCurrentProduct() {
    try {
      final currentOrder = getCurrentOrder();
      if (currentOrder == null) return null;
      for (var product in currentOrder.productList) {
        if (product.uuid == _currentSelectedProductUuid.value) {
          return product;
        }
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // NOTE: 获取自处餐的商品
  List<ResponseCartProduct>? getBuffets() {
    try {
      final currentOrder = getCurrentOrder();
      if (currentOrder == null) return null;
      List<ResponseCartProduct> buffetProductList = [];
      for (var product in currentOrder.productList) {
        // FIXME: 不确定是否可以去掉这个判断，模型定义的是一个必须值 @发哥
        // ignore: unnecessary_null_comparison
        if (product.aboutBuffet != null && product.aboutBuffet.isCustomer) {
          buffetProductList.add(product);
        }
      }
      return buffetProductList;
    } catch (e) {
      return null;
    }
  }

  // NOTE: 获取自处餐的商品
  List<ResponseCartProduct>? getBuffetProduct() {
    try {
      final currentOrder = getCurrentOrder();
      if (currentOrder == null) return null;
      List<ResponseCartProduct> buffetProductList = [];
      for (var product in currentOrder.productList) {
        if (product.isBuffet) {
          buffetProductList.add(product);
        }
      }
      return buffetProductList;
    } catch (e) {
      return null;
    }
  }

  // NOTE: 获取购物车中已送厨的商品
  List<Map<String, dynamic>> getSentKitchenProducts() {
    if (cartInfo.value == null) return [];
    List<Map<String, dynamic>> sentProducts = [];
    for (var order in cartInfo.value!.saleOrderList) {
      for (var product in order.productList) {
        if (product.status == 1) {
          sentProducts.add({
            'name': product.localeName.translate,
            'quantity': product.num,
          });
        }
      }
    }
    return sentProducts;
  }

  // NOTE: 获取购物车中未送厨的商品
  List<Map<String, dynamic>> getUnsentKitchenProducts() {
    if (cartInfo.value == null) return [];
    List<Map<String, dynamic>> unsentProducts = [];
    for (var order in cartInfo.value!.saleOrderList) {
      for (var product in order.productList) {
        if (product.status == 0) {
          unsentProducts.add({
            'name': product.localeName.translate,
            'attr': product.localeAttributeName.translate,
            'names': "${product.localeName.translate} (${product.localeAttributeName.translate})",
            'quantity': product.num,
          });
        }
      }
    }
    return unsentProducts;
  }

  // NOTE: 完成当前订单
  // 完成之后 返回剩下的第一个未完成的订单
  int completeCurrentOrder(int orderUuid) {
    if (_cartData.value != null) {
      final orderIndex = _cartData.value!.saleOrderList.indexWhere(
        (order) => order.uuid == orderUuid,
      );
      if (orderIndex != -1) {
        // 创建新的订单列表，保持响应性
        final newOrderList = List<ResponseCartSaleOrder>.from(_cartData.value!.saleOrderList);
        // 更新指定订单的状态
        final updatedOrder = newOrderList[orderIndex].copyWith(status: 1);
        newOrderList[orderIndex] = updatedOrder;
        // 更新 _cartData
        _cartData.value = _cartData.value!.copyWith(
          saleOrderList: newOrderList,
        );
        // 更新当前选中的订单
        if (_currentSelectedSaleOrderUuid.value == orderUuid) {
          _currentSelectedSaleOrderUuid.value = 0;
        }
      }
    }
    // 返回第一个未完成的订单
    final activeOrder = _cartData.value?.saleOrderList.firstWhereOrNull((order) => order.status == 0);
    return activeOrder != null ? activeOrder.uuid : 0;
  }

  // NOTE: 设置锁定
  setLock() {
    if (_cartData.value == null) return;
    _cartData.value = _cartData.value!.copyWith(
      isLock: true,
    );
  }

  // NOTE: 设置解锁
  setUnlock() {
    if (_cartData.value == null) return;
    _cartData.value = _cartData.value!.copyWith(
      isLock: false,
    );
  }

  // NOTE: 验证是否已经超时
  bool get isTimeout {
    if (_cartData.value == null) return false;
    if (_cartData.value!.buffet == null) return false;
    if (_cartData.value!.buffet!.remainingSeconds == 0) {
      return true;
    }
    return false;
  }

  // NOTE: 是否有折扣
  @override
  bool get isDiscount {
    return getCurrentOrder()?.isDiscount ?? false;
  }

  // NOTE: 是否有会员折扣
  @override
  bool get isMemberDiscount {
    return getCurrentOrder()?.isMemberDiscount ?? false;
  }

  // NOTE: 是否有折扣
  @override
  bool get isAllDiscount {
    try {
      if ((_cartData.value?.saleOrderList.isEmpty ?? true) || _currentSelectedSaleOrderUuid.value == 0) {
        return false;
      }
      final orders = _cartData.value?.saleOrderList;
      for (final order in orders ?? []) {
        if (order.isDiscount) {
          return true;
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // NOTE: 是否有会员折扣
  @override
  bool get isAllMemberDiscount {
    try {
      if ((_cartData.value?.saleOrderList.isEmpty ?? true) || _currentSelectedSaleOrderUuid.value == 0) {
        return false;
      }
      final orders = _cartData.value?.saleOrderList;
      for (final order in orders ?? []) {
        if (order.isMemberDiscount) {
          return true;
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  // ==========================================================================
  //                            私有方法
  // ==========================================================================
  // NOTE: 关于选中销售单的事件
  Future<void> _onSelectedSaleOrder({ResponseCartSaleOrder? saleOrder}) async {
    // 存在选中的商品 - 移动到对应的订单
    if (_goodsCartEditProducts.any((product) => product.isChecked)) {
      final bool isMove = await _moveProduct(from: _currentSelectedSaleOrderUuid.value, to: saleOrder?.uuid ?? 0);
      if (!isMove) return;
    }
    // 重置选中商品
    _isSelectAll.value = false;
    // 重置选中的订单
    _currentSelectedSaleOrderUuid.value = saleOrder?.uuid ?? 0;
    // 重置选中的商品
    _currentSelectedProductUuid.value = 0;
    // 初始化编辑列表
    _initEditProducts();
    // 设置滚动到的商品
    final currentOrder = getCurrentOrder();
    if (currentOrder?.productList.isNotEmpty ?? false) {
      _onProductRowEvent(product: currentOrder?.productList.first);
      _setScrollToProductUuid(product: currentOrder?.productList.first);
    }
  }

  // NOTE: 关于商品行的事件
  Future<void> _onProductRowEvent({ResponseCartProduct? product, dynamic type = ''}) async {
    // 更新选中商品
    _scrollToProductUuid.value = 0;
    _currentSelectedProductUuid.value = product?.uuid ?? 0;
    // 修改商品数量
    if (type == 'up' || type == 'down') {
      _onProductNumChange(product: product, type: type);
    }
    // 长按商品
    if (type == 'long') {
      if (_getTotalProductCount() <= 1) {
        DialogManager.showToast("订单商品数量为1，不支持拆单");
      } else {
        _isEdit.value = true;
      }
    }
  }

  // NOTE: 设置滚动到的商品
  Future<void> _setScrollToProductUuid({ResponseCartProduct? product}) async {
    if (product?.uuid == null) return;
    _scrollToProductUuid.value = product!.uuid;
  }

  // NOTE: 获取购物车信息
  Future<void> _getCartInfo({required int saleBillUuid, int h5OrderUuid = 0}) async {
    try {
      // 请求前的时间戳
      int requestTimeStamp = DateTime.now().millisecondsSinceEpoch;
      // 重置加载错误
      _loadError.value = "";
      //
      ResponseCart? response;
      ErrorCode errorCode;
      if (tag.contains("instant")) {
        (response, errorCode) = await CartAPI().getCartInfo(
          saleBillUuid: saleBillUuid,
          h5OrderUuid: h5OrderUuid,
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
        );
      } else {
        (response, errorCode) = await CartAPI().getDeskCartInfo(
          saleBillUuid: saleBillUuid,
          h5OrderUuid: h5OrderUuid,
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
        );
      }
      // 桌台购物车信息无效 - 需要返回桌台
      if (errorCode == ErrorCode.deskCartInfoInvalid) {
        _loadError.value = "加载错误，请检查网络是否异常!".tr;
        _isLoading.value = false;
        _onBack();
        return;
      }
      // 通用错误
      if (errorCode != ErrorCode.success) {
        _loadError.value = "接口错误，请检查网络是否异常!".tr;
        _isLoading.value = false;
        return;
      }
      if (response != null) {
        // NOTE: 轮询的发起时间大于等于购物车更新时间戳时才更新数据
        if (requestTimeStamp >= _cartUpdateTimeStamp) {
          setCartInfo(cart: response);
        }
      } else {
        _loadError.value = "数据错误，请检查网络是否异常!".tr;
      }
      _isLoading.value = false;
    } catch (e) {
      _loadError.value = "程序错误，请检查网络是否异常!".tr;
      _isLoading.value = false;
    }
  }

  // NOTE: 修改商品数量
  Future<void> _onProductNumChange({ResponseCartProduct? product, dynamic type}) async {
    if (type != 'up' && type != 'down') {
      return;
    }
    //
    if (_isEdit.value) {
      _staticProductNumChange(product: product, type: type);
      return;
    }
    //
    final newNum =
        type == 'up' ? product!.num + 1 : (type == 'down' && product!.num > 0 ? product.num - 1 : product!.num);
    if (product.isMust == true && newNum == 0) {
      bool result = false;
      await DialogManager.showConfirmDialog(
        message: "此商品为必点商品，是否删除此商品？".tr,
        onConfirm: () async {
          result = true;
          return true;
        },
      );
      if (!result) return;
    }
    //
    _loadingProductAddAndSubBtns.value = product.uuid;
    //
    ResponseCart? responseCart;
    RequestOrderNumsProduct request = RequestOrderNumsProduct(
      saleBillUuid: _cartData.value?.saleBillUuid ?? 0,
      saleOrderUuid: _currentSelectedSaleOrderUuid.value,
      saleOrderProductUuid: product.uuid,
      num: newNum,
    );
    if (_cartData.value?.isDeskOrder == false) {
      responseCart = await OrderNumProductAPI().numChange(
        request,
        options: ExtraRequestOptions(showFailToast: true),
      );
    } else {
      responseCart = await OrderNumProductAPI().numChangeDesk(
        request,
        options: ExtraRequestOptions(showFailToast: true),
      );
    }
    _loadingProductAddAndSubBtns.value = 0;
    //
    if (responseCart != null) {
      _cartData.value = responseCart;
    }
  }

  // NOTE: 获取商品数量
  int _getProductNum() {
    try {
      return getCurrentOrder()?.productNum ?? 0;
    } catch (e) {
      return 0;
    }
  }

  // 获取所有订单中商品的总数
  int _getTotalProductCount() {
    if (_cartData.value == null) return 0;
    // 获取所有订单
    final allOrders = _cartData.value?.saleOrderList;
    if (allOrders == null || allOrders.isEmpty) return 0;
    int totalCount = 0;
    // 遍历所有订单，累加商品数量
    for (final order in allOrders) {
      for (final product in order.productList) {
        totalCount += product.num;
      }
    }
    return totalCount;
  }

  // NOTE: 返回事件
  @override
  void Function()? _onBack() {
    _stopGetCartInfoFromAPITimer();
    if (onBack != null) {
      onBack!();
    }
    return null;
  }

  // ==========================================================================
  //  定时器相关
  // ==========================================================================
  // 获取购物车信息定时器
  Timer? _getCartInfoFromAPITimer;
  Future<void> _startGetCartInfoFromAPITimer(
    int saleBillUuid,
    int h5OrderUuid,
  ) async {
    _stopGetCartInfoFromAPITimer();

    _getCartInfoFromAPITimer = Timer.periodic(
      // NOTE: 接了 websocket 后, 30s 轮询一次
      const Duration(seconds: 30),
      (timer) {
        debugPrint('startGetCartInfoFromAPITimer, timer: saleBillUuid $saleBillUuid, ${timer.tick}');

        _getCartInfo(
          saleBillUuid: saleBillUuid,
          h5OrderUuid: h5OrderUuid,
        );
      },
    );
  }

  Future<void> startGetCartInfoFromAPITimer(int saleBillUuid, int h5OrderUuid) async {
    await _startGetCartInfoFromAPITimer(saleBillUuid, h5OrderUuid);
  }

  // 停止获取购物车信息定时器
  Future<void> _stopGetCartInfoFromAPITimer() async {
    _getCartInfoFromAPITimer?.cancel();
    _getCartInfoFromAPITimer = null;
  }

  Future<void> stopGetCartInfoFromAPITimer() async {
    await _stopGetCartInfoFromAPITimer();
  }
}
