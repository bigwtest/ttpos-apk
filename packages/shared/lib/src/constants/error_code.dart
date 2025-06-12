enum ErrorCode {
  /// NOTE: 成功.通用 [0-99] 先保留
  success(0, '成功'),

  /// NOTE: 成功.??相关 [100-199]
  /// 退款打开钱箱
  openCashBoxSuccess(200, '打印机打开钱箱成功'),

  /// NOTE: 错误.通用错误 [-1 到 -99] 先保留
  failure(-1, '通用失败'),
  systemError(-2, '系统错误'),
  paramError(-3, '参数错误'),
  networkError(-4, '网络错误'),
  timeoutError(-5, '超时错误'),
  dbError(-6, '数据库错误'),
  cacheError(-7, '缓存错误'),
  unknownError(-99, '未知错误'),

  /// NOTE: 错误.认证授权相关 [-100 到 -199]
  unauthorized(-100, '未授权'),
  tokenExpired(-101, 'Token过期'),
  tokenInvalid(-102, '设备已解绑，请重新绑定'),
  accessDenied(-103, 'Token无效'),
  accountDisabled(-104, '账号已禁用'),
  needLogin(-105, '需要登录'),
  loginFailed(-106, '登录失败'),
  casherInfoInvalid(-107, '点餐助手专用-收银机登录信息失效，需要重新选择'),

  ///
  instantOrDeskOrderMethodDisabled(-110, '当前用餐方式已禁用，请选择其他用餐方式'),

  ///
  cashierMaxLogin(-111, '收银机登录已达上限'),
  assistantMaxLogin(-112, '点餐助手登录已达上限'),
  kitchenMaxLogin(-113, '厨显登录已达上限'),
  tabletMaxLogin(-114, '平板登录已达上限'),

  ///
  moduleNotAvailable(-119, '功能模块未在云平台开启'),

  ///
  saasExpired(-191, 'SaaS 已过期'),

  /// NOTE: 错误.订单相关 [-200 到 -299] 或许会附带操作
  orderCheckProductDown(-200, '此单有商品已下架，请修改后继续。'),
  orderCheckProductFlavorDown(-201, '此单有商品规格已下架，请修改后继续。'),
  orderCheckProductStockZero(-202, '此单有商品库存不足，请修改后继续。'),
  orderCheckProductMust(-203, '当前订单的商品未选择必点商品，确定要继续结账吗？'),
  orderCheckProductPriceChanged(-204, '此单有商品价格已变动，请核对后下单'),
  orderCheckProductLimitOut(-205, '以下商品超出限购数量，请在限购数量内下单'),
  orderCheckFailed(-206, '以下商品未送厨，是否一同结账并送厨？'),
  orderCheckIsPartialPayOrCooking(-207, '此单有商品已送厨，是否取消此笔交易？'),
  // 助手端错误
  orderCheckIsSplit(-210, '当前订单已拆单，请前去收银机操作'),
  // 平板端和h5错误处理
  orderContinuePlacingCooking(-231, '剩余@value分钟即可继续下单'),
  orderValueQuantityCooking(-232, '单次仅可下单@value个数量，请分多次下单'),

  /// NOTE: 错误.??相关 [-300 到 -399] 或许会附带操作
  deskCartInfoInvalid(-300, '获取购物车信息错误 - 需要返回桌台'),
  ;

  final int code;
  final String message;
  const ErrorCode(this.code, this.message);

  // NOTE: 静态方法，通过code获取枚举值
  static ErrorCode fromCode(int code) {
    for (var item in ErrorCode.values) {
      if (item.code == code) {
        return item;
      }
    }
    throw ArgumentError('Invalid error code: $code');
  }
}

extension ErrorCodeExtension on int {
  /// 是否需要重定向到登录
  bool get redirectToLogin {
    return this == ErrorCode.tokenExpired.code ||
        this == ErrorCode.tokenInvalid.code ||
        this == ErrorCode.accountDisabled.code ||
        this == ErrorCode.needLogin.code ||
        this == ErrorCode.accessDenied.code ||
        this == ErrorCode.saasExpired.code ||
        this == ErrorCode.moduleNotAvailable.code;
  }

  /// 是否需要显示SaaS过期的弹窗
  bool get isSaasExpired {
    return this == ErrorCode.saasExpired.code;
  }

  /// 模块功能是否开启
  bool get isModuleNotAvailable {
    return this == ErrorCode.moduleNotAvailable.code;
  }

  /// 是否需要重定向到登录, 因为用餐方式变更
  bool get instantOrDeskOrderMethodDisabled {
    return this == ErrorCode.instantOrDeskOrderMethodDisabled.code;
  }

  /// 所有的成功
  bool get success {
    return this == ErrorCode.success.code || this > 0;
  }

  /// 所有的错误
  bool get error {
    return this < 0;
  }

  /// 是否需要显示收银机登录信息失效的弹窗
  bool get isShowCasherDialog {
    return this == ErrorCode.casherInfoInvalid.code;
  }

  /// 是否需要显示订单检查失败的弹窗
  bool get isShowOrderCheckDialog {
    return this == ErrorCode.orderCheckFailed.code ||
        this == ErrorCode.orderCheckProductMust.code ||
        this == ErrorCode.orderCheckProductDown.code ||
        this == ErrorCode.orderCheckProductFlavorDown.code ||
        this == ErrorCode.orderCheckProductStockZero.code ||
        this == ErrorCode.orderCheckProductPriceChanged.code ||
        this == ErrorCode.orderCheckProductLimitOut.code ||
        this == ErrorCode.orderCheckIsSplit.code;
  }

  /// 是否需要显示订单检查关闭的弹窗
  bool get isShowOrderCheckCloseDialog {
    return this == ErrorCode.orderCheckIsPartialPayOrCooking.code;
  }

  /// 是否需要显示SaaS过期的弹窗
  bool get isSaaSExpired {
    return this == ErrorCode.saasExpired.code;
  }

  /// 是否需要显示登录已达上限的弹窗
  bool get isMaxLogin {
    return this == ErrorCode.cashierMaxLogin.code ||
        this == ErrorCode.assistantMaxLogin.code ||
        this == ErrorCode.kitchenMaxLogin.code ||
        this == ErrorCode.tabletMaxLogin.code;
  }
}
