part of 'package:pos/components/goods_cart/order/view/index.dart';

/// 拆单控制器 Mixin
mixin SplitOrderController on GetxController {
  // 是否编辑
  final RxBool _isEdit = false.obs;
  // 是否显示拆单
  final RxBool _isShowSplitOrder = false.obs;
  // 是否全选
  final RxBool _isSelectAll = false.obs;
  // 编辑数据
  final RxList<GoodsCartEditProducts> _goodsCartEditProducts = <GoodsCartEditProducts>[].obs;
  //

  // 订单类型
  String get tag;
  // 是否有折扣
  bool get isDiscount;
  // 是否有会员折扣
  bool get isMemberDiscount;
  // 是否有折扣
  bool get isAllDiscount;
  // 是否有会员折扣
  bool get isAllMemberDiscount;
  // 获取购物车数据
  Rx<ResponseCart?> get cartInfo;
  // 获取当前订单
  ResponseCartSaleOrder? getCurrentOrder();
  // 设置当前购物车信息
  Future<void> setCartInfo({ResponseCart? cart, bool isTriggerSelected = false});
  // 获取当前选中的订单uuid
  RxInt get getCurrentSelectedSaleOrderUuid;
  // 返回事件
  void Function()? _onBack();
  // 监听器列表
  final List<Worker> _workers = [];

  @override
  void onInit() {
    super.onInit();

    // 监听购物车数据变化
    _workers.add(
      ever(
        cartInfo,
        (cart) {
          // 判断是否显示拆单
          if (cart != null && cart.saleOrderList.isNotEmpty && cart.saleOrderList.length > 1) {
            _isShowSplitOrder.value = true;
            _updateEditProducts();
          } else if (_isEdit.value != true) {
            _isShowSplitOrder.value = false;
          }
        },
      ),
    );

    // 监听拆单编辑状态
    _workers.add(
      ever(
        _isEdit,
        (isEdit) {
          if (isEdit) {
            _isShowSplitOrder.value = true;
            _initEditProducts();
          } else if ((cartInfo.value?.saleOrderList.isEmpty ?? true) ||
              (cartInfo.value?.saleOrderList.length ?? 0) <= 1) {
            _isShowSplitOrder.value = false;
            _goodsCartEditProducts.clear();
          }
        },
      ),
    );

    // 监听复选框选中状态
    _workers.add(
      ever(
        _goodsCartEditProducts,
        (editProducts) {
          if (!_isEdit.value) {
            return;
          }
          final productNum = getCurrentOrder()?.productList.length ?? 0;
          if (productNum > 0 && editProducts.where((p) => p.isChecked).length == productNum) {
            _isSelectAll.value = true;
          } else {
            _isSelectAll.value = false;
          }
        },
      ),
    );
  }

  // 初始化编辑列表
  Future<void> _initEditProducts() async {
    _goodsCartEditProducts.clear();
    final currentOrder = getCurrentOrder();
    if (currentOrder != null && currentOrder.productList.isNotEmpty) {
      _goodsCartEditProducts.addAll(
        currentOrder.productList.map(
          (product) => GoodsCartEditProducts(
            uuid: product.uuid,
            num: product.num,
            isChecked: false,
          ),
        ),
      );
    }
  }

  // 更新编辑列表
  Future<void> _updateEditProducts() async {
    if (!_isEdit.value) {
      return;
    }
    final currentOrder = getCurrentOrder();
    if (currentOrder != null && currentOrder.productList.isNotEmpty) {
      _goodsCartEditProducts.retainWhere(
        (editProduct) => currentOrder.productList.any(
          (product) => product.uuid == editProduct.uuid,
        ),
      );
    } else {
      _goodsCartEditProducts.clear();
    }
  }

  // NOTE: 关于拆单点击事件
  Future<void> _onSplitTapEvent({String? type, saleOrderUuid = 0}) async {
    switch (type) {
      // 添加拆单
      case 'add_split_order':
        _createSaleOrder();
        break;
      // 退出拆单
      case 'out_split_order':
        _isEdit.value = false;
        break;
      // 撤销拆单
      case 'cancel_split_order':
        _deleteSaleOrderAll();
        break;
      // 关闭拆单
      case 'close_split_order':
        DialogManager.showConfirmDialog(
          message: "是否删除拆单？".tr,
          onConfirm: () async {
            final dynamic isConfirm = await _deleteSaleOrder(saleOrderUuid);
            return isConfirm != null && isConfirm;
          },
        );
        break;
    }
  }

  // NOTE: 关于商品复选框事件
  Future<void> _onChangeCheckbox({ResponseCartProduct? product, bool? value}) async {
    // 更新选中商品
    if (product?.uuid == null) {
      if (_isSelectAll.value == false) {
        _isSelectAll.value = true;
      } else {
        _isSelectAll.value = false;
      }
      final newList = _goodsCartEditProducts.map((product) => product.copyWith(isChecked: _isSelectAll.value)).toList();
      _goodsCartEditProducts.clear();
      _goodsCartEditProducts.addAll(newList);
      return;
    }

    // 如果商品不在列表中，添加新商品
    final index = _goodsCartEditProducts.indexWhere((element) => element.uuid == product!.uuid);
    if (index == -1) {
      _goodsCartEditProducts.add(
        GoodsCartEditProducts(
          uuid: product!.uuid,
          num: product.num,
          isChecked: true,
        ),
      );
    } else {
      // 直接替换元素并刷新
      _goodsCartEditProducts[index] = GoodsCartEditProducts(
        uuid: _goodsCartEditProducts[index].uuid,
        num: _goodsCartEditProducts[index].num,
        isChecked: !_goodsCartEditProducts[index].isChecked,
      );
    }
    // 检查是否全选
    if (_goodsCartEditProducts.where((p) => p.isChecked).length == getCurrentOrder()?.productList.length) {
      _isSelectAll.value = true;
    }
  }

  // NOTE: 创建一个销售订单
  Future<void> _createSaleOrder() async {
    if (cartInfo.value == null) {
      return;
    }

    // 验证是否存在优惠折扣
    if (cartInfo.value?.saleOrderList.length == 1) {
      if (isMemberDiscount && isDiscount) {
        bool resetDiscount = await DialogManager.showConfirmDialog(
          width: 290.0.scaleWidth,
          message: "1.${'优惠折扣将失效，确定后需重新设置优惠折扣'.tr}\n2.${'会员折扣将失效，确定后需重新设置会员折扣'.tr}",
        );
        if (!resetDiscount) return;
      } else if (isDiscount) {
        bool resetDiscount = await DialogManager.showConfirmDialog(
          message: "优惠折扣将失效，确定后需重新设置优惠折扣".tr,
        );
        if (!resetDiscount) return;
      } else if (isMemberDiscount) {
        bool resetDiscount = await DialogManager.showConfirmDialog(
          message: "会员折扣将失效，确定后需重新设置会员折扣".tr,
        );
        if (!resetDiscount) return;
      }
    }

    // 创建销售订单
    ResponseCart? response;
    ExtraRequestOptions options = ExtraRequestOptions(
      showFailToast: true,
      showSuccessToast: true,
      showGlobalLoading: true,
    );
    if (tag.contains("instant")) {
      response = await OrderCreateSaleOrderAPI().createSaleOrder(
        cartInfo.value?.saleBillUuid ?? 0,
        options: options,
      );
    } else {
      response = await OrderCreateSaleOrderAPI().createSaleOrderDesk(
        cartInfo.value?.saleBillUuid ?? 0,
        options: options,
      );
    }
    if (response != null) {
      setCartInfo(cart: response);
    }
  }

  // NOTE: 静态修改商品数量
  Future<void> _staticProductNumChange({ResponseCartProduct? product, String type = 'up'}) async {
    if (product == null || getCurrentSelectedSaleOrderUuid.value == 0 || cartInfo.value == null) {
      return;
    }
    // 查找商品在编辑列表中的索引
    final editProductIndex = _goodsCartEditProducts.indexWhere((element) => element.uuid == product.uuid);
    if (editProductIndex != -1) {
      // 如果商品已经在编辑列表中
      final currentEditProduct = _goodsCartEditProducts[editProductIndex];
      final newNum = type == 'up'
          ? (currentEditProduct.num + 1)
          : (type == 'down' ? max(currentEditProduct.num - 1, 1) : currentEditProduct.num);

      // 确保新数量不超过原始商品数量
      if (newNum <= product.num) {
        final newEditProduct = currentEditProduct.copyWith(num: newNum);
        _goodsCartEditProducts[editProductIndex] = newEditProduct;
        _goodsCartEditProducts.refresh();
      }
    } else {
      // 如果商品不在编辑列表中，添加它
      final newEditProduct = GoodsCartEditProducts(
        uuid: product.uuid,
        num: 1,
        isChecked: false,
      );
      _goodsCartEditProducts.add(newEditProduct);
    }
  }

  // NOTE: 撤销拆单
  Future<bool> _deleteSaleOrderAll() async {
    OrderOperationController operationAPI = OrderOperationController(
      orderType: (cartInfo.value?.isDeskOrder ?? false) ? OrderOperationType.desk : OrderOperationType.instant,
    );
    final ResponseMemberData? memberData = await operationAPI.getOrderMemberList(
      saleBillUuid: cartInfo.value?.saleBillUuid ?? 0,
    );
    if (memberData == null) return false;
    // 
    if (memberData.extra.isCheckout) {
      await DialogManager.showConfirmDialog(
        showCancelButton: false,
        message: "当前订单已结账，无法撤销".tr,
      );
      return false;
    } 
    // 
    if (memberData.extra.isPartialCheckout) {
      await DialogManager.showConfirmDialog(
        showCancelButton: false,
        message: "当前订单已被部分支付，无法撤销".tr,
      );
      return false;
    }
    // 会员ID
    int memberUuid = 0;
    // 判断是否需要重置折扣
    if (isAllMemberDiscount && isAllDiscount) {
      final result = await DialogManager.showConfirmContentDialog(
        width: 290.0.scaleWidth,
        message: "1.${'优惠折扣将失效，确定后需重新设置优惠折扣'.tr}\n2.${'请选择使用会员'.tr}",
        textAlign: TextAlign.left,
        selections: memberData.list.map((member) => 
          SelectionItem(
            id: member.uuid, 
            text: "${member.nickname} (${member.phone})" ,
          ),
        ).toList(),
        onConfirm: (int? value) async {
          memberUuid = value!;
          return true;
        },
      );
      if (!result) return false;
    } else if (isAllDiscount) {
      bool resetDiscount = await DialogManager.showConfirmDialog(
        width: 290.0.scaleWidth,
        message: "优惠折扣将失效，确定后需重新设置优惠折扣".tr,
      );
      if (!resetDiscount) return false;
    } else if (isAllMemberDiscount) {
     final result = await DialogManager.showConfirmContentDialog(
        width: 290.0.scaleWidth,
        message: '请选择使用会员'.tr,
        textAlign: TextAlign.left,
        selections: memberData.list.map((member) => 
          SelectionItem(
            id: member.uuid, 
            text: "${member.nickname} (${member.phone})" ,
          ),
        ).toList(),
        onConfirm: (int? value) async {
          memberUuid = value!;
          return true;
        },
      );
      if (!result) return false;
    } else {
      bool resetDiscount = await DialogManager.showConfirmDialog(
        message: "是否撤销拆单".tr,
      );
      if (!resetDiscount) return false;
    }
    // 撤销拆单
    final ResponseCart? cart = await operationAPI.saleOrderDeleteAll(
      saleBillUuid: cartInfo.value?.saleBillUuid ?? 0,
      memberUuid: memberUuid,
    );
    if (cart != null) {
      setCartInfo(cart: cart);
      return true;
    }
    return false;
  }

  // NOTE: 删除销售订单
  Future<bool> _deleteSaleOrder(int saleOrderUuid) async {
    OrderOperationController operationAPI = OrderOperationController(
      orderType: (cartInfo.value?.isDeskOrder ?? false) ? OrderOperationType.desk : OrderOperationType.instant,
    );
    final ResponseCart? cart = await operationAPI.saleOrderDelete(
      saleBillUuid: cartInfo.value?.saleBillUuid ?? 0,
      saleOrderUuid: saleOrderUuid,
    );
    if (cart != null) {
      setCartInfo(cart: cart);
      //
      final activeOrder = cart.saleOrderList.firstWhereOrNull((order) => order.status == 0);
      if (activeOrder == null) {
        _onBack();
      }
      return true;
    }
    return false;
  }

  // NOTE: 移动产品
  Future<bool> _moveProduct({int from = 0, int to = 0}) async {
    OrderOperationController operationAPI = OrderOperationController(
      orderType: (cartInfo.value?.isDeskOrder ?? false) ? OrderOperationType.desk : OrderOperationType.instant,
    );
    final ResponseCart? cart = await operationAPI.saleOrderMoveProduct(
      RequestOrderMoveProduct(
        saleBillUuid: cartInfo.value?.saleBillUuid ?? 0,
        products: _goodsCartEditProducts
            .where((product) => product.isChecked)
            .map((product) => RequestOrderMoveProducts(num: product.num, uuid: product.uuid))
            .toList(),
        from: from,
        to: to,
      ),
    );
    if (cart != null) {
      setCartInfo(cart: cart);
      return true;
    }
    return false;
  }
}
