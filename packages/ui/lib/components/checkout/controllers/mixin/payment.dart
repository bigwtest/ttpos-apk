part of '../container.dart';

/// 结账支付混入类，提供支付相关功能
mixin MixinCheckoutPayment on GetxController {
  //===========================================================================
  // 依赖项和接口定义
  //===========================================================================

  /// 应用名称
  // String get _appName;

  /// 日志记录器
  Logger get _logger;

  /// 本地存储
  // SharedPreferencesWithCache get _storage;

  /// 销售单据UUID
  int get saleBillUuid;

  /// 销售订单UUID
  int get saleOrderUuid;

  /// 支付订单完成回调
  void Function() get onPaymentOrderCompleted;

  /// 打开钱箱
  VoidCallback? get onOpenCashBox;

  /// 获取支付订单接口
  Future<PaymentInfo?> Function({required RequestUuid query, ExtraRequestOptions? options}) get onGetPaymentOrder;

  /// 创建支付订单接口
  Future<PaymentInfo?> Function({required RequestCreatePaymentOrder data, ExtraRequestOptions? options})
      get onCreatePaymentOrder;

  /// 取消支付订单接口
  Future<PaymentInfo?> Function({required RequestCancelPaymentOrder data, ExtraRequestOptions? options})
      get onCancelPaymentOrder;

  /// 完成支付订单接口
  Future<PaymentFinish?> Function({required RequestUuid data, ExtraRequestOptions? options}) get onFinishPaymentOrder;

  /// 获取会员折扣接口
  Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      get onGetMemberDiscount;

  /// 使用会员折扣接口
  Future<PaymentInfo?> Function({required RequestUseMemberDiscount data, ExtraRequestOptions? options})
      get onUseMemberDiscount;

  /// 移除会员折扣接口
  Future<PaymentInfo?> Function({required RequestUuid data, ExtraRequestOptions? options}) get onRemoveMemberDiscount;

  /// 设置抹零规则接口
  Future<PaymentInfo?> Function({required RequestZeroRule data, ExtraRequestOptions? options})
      get onZeroRulePaymentOrder;

  /// 打印发票接口
  Future<RespPrinterData?> Function({required InvoicePrintRequest data, ExtraRequestOptions? options})
      get onInvoicePrint;

  Future<RespPrinterData?> Function({required RespPrinterRequest data, ExtraRequestOptions? options})
      get onPreCheckoutPrint;

  /// 获取支付二维码接口
  Future<PaymentQrcode?> Function({required RequestPaymentQrcode data, ExtraRequestOptions? options})
      get onGetPaymentQrcode;

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
  // 基本属性 Getters
  //===========================================================================

  /// 获取支付订单信息
  PaymentInfo? get paymentOrder => _paymentOrder.value;

  /// 获取支付方式列表
  List<PaymentMethodViewModel> get paymentMethods =>
      _paymentOrder.value?.paymentMethods.list.map((PaymentMethod item) {
        String? logoUrl = item.logo;

        if (logoUrl.isNotEmpty && !logoUrl.startsWith('http')) {
          logoUrl = null;
        }

        return PaymentMethodViewModel(
          title: item.paymentName,
          subTitle: item.sourceText,
          icon: logoUrl ?? '',
          uuid: item.uuid,
        );
      }).toList() ??
      [];

  /// 获取支付订单列表
  List<PaymentOrder> get paymentOrders => _paymentOrder.value?.paymentOrders.list ?? [];

  /// 判断当前支付订单是否有现金支付
  bool get hasCashPayment => paymentOrders.any((PaymentOrder item) => item.paymentMethodCode == 40);

  /// 获取当前选择的支付方式UUID
  int get selectedPaymentMethodUuid => _selectedPaymentMethodUuid.value;

  /// 获取当前输入的支付金额字符串
  String get selectedPaymentAmountInput => _selectedPaymentAmountInput.value;

  /// 获取当前输入的支付金额数值
  double get selectedPaymentAmountInputValue => double.tryParse(selectedPaymentAmountInput) ?? 0.0;

  /// 判断当前输入的支付金额是否有效
  bool get isSelectedPaymentAmountInputValid => selectedPaymentIsThirdParty
      ? selectedPaymentAmountInputValue >= globalMinAmountForThirdParty
      : selectedPaymentAmountInputValue >= globalMinAmount;

  //===========================================================================
  // 支付方式相关计算属性
  //===========================================================================

  /// 获取当前选择的支付方式对象
  PaymentMethod? get selectedPayment => _paymentOrder.value?.paymentMethods.list
      .firstWhereOrNull((PaymentMethod item) => item.uuid == _selectedPaymentMethodUuid.value);

  PaymentMethod? getPayment(int uuid) {
    return _paymentOrder.value?.paymentMethods.list.firstWhereOrNull((PaymentMethod item) => item.uuid == uuid);
  }

  /// 判断当前选择的支付方式是否有手续费
  bool get selectedPaymentHasFee => selectedPayment?.hasFee ?? false;

  /// 获取当前选择的支付方式手续费百分比
  double get selectedPaymentFeePercent => selectedPayment?.feePercent.toSafetyDouble() ?? 0;

  /// 判断当前选择的支付方式是否有二维码
  bool get selectedPaymentHasQrcode => selectedPayment?.qrcode.isNotEmpty ?? false;

  /// 判断当前选择的支付方式是否为第三方支付
  bool get selectedPaymentIsThirdParty => selectedPayment?.isThirdParty ?? false;
  final RxBool isThirdPartyDialogOpened = false.obs;

  /// 判断当前选择的支付方式是否为现金
  bool get selectedPaymentIsCash => selectedPayment?.isCash ?? false;

  /// 获取当前选择的支付方式已支付金额
  double? get selectedPaymentAmount => _paymentOrder.value?.paymentOrders.list
      .firstWhereOrNull((PaymentOrder item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
      ?.paymentAmount
      .toSafetyDouble();

  //===========================================================================
  // 金额计算相关属性
  //===========================================================================

  /// 获取销售订单原始金额
  double get saleOrderOriginAmount =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.saleOrderOriginAmount
          .toSafetyDouble() ??
      0;

  /// 获取销售订单金额
  double get saleOrderAmount =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.saleOrderAmount
          .toSafetyDouble() ??
      0;

  /// 获取已付手续费金额
  double get paidFeeAmount =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.commissionFee
          .toSafetyDouble() ??
      0;

  /// 获取未付金额
  double get unpaidAmount =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.unpaidAmount
          .toSafetyDouble() ??
      0;

  /// 判断是否未完成支付
  bool get isUnCompleted => unpaidAmount > 0;

  /// 获取当前支付方式的手续费金额
  double get selectedPaymentFeeAmount {
    if (selectedPaymentHasFee) {
      return (Decimal.parse(selectedPaymentAmountInputValue.toString()) *
              Decimal.parse(selectedPaymentFeePercent.toString()))
          .round(scale: 2)
          .toDouble();
    }
    return 0.0;
  }

  /// 获取当前支付方式的实际支付金额（含手续费）
  double get selectedPaymentActualAmount {
    if (selectedPaymentHasFee) {
      return (Decimal.parse(selectedPaymentAmountInputValue.toString()) +
              Decimal.parse(selectedPaymentFeeAmount.toString()))
          .round(scale: 2)
          .toDouble();
    }
    return selectedPaymentAmountInputValue;
  }

  /// 获取找零金额（仅现金支付时有效）
  double get selectedPaymentChangeAmount {
    if (selectedPaymentIsCash) {
      if (isUnCompleted) {
        // 当前输入金额 - 未付金额 - 已付金额
        final changeAmount = selectedPaymentAmountInputValue - unpaidAmount - (selectedPaymentAmount ?? 0);
        return changeAmount > 0 ? changeAmount : 0.0;
      } else {
        return unpaidAmount.abs();
      }
    }
    return 0.0;
  }

  //===========================================================================
  // 抹零相关属性
  //===========================================================================

  /// 获取抹零规则索引
  int get zeroIndex =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.zeroRule ??
      0;

  /// 是否自动抹零
  bool get isAutoZero =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.isAutoZero ??
      false;

  /// 获取抹零规则的完整文字
  String get zeroRuleText {
    switch (zeroIndex) {
      case 1:
        return isAutoZero ? '自动抹分'.tr : '手动抹分'.tr;
      case 2:
        return isAutoZero ? '自动抹角'.tr : '手动抹角'.tr;
      case 5:
        return isAutoZero ? '自动抹元'.tr : '手动抹元'.tr;
      default:
        return '';
    }
  }

  /// 获取抹零金额
  double get saleOrderZeroAmount =>
      _paymentOrder.value?.amounts.list
          .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
          ?.zeroAmount
          .toSafetyDouble() ??
      0;

  /// 获取抹零规则
  int? get saleOrderZeroRule => _paymentOrder.value?.amounts.list
      .firstWhereOrNull((PaymentAmount item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
      ?.zeroRule;

  /// 获取最终支付金额（考虑手续费和抹零）
  double get finalAmount {
    // 基础金额
    double amount = (Decimal.parse(saleOrderAmount.toString()) + Decimal.parse(paidFeeAmount.toString()))
        .round(scale: 2)
        .toDouble();

    // 如果有手续费，加上手续费
    if (selectedPaymentHasFee) {
      amount = (Decimal.parse(amount.toString()) + Decimal.parse(selectedPaymentFeeAmount.toString()))
          .round(scale: 2)
          .toDouble();
    } else {
      // 如果抹零金额大于0，减抹零金额
      if (saleOrderZeroAmount > 0) {
        amount = (Decimal.parse(amount.toString()) - Decimal.parse(saleOrderZeroAmount.toString()))
            .round(scale: 2)
            .toDouble();
      }
    }
    return amount > 0 ? amount : 0;
  }

  //===========================================================================
  // 辅助方法
  //===========================================================================

  /// 计算抹零金额
  double _roundPrice(double price, String mode) {
    double realPrice = 0;
    switch (mode) {
      case 'branch': // 抹分
        realPrice = (price * 10).floor() / 10;
        break;
      case 'horn': // 抹角
        realPrice = price.floor().toDouble();
        break;
      case 'element': // 抹元
        realPrice = (price / 10).floor() * 10;
        break;
    }
    return price - realPrice;
  }

  /// 显示完成支付对话框
  void _showFinishDialog(PaymentFinish data) async {
    await Get.dialog(
      name: 'FinishDialog',
      DismissKeyboardDialog(
        child: FinishView(
          shouldPayAmount: data.amountInfo.orderAmount.toSafetyDouble(),
          actualPayAmount: data.amountInfo.payAmount.toSafetyDouble(),
          changeAmount: data.amountInfo.changeAmount.toSafetyDouble(),
          isShowChangeAmount: hasCashPayment,
          payMethodNames: data.payMethods.list.map((e) => e.name).toList(),
          requestPrinterData: ({String? printLang}) async {
            return await onPreCheckoutPrint.call(
              data: RespPrinterRequest(
                printLang: printLang,
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ),
              options: ExtraRequestOptions(
                showGlobalLoading: true,
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
          },
          requestInvoicePrinterData: ({invoiceInfo, printLang}) async {
            return await onInvoicePrint(
              data: InvoicePrintRequest(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                printLang: printLang,
                companyAddr: invoiceInfo?.companyAddress,
                companyName: invoiceInfo?.companyName,
                companyPhone: invoiceInfo?.companyPhone ?? '',
                companyTaxNumber: invoiceInfo?.companyTaxNumber,
              ),
              options: ExtraRequestOptions(
                showGlobalLoading: true,
                showFailToast: true,
              ),
            );
          },
        ),
      ),
      barrierDismissible: false,
    );
  }

  void printOrderReceipt(LanguageItem? selectedLanguage) async {
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
    //
    if (result.data == '') return; //如果打印数据为空，则不走打印
    PrintController.sendPrint(result);
  }

  /// 设置抹零规则
  void _setZeroRule(option) async {
    final result = await onZeroRulePaymentOrder(
      data: RequestZeroRule(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        zeroRule: option.value,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );

    if (result != null) {
      _paymentOrder.value = result;
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  /// 显示选择覆盖层
  void _showSelectOverlay(GlobalKey key) {
    final RenderBox? renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final offset = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    // 获取屏幕尺寸
    final screenSize = MediaQuery.of(Get.context!).size;
    final dialogWidth = 140.0.scaleWidth;

    // 计算合适的位置，避免超出屏幕
    double left = offset.dx;
    double top = offset.dy + size.height - 8;

    // 如果右边超出屏幕，向左偏移
    if (left + dialogWidth > screenSize.width) {
      left = screenSize.width - dialogWidth - 20;
    }

    // 如果底部超出屏幕，向上显示
    if (top + 200 > screenSize.height) {
      // 假设下拉框最大高度为200
      top = offset.dy - 200;
    }

    Get.dialog(
      SelectOverlay(
        offset: Offset(left, top),
        size: size,
        width: dialogWidth,
        maxHeight: 180.0.scaleHeight,
        padding: 8.0,
        options: zeroOptions,
        showDeleteButton: false,
        onItemSelected: _setZeroRule,
        onTapOutside: () => Get.back(),
      ),
      barrierColor: Colors.transparent,
    );
  }

  //===========================================================================
  // 业务逻辑方法
  //===========================================================================

  /// 加载支付订单
  Future<void> loadPaymentOrder({bool showGlobalLoading = false}) async {
    try {
      final paymentOrder = await onGetPaymentOrder(
        query: RequestUuid(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ),
        options: ExtraRequestOptions(
          showGlobalLoading: showGlobalLoading,
          showFailToast: true,
          showSuccessToast: false,
        ),
      );

      if (_paymentOrderUpdateTimestamp > _timerExecuteTimestamp) return;

      _paymentOrder.value = paymentOrder;

      if (paymentOrder != null) {
        if (selectedPaymentMethodUuid == 0 && paymentOrder.paymentMethods.list.isNotEmpty) {
          // 如果当前支付方式为空，则选择第一个非会员支付方式
          final paymentMethod = paymentOrder.paymentMethods.list.firstWhereOrNull((e) => !e.isMemberBalance);
          if (paymentMethod != null) {
            togglePaymentMethod(paymentMethod.uuid);
          }
        }
      }
    } catch (error, stackTrace) {
      _logger.severe('loadPaymentOrder Error:', error, stackTrace);
    }
  }

  /// 切换支付方式
  void togglePaymentMethod(int uuid) async {
    final bool canChange = await checkIfPaymentIsMemberBalance(uuid);
    if (!canChange) return;

    bool prepareToShowToast = selectedPaymentIsCash && saleOrderZeroRule != null && saleOrderZeroRule != 0;

    _selectedPaymentMethodUuid.value = uuid;
    _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;

    if (prepareToShowToast && selectedPaymentHasFee) {
      DialogManager.showToast('使用含手续费的支付方式, 手动抹零已失效'.tr);
    }

    if (unpaidAmount <= 0) {
      DialogManager.showToast('已经满足支付金额'.tr);
    }
  }

  /// 搜索会员接口
  Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) get onSearchMember;

  /// 判断当前是否可以添加会员
  bool get canAddMember => _paymentOrder.value?.paymentOrders.list.isEmpty ?? true;
  bool get hasMemberInfo => _paymentOrder.value?.memberInfo != null;

  /// 处理会员操作点击事件
  Future<bool> checkIfPaymentIsMemberBalance(int uuid) async {
    final payment = getPayment(uuid);
    final isMemberBalance = payment?.isMemberBalance ?? false;
    if (!isMemberBalance) return true;

    if (hasMemberInfo) return true;

    if (!canAddMember) {
      DialogManager.showToast('此订单已部分支付，不支持变更会员信息'.tr);
      return false;
    }
    try {
      bool isAdded = false;
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
              isAdded = true;
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
      return isAdded;
    } catch (error, stackTrace) {
      _logger.severe('MixinCheckoutMember onActionMemberTap error:', error, stackTrace);
      return false;
    }
  }

  /// 处理支付金额输入变化
  void onSelectedPaymentAmountInputChanged(String? value) {
    _selectedPaymentAmountInput.value = value ?? '';
  }

  /// 通过键盘处理支付金额输入变化
  void onSelectedPaymentAmountInputChangedByKeyboard(String value) {
    // 如果完成支付，则不能输入
    if (!isUnCompleted) return;

    String origin = _selectedPaymentAmountInput.value;

    // 处理小数点
    if (value == '.') {
      // 如果已经有小数点了，不添加
      if (origin.contains('.')) {
        return;
      }
      // 如果是空字符串，添加 0.
      if (origin.isEmpty) {
        origin = '0.';
      } else {
        origin = origin + value;
      }

      _selectedPaymentAmountInput.value = origin;
      return;
    }

    // 处理数字
    if (value != '.') {
      // 如果包含小数点，检查小数位数
      if (origin.contains('.')) {
        final parts = origin.split('.');
        if (parts[1].length >= 2) {
          return; // 如果已经有两位小数，不再添加
        }
      }
      origin = origin + value;

      final maxValue = selectedPaymentIsCash ? globalMaxAmount : unpaidAmount;

      final overflow =
          (Decimal.tryParse(origin) ?? Decimal.zero) - (Decimal.tryParse(maxValue.toString()) ?? Decimal.zero) >
              Decimal.zero;

      if (overflow) {
        origin = maxValue.toCleanString;
      }

      _selectedPaymentAmountInput.value = origin;
    }
  }

  /// 获取抹零选项列表
  List<SelectOption> get zeroOptions {
    if (saleOrderAmount == 0) return [];

    final List<SelectOption> options = [];
    final price = saleOrderAmount;

    // 抹分
    final branch = _roundPrice(price, 'branch');
    if (branch > 0) {
      final branchPrimaryCurrency = branch.toString().primaryCurrency;
      options.add(
        SelectOption(
          title: '抹分（@price）'.tr.replaceAll('@price', branchPrimaryCurrency),
          value: 1,
          isSelected: zeroIndex == 1,
        ),
      );
    }

    // 抹角
    final horn = _roundPrice(price, 'horn');
    if (horn > 0) {
      final hornPrimaryCurrency = horn.toString().primaryCurrency;
      options.add(
        SelectOption(
          title: '抹角（@price）'.tr.replaceAll('@price', hornPrimaryCurrency),
          value: 2,
          isSelected: zeroIndex == 2,
        ),
      );
    }

    // 抹元
    final element = _roundPrice(price, 'element');
    if (element > 0) {
      final elementPrimaryCurrency = element.toString().primaryCurrency;
      options.add(
        SelectOption(
          title: '抹元（@price）'.tr.replaceAll('@price', elementPrimaryCurrency),
          value: 5,
          isSelected: zeroIndex == 5,
        ),
      );
    }

    // 如果有抹零选项或者有差额，添加实款实收选项
    if (options.isNotEmpty || saleOrderZeroAmount > 0) {
      options.add(
        SelectOption(
          title: '实款实收'.tr,
          value: 0,
          isSelected: zeroIndex == 0,
        ),
      );
    }

    return options;
  }

  /// 处理抹零点击事件
  void onZeroTap(GlobalKey key) {
    _showSelectOverlay(key);
  }

  /// 处理取消订单点击事件
  Future<void> onCancelOrderTap(int uuid) async {
    final result = await onCancelPaymentOrder(
      data: RequestCancelPaymentOrder(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        paymentOrderUuid: uuid,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );

    if (result != null) {
      _paymentOrder.value = result;
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  /// 处理创建订单点击事件
  Future<void> onCreateOrderTap() async {
    if (!isSelectedPaymentAmountInputValid) {
      DialogManager.showToast(
        selectedPaymentIsThirdParty
            ? '最小金额为 @num'.trParams({
                "num": '1'.toString(),
              })
            : '请输入正确的实收金额'.tr,
      );
      return;
    }

    int? paymentOrderUuid;

    // 判断是否是扫码支付
    if (selectedPaymentHasQrcode || selectedPaymentIsThirdParty) {
      String qrcode = selectedPayment?.qrcode ?? '';
      // 如果是第三方支付，则需要传入第三方支付接口
      if (selectedPaymentIsThirdParty) {
        final firstRequest = await onGetPaymentQrcode(
          data: RequestPaymentQrcode(
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            paymentMethodUuid: selectedPaymentMethodUuid,
            paymentAmount: selectedPaymentAmountInputValue,
          ),
          options: ExtraRequestOptions(
            showFailToast: true,
            showGlobalLoading: true,
          ),
        );
        if (firstRequest == null) return;

        if (firstRequest.status == 1) {
          DialogManager.showToast('当前支付方式已完成, 请选择其他支付方式'.tr);
          return;
        }

        qrcode = firstRequest.qrCode;
        paymentOrderUuid = firstRequest.paymentOrderUuid;
        isThirdPartyDialogOpened.value = true;
      }

      // 发送到副屏，打开二维码
      if (!kIsWeb && Platform.isAndroid) {
        try {
          SubScreenService.send(
            method: ScreenMessageType.cartName,
            data: {
              'dataType': CartDataType.showPayQrcode.name, // 关闭支付二维码
              'qrcode': jsonEncode({
                'paymentMethod': selectedPayment?.paymentMethod ?? '',
                'paymentQrcode': qrcode,
                'paymentAmount': selectedPaymentActualAmount,
              }),
            },
          );
        } catch (e) {
          _logger.severe('sendMsgToSubScreen error: $e');
        }
      }

      final result = await Get.dialog(
        DismissKeyboardDialog(
          child: QrcodeView(
            paymentName: selectedPayment?.paymentName ?? '',
            paymentQrcode: qrcode,
            paymentAmount: selectedPaymentActualAmount,
            isThirdParty: selectedPaymentIsThirdParty,
            onGetPaymentQrcode: () => onGetPaymentQrcode(
              data: RequestPaymentQrcode(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                paymentMethodUuid: selectedPaymentMethodUuid,
                paymentAmount: selectedPaymentAmountInputValue,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            ),
            onExitTap: () {
              Get.back(result: false);
              // 发送到副屏，关闭二维码
              if (!kIsWeb && Platform.isAndroid) {
                try {
                  SubScreenService.send(
                    method: ScreenMessageType.cartName,
                    data: {
                      'dataType': CartDataType.hidePayQrcode.name, // 关闭支付二维码
                    },
                  );
                } catch (e) {
                  _logger.severe('sendMsgToSubScreen error: $e');
                }
              }
            },
            onPrintTap: () async {
              final result = await onPreCheckoutPrint(
                data: RespPrinterRequest(
                  payMethodUuid: selectedPaymentMethodUuid,
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                ),
                options: ExtraRequestOptions(
                  showGlobalLoading: true,
                  showFailToast: true,
                ),
              );
              if (result?.data != null) {
                PrintController.sendPrint(result!);
                // Get.back(result: false);
              }
            },
            onConfirmTap: (int? uuid) async {
              if (uuid != null) {
                paymentOrderUuid = uuid;
              }

              Get.back(result: true);

              // 发送到副屏，关闭二维码
              if (!kIsWeb && Platform.isAndroid) {
                try {
                  SubScreenService.send(
                    method: ScreenMessageType.cartName,
                    data: {
                      'dataType': CartDataType.hidePayQrcode.name, // 关闭支付二维码
                    },
                  );
                } catch (e) {
                  _logger.severe('sendMsgToSubScreen error: $e');
                }
              }
            },
          ),
        ),
        barrierDismissible: false,
      );

      isThirdPartyDialogOpened.value = false;

      if (result != true) return;
    }

    final result = await onCreatePaymentOrder(
      data: RequestCreatePaymentOrder(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        paymentMethodUuid: selectedPaymentMethodUuid,
        paymentAmount: selectedPaymentAmountInputValue,
        paymentOrderUuid: paymentOrderUuid,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );

    if (result != null) {
      _paymentOrder.value = result;
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  /// 处理完成订单点击事件
  Future<void> onFinishOrderTap() async {
    final result = await onFinishPaymentOrder(
      data: RequestUuid(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
      ),
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );
    // 如果结果不为空，则更新支付订单
    debugPrint('onFinishOrderTap result: $result');

    if (result == null) return;
    if (hasCashPayment) {
      onOpenCashBox?.call();
    }
    Get.back();
    onPaymentOrderCompleted.call();
    _showFinishDialog(result); //显示结账完成收款明细弹窗
  }

  //===========================================================================
  // 生命周期方法
  //===========================================================================

  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _paymentOrderUpdateTimestamp = 0;
  Worker? _paymentOrderUpdateWorker;

  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  _startTimer() {
    _stopTimer();

    _timer = Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadPaymentOrder();
      },
    );
  }

  _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void onInit() {
    super.onInit();
    loadPaymentOrder(showGlobalLoading: true);
  }

  @override
  void onReady() {
    super.onReady();

    _startTimer();

    _paymentOrderUpdateWorker = ever(
      _paymentOrder,
      (value) {
        _paymentOrderUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;

        if (value != null &&
            selectedPaymentIsThirdParty &&
            isThirdPartyDialogOpened.value &&
            Get.isDialogOpen == true) {
          if (value.paymentOrders.list
              .any((PaymentOrder item) => item.paymentMethodUuid == selectedPaymentMethodUuid)) {
            Get.back(result: true);
          }
        }

        final maxValue = selectedPaymentIsCash ? globalMaxAmount : unpaidAmount;
        final overflow = (Decimal.tryParse(_selectedPaymentAmountInput.value) ?? Decimal.zero) -
                (Decimal.tryParse(maxValue.toString()) ?? Decimal.zero) >
            Decimal.zero;

        if (overflow) {
          _selectedPaymentAmountInput.value = maxValue.toCleanString;
        }
      },
    );

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [MixinCheckoutPayment]');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [MixinCheckoutPayment]');
        _stopTimer();
      },
    );
  }

  @override
  void onClose() {
    _stopTimer();
    _paymentOrderUpdateWorker?.dispose();
    _paymentOrderUpdateWorker = null;

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;

    super.onClose();
  }
}
