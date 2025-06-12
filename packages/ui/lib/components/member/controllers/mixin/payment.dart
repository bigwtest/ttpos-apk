part of '../recharge.dart';

enum ActiveNode {
  unset,
  rechargeAmount,
  giftAmount,
  giftPoint,
  paymentAmount,
}

/// 充值支付混入类，提供会员充值相关的功能
mixin MixinPayment on GetxController {
  //===========================================================================
  // 依赖注入和服务接口
  //===========================================================================

  /// 完成支付订单的回调
  VoidCallback get onPaymentOrderCompleted;

  /// 打开钱箱
  VoidCallback? get onOpenCashBox;

  /// 获取充值订单的接口
  Future<(bool, RechargeOrder?)> Function() get onGetRechargeOrder;

  /// 创建充值订单的接口
  Future<RechargeOrder?> Function(
    RequestCreateRechargeOrder data, {
    ExtraRequestOptions? options,
  }) get onCreateRechargeOrder;

  /// 确认充值订单的接口
  Future<ConfirmRechargeOrder?> Function(
    RequestConfirmRechargeOrder data, {
    ExtraRequestOptions? options,
  }) get onConfirmRechargeOrder;

  /// 创建支付订单的接口
  Future<RechargeOrder?> Function(
    RequestCreatePaymentOrder data, {
    ExtraRequestOptions? options,
  }) get onCreatePaymentOrder;

  /// 取消支付订单的接口
  Future<RechargeOrder?> Function(
    RequestCancelPaymentOrder data, {
    ExtraRequestOptions? options,
  }) get onCancelPaymentOrder;

  /// 获取支付方式的接口
  Future<BaseList<PaymentMethod>?> Function({
    String type,
    ExtraRequestOptions? options,
  }) get onGetPaymentMethod;

  Future<RespPrinterData?> Function({required RequestPrintRechargeReceipt data, ExtraRequestOptions? options})
      get onRechargeReceipt;

  /// 搜索会员的接口
  Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) get onSearchMember;

  /// 获取会员详情的接口
  Future<Member?> Function(int uuid, {ExtraRequestOptions? options}) get onGetMember;

  /// 获取支付方式的二维码的接口
  Future<PaymentQrcode?> Function(
    RequestPaymentQrcodeForRecharge data, {
    ExtraRequestOptions? options,
  }) get onGetPaymentQrcode;

  //===========================================================================
  // 充值订单基本信息
  //===========================================================================

  /// 充值订单对象
  final Rx<RechargeOrder?> _rechargeOrder = Rx<RechargeOrder?>(null);
  RechargeOrder? get rechargeOrder => _rechargeOrder.value;
  bool get isRechargeOrderGenerated => rechargeOrder != null && rechargeOrder?.uuid != null;

  final RxBool _isInitialized = false.obs;

  /// 赠送金额
  final RxString _giftAmountInput = ''.obs;
  String get giftAmountInput => _giftAmountInput.value;
  double get giftAmount => SafetyNumber.string(_giftAmountInput.value).toSafetyDouble();

  /// 赠送积分
  final RxString _giftPointInput = ''.obs;
  String get giftPointInput => _giftPointInput.value;
  double get giftPoint => SafetyNumber.string(_giftPointInput.value).toSafetyDouble();

  /// 找零
  double get chargeDue => _rechargeOrder.value?.chargeDue.toSafetyDouble() ?? 0.0;

  /// 充值金额
  final RxString _rechargeAmountInput = ''.obs;
  String get rechargeAmountInput => _rechargeAmountInput.value;
  double get rechargeAmount => SafetyNumber.string(_rechargeAmountInput.value).toSafetyDouble();

  /// 充值记录
  List<PaymentOrder> get paymentOrders => _rechargeOrder.value?.paymentOrders.list ?? [];

  /// 订单是否有现金支付
  bool get hasCashPayment => paymentOrders.any((PaymentOrder item) => item.paymentMethodCode == 40);

  /// 更新赠送金额
  void onChangeGiftAmount(String? value) {
    _giftAmountInput.value = value ?? '';
  }

  /// 更新赠送积分
  void onChangeGiftPoint(String? value) {
    _giftPointInput.value = value ?? '';
  }

  /// 更新充值金额
  void onChangeRechargeAmount(String? value) {
    _rechargeAmountInput.value = value ?? '';
  }

  final Rx<ActiveNode> _activeNode = ActiveNode.unset.obs;
  ActiveNode get activeNode => _activeNode.value;
  void clearActiveNode() {
    giftAmountFocusNode.unfocus();
    giftPointFocusNode.unfocus();
    rechargeAmountFocusNode.unfocus();
    paymentAmountFocusNode.unfocus();
    _activeNode.value = ActiveNode.unset;
  }

  void setActiveNode(ActiveNode node) {
    clearActiveNode();

    switch (node) {
      case ActiveNode.giftAmount:
        giftAmountFocusNode.requestFocus();
        break;
      case ActiveNode.giftPoint:
        giftPointFocusNode.requestFocus();
        break;
      case ActiveNode.rechargeAmount:
        rechargeAmountFocusNode.requestFocus();
        break;
      case ActiveNode.paymentAmount:
        paymentAmountFocusNode.requestFocus();
        break;
      default:
        break;
    }

    _activeNode.value = node;
  }

  //===========================================================================
  // 会员信息相关
  //===========================================================================

  /// 当前选中的会员
  final Rx<int?> _selectedMemberUuid = Rx<int?>(null);
  int? get selectedMemberUuid => _selectedMemberUuid.value;
  final Rx<Member?> _selectedMember = Rx<Member?>(null);
  Member? get selectedMember => _selectedMember.value;

  /// 会员搜索关键词
  final Rx<String> _keyword = ''.obs;
  String get keyword => _keyword.value;

  /// 会员搜索结果列表
  final RxList<SearchMember> _searchMemberList = <SearchMember>[].obs;
  List<SearchMember> get searchMemberList => _searchMemberList;

  /// 是否正在搜索会员
  final Rx<bool> _isSearchingMember = false.obs;
  bool get isSearchingMember => _isSearchingMember.value;

  /// 获取当前会员昵称
  String get currentMemberDiscountMemberNickname => selectedMember?.nickname ?? '-';

  /// 获取当前会员等级名称
  String get currentMemberDiscountMemberLevelName {
    final cardName = selectedMember?.card.name ?? '-';
    final levelName = selectedMember?.level.name ?? '-';
    return '${cardName.isEmpty ? '-' : cardName}/${levelName.isEmpty ? '-' : levelName}';
  }

  /// 获取当前会员余额
  String get currentMemberDiscountMemberBalance => selectedMember?.balance.toSafetyString() ?? '0';

  /// 获取当前会员积分
  String get currentMemberDiscountMemberPoints => selectedMember?.points.toSafetyString() ?? '0';

  /// 更新搜索关键词
  void onKeywordChanged(String? value) {
    _keyword.value = value ?? '';
  }

  /// 移除当前选中的会员
  void onRemoveMemberTap() {
    _selectedMemberUuid.value = null;
    _selectedMember.value = null;
  }

  /// 搜索会员并显示下拉选择框
  Future<void> searchMember(String keyword, {GlobalKey? inputFieldKey}) async {
    _searchMember(keyword);
    _showSelectOverlay(inputFieldKey ?? GlobalKey());
  }

  /// 执行会员搜索
  Future<void> _searchMember(String keyword) async {
    if (keyword.isEmpty) {
      _searchMemberList.clear();
      return;
    }
    if (isSearchingMember) return;
    try {
      _isSearchingMember.value = true;
      final result = await onSearchMember(keyword);
      _searchMemberList.value = result?.list ?? [];
    } catch (error, stackTrace) {
      debugPrint('searchMember Error: $error\n$stackTrace');
    } finally {
      _isSearchingMember.value = false;
    }
  }

  /// 显示会员选择下拉框
  void _showSelectOverlay(GlobalKey inputFieldKey) async {
    // 获取 overlay 上下文
    final BuildContext? context = Get.overlayContext;
    if (context == null) return;

    // 通过 GlobalKey 获取输入框的 RenderBox
    final RenderBox? inputBox = inputFieldKey.currentContext?.findRenderObject() as RenderBox?;
    if (inputBox == null) return;

    final offset = inputBox.localToGlobal(Offset.zero);
    final size = inputBox.size;

    // 使用 Get.overlay 插入 overlay
    Get.dialog<int>(
      Obx(
        () => SelectOverlay(
          offset: offset,
          size: size,
          options:
              searchMemberList.map((e) => SelectOption(title: '${e.phone} (${e.nickname})', value: e.uuid)).toList(),
          showDeleteButton: false,
          isLoading: isSearchingMember,
          onItemSelected: (selectedOption) {
            _keyword.value =
                searchMemberList.firstWhereOrNull((item) => item.uuid == selectedOption.value)?.phone ?? '';
            _updateCurrentMember(selectedOption.value);
          },
          empty: EmptyDataView(),
          onTapOutside: () => Get.back(),
        ),
      ),
      barrierColor: Colors.transparent,
    );
  }

  /// 更新当前会员
  void _updateCurrentMember(int? memberUuid) {
    if (memberUuid == null) {
      _selectedMemberUuid.value = null;
      _selectedMember.value = null;
      return;
    }

    _getMember(memberUuid);
  }

  /// 获取会员详情
  Future<void> _getMember(int memberUuid) async {
    final result = await onGetMember(
      memberUuid,
      options: ExtraRequestOptions(showFailToast: true, showGlobalLoading: false),
    );
    if (result == null) {
      _selectedMemberUuid.value = null;
      _selectedMember.value = null;
      return;
    }
    _selectedMemberUuid.value = memberUuid;
    _selectedMember.value = result;
  }

  //===========================================================================
  // 支付方式相关
  //===========================================================================

  /// 支付方式列表
  final Rx<BaseList<PaymentMethod>?> _paymentMethods = Rx<BaseList<PaymentMethod>?>(null);

  bool get isPaymentMethodSelectable => paymentMethods.isNotEmpty && isRechargeOrderGenerated;

  /// 当前选择的支付方式UUID
  final Rx<int> _selectedPaymentMethodUuid = 0.obs;

  /// 当前输入的支付金额
  final RxString _selectedPaymentAmountInput = ''.obs;

  /// 当前选择的支付方式代码
  final Rx<PaymentMethodCode> _selectedPaymentCode = PaymentMethodCode.unknown.obs;

  /// 获取格式化后的支付方式列表
  List<PaymentMethodViewModel> get paymentMethods =>
      _paymentMethods.value?.list.map((PaymentMethod item) {
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

  /// 获取当前选择的支付方式UUID
  int get selectedPaymentMethodUuid => _selectedPaymentMethodUuid.value;

  /// 获取当前选择的支付方式代码
  PaymentMethodCode get selectedPaymentCode => _selectedPaymentCode.value;

  /// 获取当前输入的支付金额字符串
  String get selectedPaymentAmountInput => _selectedPaymentAmountInput.value;

  /// 获取当前输入的支付金额数值
  double get selectedPaymentAmountInputValue => double.tryParse(selectedPaymentAmountInput) ?? 0.0;

  /// 判断当前输入的支付金额是否有效
  bool get isSelectedPaymentAmountInputValid => selectedPaymentIsThirdParty
      ? selectedPaymentAmountInputValue >= globalMinAmountForThirdParty
      : selectedPaymentAmountInputValue >= globalMinAmount;

  /// 获取当前选择的支付方式对象
  PaymentMethod? get selectedPayment => _paymentMethods.value?.list
      .firstWhereOrNull((PaymentMethod item) => item.uuid == _selectedPaymentMethodUuid.value);

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
  double? get selectedPaymentAmount => _rechargeOrder.value?.paymentOrders.list
      .firstWhereOrNull((PaymentOrder item) => item.paymentMethodUuid == selectedPaymentMethodUuid)
      ?.paymentAmount
      .toSafetyDouble();

  /// 获取订单原始金额
  double get saleOrderOriginAmount => _rechargeOrder.value?.rechargeAmount.toSafetyDouble() ?? 0;

  /// 获取未付金额 = 订单原始金额 - _rechargeOrder.value.paymentOrders 里的paymentAmount 之和
  double get unpaidAmount {
    final paymentOrders = _rechargeOrder.value?.paymentOrders.list ?? [];
    if (paymentOrders.isEmpty) {
      return saleOrderOriginAmount;
    }

    final totalPaid = paymentOrders.fold<double>(0.0, (sum, order) => sum + order.paymentAmount.toSafetyDouble());

    return (Decimal.parse(saleOrderOriginAmount.toString()) - Decimal.parse(totalPaid.toString()))
        .round(scale: 2)
        .toDouble();
  }

  /// 判断是否未完成支付
  bool get isUnCompleted => unpaidAmount > 0;

  /// 判断是否可以生成充值订单
  bool get isCanGenerateRechargeOrder =>
      selectedMemberUuid != null && selectedMember != null && rechargeAmount >= globalMinAmountForRecharge;

  /// 判断是否可以创建支付记录
  bool get isCanCreateOrder => isSelectedPaymentAmountInputValid && isUnCompleted && isRechargeOrderGenerated;

  /// 判断是否可以取消支付记录
  bool get isCanCancelOrder => isRechargeOrderGenerated;

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
        return chargeDue;
      }
    }
    return 0.0;
  }

  /// 切换支付方式
  void togglePaymentMethod(int uuid) {
    _selectedPaymentMethodUuid.value = uuid;
    _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    if (activeNode != ActiveNode.paymentAmount) {
      setActiveNode(ActiveNode.paymentAmount);
    }

    if (unpaidAmount <= 0) {
      DialogManager.showToast('已经满足支付金额'.tr);
    }
  }

  /// 处理支付金额输入变化
  void onSelectedPaymentAmountInputChanged(String? value) {
    _selectedPaymentAmountInput.value = value ?? '';
  }

  /// 通过键盘处理支付金额输入变化
  void onSelectedPaymentAmountInputChangedByKeyboard(String value) {
    String computeNewValue(
      String origin,
      String value, {
      bool removeFirstZero = true,
      double? maxValue,
    }) {
      // 处理小数点
      if (value == '.') {
        // 如果已经有小数点了，不添加
        if (origin.contains('.')) {
          return origin;
        }
        // 如果是空字符串，添加 0.
        if (origin.isEmpty) {
          origin = '0.';
        } else {
          origin = origin + value;
        }
        return origin;
      }

      // 处理数字
      if (value != '.') {
        // 如果包含小数点，检查小数位数
        if (origin.contains('.')) {
          final parts = origin.split('.');
          if (parts[1].length >= 2) {
            return origin; // 如果已经有两位小数，不再添加
          }
        }
        origin = origin + value;
      }

      if (removeFirstZero && origin.length > 1) {
        // 如果第一位是0，但不是以"0."开头的情况下，才删除前导零
        if (origin.startsWith('0') && !origin.startsWith('0.')) {
          origin = origin.substring(1);
        }
      }

      if (maxValue != null) {
        final overflow =
            (Decimal.tryParse(origin) ?? Decimal.zero) - (Decimal.tryParse(maxValue.toString()) ?? Decimal.zero) >
                Decimal.zero;
        if (overflow) {
          origin = maxValue.toCleanString;
        }
      }

      return origin;
    }

    switch (activeNode) {
      case ActiveNode.giftAmount:
        _giftAmountInput.value = computeNewValue(
          _giftAmountInput.value,
          value,
          maxValue: globalMaxAmount,
        );
        break;
      case ActiveNode.giftPoint:
        _giftPointInput.value = computeNewValue(
          _giftPointInput.value,
          value,
          maxValue: globalMaxAmount,
        );
        break;
      case ActiveNode.rechargeAmount:
        _rechargeAmountInput.value = computeNewValue(
          _rechargeAmountInput.value,
          value,
          maxValue: globalMaxAmount,
        );
        break;
      case ActiveNode.paymentAmount:
        if (selectedPayment == null) {
          DialogManager.showToast('请先选择支付方式'.tr);
          return;
        }
        _selectedPaymentAmountInput.value = computeNewValue(
          _selectedPaymentAmountInput.value,
          value,
          maxValue: selectedPaymentIsCash ? globalMaxAmount : unpaidAmount,
        );
        break;
      default:
        break;
    }
  }

  //===========================================================================
  // 网络请求相关
  //===========================================================================

  /// 获取支付方式列表
  Future<void> _getPaymentMethods() async {
    try {
      final result = await onGetPaymentMethod(
        type: 'recharge',
        options: ExtraRequestOptions(showFailToast: true),
      );
      _paymentMethods.value = result;

      if (isRechargeOrderGenerated && selectedPayment == null && paymentMethods.isNotEmpty) {
        togglePaymentMethod(paymentMethods.first.uuid);
      }
    } catch (error, stacktrace) {
      debugPrint('getPaymentMethods error: $error\n$stacktrace');
    }
  }

  //===========================================================================
  // 订单操作相关
  //===========================================================================

  /// 创建支付订单
  Future<void> onCreateOrderTap() async {
    if (!isSelectedPaymentAmountInputValid) {
      DialogManager.showToast(
        selectedPaymentIsThirdParty
            ? '最小金额为 @num'.trParams({
                "num": globalMinAmountForThirdParty.toCleanString.toString(),
              })
            : '请输入正确的实收金额'.tr,
      );
      return;
    }

    if (!isCanCreateOrder) {
      DialogManager.showToast('请先创建充值订单'.tr);
      return;
    }

    int? paymentOrderUuid;

    // 判断是否是扫码支付
    if (selectedPaymentHasQrcode || selectedPaymentIsThirdParty) {
      // 如果是第三方支付，则需要获取二维码
      String qrcode = selectedPayment?.qrcode ?? '';
      if (selectedPaymentIsThirdParty) {
        final firstRequest = await onGetPaymentQrcode(
          RequestPaymentQrcodeForRecharge(
            paymentMethodUuid: selectedPaymentMethodUuid,
            paymentAmount: selectedPaymentAmountInputValue,
            rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
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
            method: ScreenMessageType.rechargeName,
            data: {
              'qrcode': jsonEncode({
                'paymentMethod': selectedPayment?.paymentMethod ?? '',
                'paymentQrcode': qrcode,
                'paymentAmount': selectedPaymentActualAmount,
              }),
            },
          );
        } catch (error, stacktrace) {
          debugPrint('sendMsgToSubScreen error: $error');
          debugPrintStack(stackTrace: stacktrace);
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
              RequestPaymentQrcodeForRecharge(
                paymentMethodUuid: selectedPaymentMethodUuid,
                paymentAmount: selectedPaymentAmountInputValue,
                rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            ),
            onExitTap: () {
              Get.back(result: false);
              // 发送到副屏
              if (!kIsWeb && Platform.isAndroid) {
                try {
                  SubScreenService.send(
                    method: ScreenMessageType.carouselName,
                    data: {},
                  );
                } catch (error, stacktrace) {
                  debugPrint('sendMsgToSubScreen error: $error');
                  debugPrintStack(stackTrace: stacktrace);
                }
              }
            },
            onPrintTap: () async {
              final LanguageItem? selectedLanguage = await LanguagePickerController.pick();
              if (selectedLanguage != null) {
                final result = await onRechargeReceipt(
                  data: RequestPrintRechargeReceipt(
                    printLang: selectedLanguage.name,
                    rechargeOrderUuid: selectedPaymentMethodUuid,
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
              }
            },
            onConfirmTap: (int? uuid) async {
              if (uuid != null) {
                paymentOrderUuid = uuid;
              }
              Get.back(result: true);
              // 发送到副屏
              if (!kIsWeb && Platform.isAndroid) {
                try {
                  SubScreenService.send(
                    method: ScreenMessageType.carouselName,
                    data: {},
                  );
                } catch (error, stacktrace) {
                  debugPrint('sendMsgToSubScreen error: $error');
                  debugPrintStack(stackTrace: stacktrace);
                }
              }
            },
            isShowPrintButton: false,
          ),
        ),
        barrierDismissible: false,
      );

      isThirdPartyDialogOpened.value = false;

      if (result != true) return;
    }

    final request = RequestCreatePaymentOrder(
      paymentAmount: selectedPaymentAmountInputValue,
      paymentMethodUuid: selectedPaymentMethodUuid,
      rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
      paymentOrderUuid: paymentOrderUuid,
    );
    final response = await onCreatePaymentOrder(
      request,
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );
    if (response == null) return;

    _rechargeOrder.value = response;

    if (selectedPaymentMethodUuid != 0) {
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  /// 取消支付订单
  Future<void> onCancelOrderTap(int paymentOrderUuid) async {
    if (!isCanCancelOrder) {
      DialogManager.showToast('请先创建充值订单'.tr);
      return;
    }
    final request = RequestCancelPaymentOrder(
      paymentOrderUuid: paymentOrderUuid,
      rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
    );
    final response = await onCancelPaymentOrder(
      request,
      options: ExtraRequestOptions(
        showFailToast: true,
        showGlobalLoading: true,
      ),
    );
    if (response == null) return;

    _rechargeOrder.value = response;

    if (selectedPaymentMethodUuid != 0) {
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  /// 确认支付订单
  Future<void> onGenerateOrderTap() async {
    final request = RequestCreateRechargeOrder(
      giftAmount: giftAmount,
      giftPoint: giftPoint,
      memberUuid: selectedMemberUuid ?? 0,
      rechargeAmount: rechargeAmount,
      rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
    );
    final response = await onCreateRechargeOrder(
      request,
      options: ExtraRequestOptions(
        showFailToast: true,
        showGlobalLoading: true,
      ),
    );
    if (response == null) return;

    _rechargeOrder.value = response;

    if (selectedPaymentMethodUuid != 0) {
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  /// 完成支付订单
  Future<void> onFinishOrderTap() async {
    if (isUnCompleted) {
      DialogManager.showToast('请先完成支付'.tr);
      return;
    }
    final request = RequestConfirmRechargeOrder(
      memberUuid: selectedMemberUuid ?? 0,
      rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
    );
    final response = await onConfirmRechargeOrder(
      request,
      options: ExtraRequestOptions(
        showFailToast: true,
        showGlobalLoading: true,
      ),
    );
    if (response == null) return;

    if (hasCashPayment) {
      onOpenCashBox?.call();
    }
    Get.back();
    onPaymentOrderCompleted.call();
    _showFinishDialog(response);
  }

  /// 显示完成支付对话框
  void _showFinishDialog(ConfirmRechargeOrder data) async {
    Get.dialog(
      name: 'FinishDialog',
      DismissKeyboardDialog(
        child: FinishView(
          shouldPayAmount: data.amount.toSafetyDouble(),
          actualPayAmount: data.actualAmount.toSafetyDouble(),
          changeAmount: data.chargeDue.toSafetyDouble(),
          isShowChangeAmount: hasCashPayment,
          payMethodNames: data.paymentMethods,
          requestPrinterData: ({String? printLang}) async {
            return await onRechargeReceipt(
              data: RequestPrintRechargeReceipt(
                printLang: printLang ?? '',
                rechargeOrderUuid: rechargeOrder?.uuid ?? 0,
              ),
              options: ExtraRequestOptions(
                showGlobalLoading: true,
                showFailToast: true,
              ),
            );
          },
          isShowInvoiceButton: false,
        ),
      ),
      barrierDismissible: false,
    );
  }

  /// 获取充值订单的接口
  Future<void> _onGetRechargeOrder() async {
    final (success, rechargeOrderResponse) = await onGetRechargeOrder();
    if (!success) return;
    if (_rechargeOrderUpdateTimestamp > _timerExecuteTimestamp) return;

    if (rechargeOrderResponse == null && _rechargeOrder.value != null) {
      DialogManager.showToast('充值订单已完成或已取消'.tr);
      _keyword.value = '';
      _selectedPaymentAmountInput.value = '';
      _selectedPaymentMethodUuid.value = 0;
      setActiveNode(ActiveNode.unset);
    }

    _rechargeOrder.value = rechargeOrderResponse;

    final overflow = (Decimal.tryParse(_selectedPaymentAmountInput.value) ?? Decimal.zero) -
            (Decimal.tryParse(unpaidAmount.toString()) ?? Decimal.zero) >
        Decimal.zero;
    if (overflow) {
      _selectedPaymentAmountInput.value = (unpaidAmount < 0 ? 0.0 : unpaidAmount).toCleanString;
    }
  }

  //===========================================================================
  // 生命周期相关
  //===========================================================================

  /// 用于监听订单变化的工作器
  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _rechargeOrderUpdateTimestamp = 0;
  Worker? _rechargeOrderUpdateWorker;

  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  _startTimer() {
    _stopTimer();

    _timer = Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        _onGetRechargeOrder();
      },
    );
  }

  _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  final FocusNode searchMemberFocusNode = FocusNode();
  final FocusNode giftAmountFocusNode = FocusNode();
  final FocusNode giftPointFocusNode = FocusNode();
  final FocusNode rechargeAmountFocusNode = FocusNode();
  final FocusNode paymentAmountFocusNode = FocusNode();

  @override
  void onInit() {
    super.onInit();
    _getPaymentMethods();

    // 监听订单变化，同步更新相关字段
    _rechargeOrderUpdateWorker = ever(
      _rechargeOrder,
      (value) {
        _rechargeOrderUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;

        if (value != null &&
            selectedPaymentIsThirdParty &&
            isThirdPartyDialogOpened.value &&
            Get.isDialogOpen == true) {
          if (value.paymentOrders.list
              .any((PaymentOrder item) => item.paymentMethodUuid == selectedPaymentMethodUuid)) {
            Get.back(result: true);
          }
        }

        if (value != null && selectedPayment == null && paymentMethods.isNotEmpty) {
          togglePaymentMethod(paymentMethods.first.uuid);
        }

        if (!_isInitialized.value) {
          _giftAmountInput.value = value?.giftAmount.toSafetyString() ?? '';
          _giftPointInput.value = value?.giftPoint.toSafetyString() ?? '';
          _rechargeAmountInput.value = value?.rechargeAmount.toSafetyString() ?? '';

          _updateCurrentMember(value?.memberUuid);
          _isInitialized.value = true;
          return;
        }
      },
    );

    // 添加焦点监听器
    giftAmountFocusNode.addListener(() {
      // 在这里处理焦点变化事件
      if (giftAmountFocusNode.hasFocus) {
        setActiveNode(ActiveNode.giftAmount);
      }
    });

    // 可以为其他焦点节点也添加监听器
    giftPointFocusNode.addListener(() {
      if (giftPointFocusNode.hasFocus) {
        setActiveNode(ActiveNode.giftPoint);
      }
    });

    rechargeAmountFocusNode.addListener(() {
      if (rechargeAmountFocusNode.hasFocus) {
        setActiveNode(ActiveNode.rechargeAmount);
      }
    });

    paymentAmountFocusNode.addListener(() {
      if (paymentAmountFocusNode.hasFocus) {
        setActiveNode(ActiveNode.paymentAmount);
      }
    });

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [InstantController]');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [InstantController]');
        _stopTimer();
      },
    );
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    _stopTimer();
    // 释放资源
    _rechargeOrderUpdateWorker?.dispose();
    _rechargeOrderUpdateWorker = null;
    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;

    // 释放资源
    searchMemberFocusNode.dispose();
    giftAmountFocusNode.dispose();
    giftPointFocusNode.dispose();
    rechargeAmountFocusNode.dispose();
    paymentAmountFocusNode.dispose();

    super.onClose();
  }
}
