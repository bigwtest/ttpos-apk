part of '../container.dart';

/// 结账会员混入类，提供会员相关功能
mixin MixinCheckoutMember on GetxController {
  //===========================================================================
  // 依赖项和接口定义
  //===========================================================================

  /// 应用名称
  // String get _appName;

  /// 日志记录器
  Logger get _logger;

  /// 本地存储
  // SharedPreferencesWithCache get _storage;

  /// 销售单UUID
  int get saleBillUuid;

  /// 销售订单UUID
  int get saleOrderUuid;

  /// 获取会员折扣接口
  Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      get onGetMemberDiscount;

  /// 使用会员折扣接口
  Future<PaymentInfo?> Function({required RequestUseMemberDiscount data, ExtraRequestOptions? options})
      get onUseMemberDiscount;

  /// 移除会员折扣接口
  Future<PaymentInfo?> Function({required RequestUuid data, ExtraRequestOptions? options}) get onRemoveMemberDiscount;

  /// 搜索会员接口
  Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) get onSearchMember;

  /// 打印预结账单接口
  Future<RespPrinterData?> Function({required RespPrinterRequest data, ExtraRequestOptions? options})
      get onPreCheckoutPrint;

  /// 锁定订单方法
  VoidCallback? get onOrderSetLock;

  /// 刷新购物车方法
  VoidCallback? get onRefreshCart;

  /// 获取最终支付金额
  double get finalAmount;

  //===========================================================================
  // 状态变量
  //===========================================================================

  /// 支付订单信息
  Rx<PaymentInfo?> get _paymentOrder;

  /// 当前选择的支付方式UUID
  Rx<int> get _selectedPaymentMethodUuid;

  /// 当前输入的支付金额
  RxString get _selectedPaymentAmountInput;

  //===========================================================================
  // 会员信息相关计算属性
  //===========================================================================

  /// 获取当前选择的支付方式对象
  PaymentMethod? get selectedPayment => _paymentOrder.value?.paymentMethods.list
      .firstWhereOrNull((PaymentMethod item) => item.uuid == _selectedPaymentMethodUuid.value);

  /// 判断当前选择的支付方式是否为会员余额
  bool get selectedPaymentIsMemberBalance => selectedPayment?.isMemberBalance ?? false;

  /// 获取当前会员昵称
  String get currentMemberDiscountMemberNickname => _paymentOrder.value?.memberInfo?.nickname ?? '-';

  /// 获取当前会员等级名称
  String get currentMemberDiscountMemberLevelName {
    final cardName = _paymentOrder.value?.memberInfo?.card.name ?? '-';
    final levelName = _paymentOrder.value?.memberInfo?.level.name ?? '-';
    return '${cardName.isEmpty ? '-' : cardName}/${levelName.isEmpty ? '-' : levelName}';
  }

  /// 获取当前会员余额
  String get currentMemberDiscountMemberBalance => _paymentOrder.value?.memberInfo?.balance.toSafetyString() ?? '0';

  /// 获取当前会员积分
  String get currentMemberDiscountMemberPoints => _paymentOrder.value?.memberInfo?.points.toSafetyString() ?? '0';

  /// 判断当前是否可以添加会员
  bool get canAddMember => _paymentOrder.value?.paymentOrders.list.isEmpty ?? true;

  /// 获取当前选择的支付方式UUID
  int get selectedPaymentMethodUuid => _selectedPaymentMethodUuid.value;

  /// 获取未付金额
  double get unpaidAmount =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.unpaidAmount
          .toSafetyDouble() ??
      0;

  //===========================================================================
  // 业务逻辑方法
  //===========================================================================

  /// 设置支付方式为非会员余额
  void setPaymentMethodToNotMemberBalance() {
    final payment = _paymentOrder.value?.paymentMethods.list
        .firstWhereOrNull((PaymentMethod item) => item.isMemberBalance == false);
    if (payment == null) return;
    _selectedPaymentMethodUuid.value = payment.uuid;
    _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
  }

  /// 处理会员操作点击事件
  Future<void> onActionMemberTap() async {
    if (!canAddMember) {
      DialogManager.showToast('此订单已部分支付，不支持变更会员信息'.tr);
      return;
    }
    try {
      await Get.dialog(
        DismissKeyboardDialog(
          child: MemberPickView(
            onSearch: onSearchMember,
            onConfirm: (int memberUuid, {String? password}) async {
              final result = await onUseMemberDiscount.call(
                data: RequestUseMemberDiscount(
                  memberUuid: memberUuid,
                  password: password,
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                ),
                options: ExtraRequestOptions(
                  showGlobalLoading: true,
                  showFailToast: true,
                  showSuccessToast: true,
                ),
              );
              if (result == null) return false;
              _paymentOrder.value = result;
              _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
              onRefreshCart?.call();
              return true;
            },
            onGetMemberDiscount: onGetMemberDiscount,
            amount: finalAmount,
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
          ),
        ),
        barrierDismissible: false,
      );
    } catch (error, stackTrace) {
      _logger.severe('MixinCheckoutMember onActionMemberTap error:', error, stackTrace);
    }
  }

  /// 处理移除会员折扣点击事件
  Future<void> onRemoveMemberDiscountTap() async {
    final result = await onRemoveMemberDiscount.call(
      data: RequestUuid(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
        showSuccessToast: true,
      ),
    );
    if (result == null) return;
    _paymentOrder.value = result;
    _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;

    if (selectedPaymentIsMemberBalance) {
      setPaymentMethodToNotMemberBalance();
    }

    onRefreshCart?.call();
  }

  /// 处理打印点击事件
  Future<void> onActionPrintTap() async {
    final printerSettingController = Get.find<PrinterSettingController>();
    LanguageItem? selectedLanguage;
    if (printerSettingController.isMultilingual) {
      selectedLanguage = await LanguagePickerController.pick();
    }

    if (printerSettingController.isMultilingual && selectedLanguage == null) {
      return;
    }

    final result = await onPreCheckoutPrint.call(
      data: RespPrinterRequest(
        printLang: selectedLanguage?.name,
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
        showSuccessToast: true,
      ),
    );
    if (result == null) return;
    // 锁定当前订单
    onOrderSetLock?.call();
    //
    if (result.data == '') return; //如果打印数据为空，则不走打印
    PrintController.sendPrint(result);
  }

  //===========================================================================
  // 生命周期方法
  //===========================================================================

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
