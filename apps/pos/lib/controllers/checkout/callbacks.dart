part of 'checkout_controller.dart';

class CheckoutCallbacks {
  CheckoutCallbacks({
    /// 结账完成
    required this.onCheckOutComplete,

    /// 刷新购物车
    required this.onRefreshCart,

    /// 检查支付订单
    required this.onCheckPaymentOrder,

    /// 获取支付订单
    required this.onGetPaymentOrder,

    /// 创建支付记录
    required this.onCreatePaymentOrder,

    /// 取消支付记录
    required this.onCancelPaymentOrder,

    /// 完成支付订单
    required this.onFinishPaymentOrder,

    /// 获取会员折扣
    required this.onGetMemberDiscount,

    /// 使用会员折扣
    required this.onUseMemberDiscount,

    /// 移除会员折扣
    required this.onRemoveMemberDiscount,

    /// 抹零规则支付订单
    required this.onZeroRulePaymentOrder,

    /// 搜索会员
    required this.onSearchMember,

    /// 送厨
    required this.onCooking,

    /// 检查失败
    required this.onCheckFailed,

    /// 预结账打印
    required this.onPreCheckoutPrint,

    /// 发票打印
    required this.onInvoicePrint,

    /// 锁定订单
    this.onOrderSetLock,

    /// 获取支付方式的二维码信息
    required this.onGetPaymentMethodQrcode,

    /// 打开钱箱
    this.onOpenCashBox,

    /// 开启会员功能
    this.isModuleAvailableMember = false,
  });

  /// 结账完成
  final VoidCallback onCheckOutComplete;

  /// 刷新购物车
  final VoidCallback onRefreshCart;

  /// 检查支付订单
  final Future<(bool, OrderCheck?, ErrorCode?)> Function({
    required RequestOrderCheck query,
    ExtraRequestOptions? options,
  }) onCheckPaymentOrder;

  /// 获取支付订单
  final Future<PaymentInfo?> Function({required RequestUuid query, ExtraRequestOptions? options}) onGetPaymentOrder;

  /// 创建支付记录
  final Future<PaymentInfo?> Function({required RequestCreatePaymentOrder data, ExtraRequestOptions? options})
      onCreatePaymentOrder;

  /// 取消支付记录
  final Future<PaymentInfo?> Function({required RequestCancelPaymentOrder data, ExtraRequestOptions? options})
      onCancelPaymentOrder;

  /// 完成支付订单
  final Future<PaymentFinish?> Function({required RequestUuid data, ExtraRequestOptions? options}) onFinishPaymentOrder;

  /// 获取会员折扣
  final Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      onGetMemberDiscount;

  /// 使用会员折扣
  final Future<PaymentInfo?> Function({required RequestUseMemberDiscount data, ExtraRequestOptions? options})
      onUseMemberDiscount;

  /// 移除会员折扣
  final Future<PaymentInfo?> Function({required RequestUuid data, ExtraRequestOptions? options}) onRemoveMemberDiscount;

  /// 抹零规则支付订单
  final Future<PaymentInfo?> Function({required RequestZeroRule data, ExtraRequestOptions? options})
      onZeroRulePaymentOrder;

  /// 搜索会员
  final Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) onSearchMember;

  /// 送厨
  final Future<bool?> Function() onCooking;

  /// 检查失败情况枚举:
  ///
  /// - [ErrorCode.orderCheckProductDown]: 商品已下架
  /// - [ErrorCode.orderCheckProductFlavorDown]: 商品规格已下架
  /// - [ErrorCode.orderCheckProductStockZero]: 商品库存不足
  /// - [ErrorCode.orderCheckProductPriceChanged]: 商品价格已变动
  /// - [ErrorCode.orderCheckProductLimitOut]: 商品超出限购
  ///
  /// 这些错误码用于在结账流程中进行商品状态检查。
  /// 当遇到以上任一情况时，执行一次购物车刷新，需要用户修改订单后才能继续结账。
  final VoidCallback onCheckFailed;

  /// 预结账打印
  final Future<RespPrinterData?> Function({required RespPrinterRequest data, ExtraRequestOptions? options})
      onPreCheckoutPrint;

  /// 锁定订单
  final VoidCallback? onOrderSetLock;

  /// 发票打印
  final Future<RespPrinterData?> Function({required InvoicePrintRequest data, ExtraRequestOptions? options})
      onInvoicePrint;

  /// 获取支付方式的二维码信息
  final Future<PaymentQrcode?> Function({required RequestPaymentQrcode data, ExtraRequestOptions? options})
      onGetPaymentMethodQrcode;

  /// 打开现金盒
  final VoidCallback? onOpenCashBox;

  /// 开启会员功能
  final bool isModuleAvailableMember;
}
