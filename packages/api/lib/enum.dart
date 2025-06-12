part of 'controller.dart';

// NOTE: 定义所有 API 路径，并添加注释，方便后续维护
enum APIPath {
  unknown('/unknown', 0),
  // PassportAPI
  passportCaptcha('/passport/captcha', 100001),
  passportServerPublicKey('/passport/server_public_key', 100002),

  // AcceptAPI h5_order
  h5OrderGetList('/h5_order/list', 110001),
  h5OrderGetDetail('/h5_order/detail', 110002),
  h5OrderAccept('/h5_order/accept', 110003),
  h5OrderReject('/h5_order/reject', 110004),

  // AuthAPI auth
  authLogin('/login', 120001),
  authLogout('/logout', 120002),
  authGetBaseInfo('/base', 120003),
  authVerifyAdvancedPassword('/verify_advanced_password', 120004),
  authVerifyCashBoxPassword('/verify_cash_box_password', 120005),
  authVerifyLockPassword('/verify_lock_password', 120006),
  authRefreshToken('/refresh_token', 120007),

  // BaseAPI
  baseGetAd('/ad', 130001),
  baseCheckUpdate('/check_update', 130002),
  baseGetLanguage('/language', 130003),
  baseGetReturnReason('/return_reason', 130004),
  baseGetFreeOrGiftReason('/free_or_gift_reason', 130005),

  // SettingAPI setting
  settingGetSetting('/setting', 140001),
  settingUpdateAcceptOrder('/setting/edit_accept_order', 140002),
  settingUpdateSystemConfig('/setting/edit_system', 140003),
  settingUpdateAcceptOrderConfig('/setting/edit_accept_order', 140004),

  // BuffetAPI buffet
  buffetGetBuffetList('/buffet/list', 150001),
  buffetGetDelayList('/buffet/delay/list', 150002),

  // CallAPI call
  callGetAbnormalPrintList('/call/abnormal_print/list', 160001),
  callDeletePrint('/call/print', 160002),
  callPostProcessed('/call/processed', 160003),
  callGetUnprocessedList('/call/unprocessed/list', 160004),
  callReprint('/call/reprint', 160006),
  callGetUnprocessedCount('/call/unprocessed', 160007),
  call('/call', 160008),
  callUnprocessedNotice('/call/unprocessed_notice', 160009),

  // CommonAPI
  commonCreatePublicKey('/passport/server_public_key', 170001),

  // PaymentAPI
  paymentGetList('/payment_method/list', 180001),

  // ProductAPI
  productGetCategoryList('/product/category/list', 190001),
  productGetList('/product/list', 190002),
  productGetBuffetList('/desk/order/buffet/product/list', 190003),
  // 必点方案列表-点餐助手
  productMustPlanList('/order/must_plan_list', 190004),

  // InstantAPI
  // NOTE: 支付相关
  instantOrderCreatePaymentOrder('/instant/order/payment/create', 210001),
  instantOrderGetPaymentInfo('/instant/order/payment/info', 210002),
  instantOrderCancelPaymentOrder('/instant/order/payment/cancel', 210003),
  instantOrderSetPaymentZeroRule('/instant/order/payment/zero_rule', 210004),
  instantOrderFinishPaymentOrder('/instant/order/payment/finish', 210005),
  instantOrderGetMemberDiscount('/instant/order/member/discount', 210006),
  instantOrderMemberDiscountConfirm('/instant/order/member/confirm', 210007),
  instantOrderMemberCancel('/instant/order/member/cancel', 210008),
  instantOrderGetCheck('/instant/order/check', 210009),
  instantOrderPaymentQrcode('/instant/order/payment/qrcode', 210010),
  // NOTE: 必点商品相关
  instantOrderConfirmMustPlan('/instant/order/must_plan/confirm', 210102),
  // NOTE: 操作相关
  instantOrderCancel('/instant/order/cancel', 210201),
  instantOrderHide('/instant/order/hide', 210202),
  instantOrderShow('/instant/order/show', 210203),
  instantOrderList('/instant/order/list', 210204),
  instantOrderClose('/instant/order/close', 210205),
  instantOrderTakeout('/instant/order/takeout', 210206),
  // NOTE: 商品相关
  instantOrderProductDelete('/instant/order/product/delete', 210301),
  instantOrderProductPrice('/instant/order/product/price', 210302),
  instantOrderProductRemark('/instant/order/product/remark', 210303),
  // NOTE: 拆单相关
  instantOrderSaleOrderCreate('/instant/order/sale_order/create', 210401),
  instantOrderSaleOrderDelete('/instant/order/sale_order/delete', 210402),
  instantOrderSaleOrderDeleteAll('/instant/order/sale_order/delete_all', 210403),
  instantOrderSaleOrderMoveProduct('/instant/order/sale_order/move_product', 210404),
  // NOTE: 购物车相关
  instantOrderCartCooking('/instant/order/cart/cooking', 210501),
  instantOrderCartInfo('/instant/order/cart/info', 210502),
  instantOrderCartProductAdd('/instant/order/cart/product/add', 210503),
  instantOrderCartProductNum('/instant/order/cart/product/num', 210504),
  instantOrderCartReturning('/instant/order/cart/product/returning', 210505),
  instantOrderCartCancelReturning('/instant/order/cart/product/cancel_returning', 210506),
  instantOrderCartProductGiving('/instant/order/cart/product/giving', 210507),
  instantOrderCartProductCancelGiving('/instant/order/cart/product/cancel_giving', 210508),
  instantOrderUnlock('/instant/order/unlock', 210509),
  // NOTE: 折扣相关
  instantOrderDiscount('/instant/order/discount', 210601),
  instantOrderDiscountCancel('/instant/order/discount/cancel', 210602),
  instantOrderFree('/instant/order/free', 210701),
  instantOrderGetMemberList('/instant/order/member/list', 210702),

  // DeskAPI
  // NOTE: 桌台相关
  deskGetInfo('/desk/info', 220001),
  deskGetCategory('/desk/region_and_type', 220002),
  deskGetList('/desk/list', 220003),
  deskOpen('/desk/open', 220004),
  deskClose('/desk/close', 220005),
  deskClean('/desk/complete', 220006),
  deskChange('/desk/change', 220007),
  deskMerge('/desk/merge', 220008),
  deskBind('/desk/bind', 220009),
  // NOTE: 支付相关
  deskOrderCreatePaymentOrder('/desk/order/payment/create', 220101),
  deskOrderGetPaymentInfo('/desk/order/payment/info', 220102),
  deskOrderCancelPaymentOrder('/desk/order/payment/cancel', 220103),
  deskOrderSetPaymentZeroRule('/desk/order/payment/zero_rule', 220104),
  deskOrderFinishPaymentOrder('/desk/order/payment/finish', 220105),
  deskOrderGetMemberDiscount('/desk/order/member/discount', 220106),
  deskOrderMemberDiscountConfirm('/desk/order/member/confirm', 220107),
  deskOrderMemberCancel('/desk/order/member/cancel', 220108),
  deskOrderGetCheck('/desk/order/check', 220109),
  deskOrderPaymentQrcode('/desk/order/payment/qrcode', 220110),
  // NOTE: 必点商品相关
  deskOrderConfirmMustPlan('/desk/order/must_plan/confirm', 220202),
  // NOTE: 订单相关
  deskOrderCreate('/desk/order/create', 220301),
  deskOrderCancel('/desk/order/cancel', 220302),
  deskOrderPopulation('/desk/order/population', 220303),
  deskOrderAdjustBuffet('/desk/order/buffet', 220304),
  deskOrderAddClock('/desk/order/buffet/clock', 220305),
  // NOTE: 商品相关
  deskOrderProductDelete('/desk/order/product/delete', 220401),
  deskOrderProductPrice('/desk/order/product/price', 220402),
  deskOrderProductRemark('/desk/order/product/remark', 220403),
  // NOTE: 拆单相关
  deskOrderSaleOrderCreate('/desk/order/sale_order/create', 220501),
  deskOrderSaleOrderDelete('/desk/order/sale_order/delete', 220502),
  deskOrderSaleOrderDeleteAll('/desk/order/sale_order/delete_all', 220503),
  deskOrderSaleOrderMoveProduct('/desk/order/sale_order/move_product', 220504),
  // NOTE: 购物车相关
  deskOrderCartCooking('/desk/order/cart/cooking', 220601),
  deskOrderCartInfo('/desk/order/cart/info', 220602),
  deskOrderCartProductAdd('/desk/order/cart/product/add', 220603),
  deskOrderCartProductNum('/desk/order/cart/product/num', 220604),
  deskOrderCartReturning('/desk/order/cart/product/returning', 220605),
  deskOrderCartCancelReturning('/desk/order/cart/product/cancel_returning', 220606),
  deskOrderCartProductGiving('/desk/order/cart/product/giving', 220607),
  deskOrderCartProductCancelGiving('/desk/order/cart/product/cancel_giving', 220608),
  deskOrderCartProductChangeDesk('/desk/order/cart/product/change_desk', 220609),
  deskOrderTakeout('/desk/order/takeout', 220610),
  deskOrderUnlock('/desk/order/unlock', 220611),
  // NOTE: 折扣相关
  deskOrderDiscount('/desk/order/discount', 220701),
  deskOrderDiscountCancel('/desk/order/discount/cancel', 220702),
  deskOrderFree('/desk/order/free', 220703),
  deskOrderGetMemberList('/desk/order/member/list', 220713),
  // 未送厨商品
  deskOrderUnsentKitchen('/desk/order/unsent_kitchen', 220704),
  // 已送厨商品
  deskOrderSentKitchen('/desk/order/sent_kitchen', 220705),
  // 点餐助手和平板轮询
  deskPing('/desk/ping', 220706),
  // 平板端-专用（向购物车添加商品并送厨）
  deskOrderCartProductAddCooking('/desk/order/cart/product/add_and_cooking', 220707),

  // 扫码点餐
  orderCartConfirm('/order/cart/confirm', 220707), // 确认下单
  orderCartProductAdd('/order/cart/product/add', 220708), // 向购物车添加商品
  orderCartProductNum('/order/cart/product/num', 220709), // 修改购物车商品数量
  orderCartProductOrderedList('/order/cart/product/ordered/list', 220710), // 查询已下单商品
  orderCartProductUnorderedList('/order/cart/product/unordered/list', 220711), // 查询未下单商品
  remark('/remark', 220712), // 桌台订单商品备注

  //打印相关
  deskOrderPrint('/desk/order/print', 220801),
  instantOrderPrint('/instant/order/print', 220802),
  deskInvoicePrint('/desk/order/print/invoice', 220803),
  instantInvoicePrint('/instant/order/print/invoice', 220804),
  openCashBox('/open_cash_box_printer_config', 220805), //打印机打开钱箱
  getPrintList('/print_data', 220806),
  reportPrinterData('/printer/report', 220807),
  reportUsbPrinterData('/usb/printer/report', 220808),

  // HandoverAPI
  handover('/shift', 230001),
  handoverGetExceptionRemark('/user.UserShiftLog/exceptionRemark', 230003),
  handoverReportExceptionRemark('/user.UserShiftLog/exceptionRemark', 230004),
  handoverDepositCash('/shift/deposit', 230005),
  handoverWithdrawCash('/shift/withdraw', 230006),
  handoverPrint('/shift/printer', 230007),

  //营业数据
  businessDataPrint('/statistics/printer', 350001),

  // MemberAPI
  memberAddMember('/member/add', 240001),
  memberRechargeMember('/member/recharge_member', 240002),
  memberSearchMember('/member/search', 240003),
  memberGetMemberLevelList('/member/levels', 240004),
  memberConfirmRechargeOrder('/member/confirm_recharge_order', 240005),
  memberCreateRechargeOrder('/member/create_recharge_order', 240006),
  memberPrintRechargeOrder('/member/print_recharge_order', 240007),
  memberRechargeOrderAddPaymentMethod('/member/recharge_order_add_payment_method', 240008),
  memberRechargeOrderCancelPaymentMethod('/member/recharge_order_cancel_payment_method', 240009),
  memberRechargeOrderInProgress('/member/recharge_order_in_progress', 240010),
  memberRechargeOrderPaymentQrcode('/member/recharge_order/payment/qrcode', 240011),

  //报备
  reportInfo('/report', 340001),

  // 用餐订单
  orderGetList('/order/list', 250001),
  orderGetInfo('/order/info', 250002),
  orderIsCellClose('/order/is_cell_close', 250003),
  orderCancel('/order/cancel', 250004),
  orderDelete('/order/delete', 250005),
  orderRefund('/order/return', 250006),
  orderReverseSettle('/order/reverse_settle', 250007),
  orderPrint('/order/print', 250008),
  orderInvoice('/order/invoice', 250009),
  orderInvoicePrint('/order/print/invoice', 250010),
  orderReReturn('/order/re_return', 250011),

  oldOrderList('/old/order/list', 250013),
  oldOrderInfo('/old/order/info', 250014),
  oldOrderIsCellClose('/order/old/is_cell_close', 250003),
  oldOrderCancel('/old/order/cancel', 250020),
  oldOrderDelete('/old/order/delete', 250012),
  oldOrderRefund('/old/order/return', 250006),
  oldOrderReverseSettle('/old/order/reverse_settle', 250019),
  oldOrderPrint('/old/order/print', 250015),
  oldOrderInvoice('/old/order/invoice', 250016),
  oldOrderInvoicePrint('/old/order/print/invoice', 250017),
  oldOrderReReturn('/old/order/re_return', 250018),

  // SoldOutAPI
  soldOutAdd('/sold_out/add', 260001),
  soldOutCancel('/sold_out/cancel', 260002),
  soldOutCancelAll('/sold_out/cancel_all', 260003),
  soldOutList('/sold_out/list', 260004),

  // 充值订单
  topUpGetList('/recharge_order/list', 270001),
  topUpGetDetails('/recharge_order/info', 270002),
  topUpGetRefundInfo('/recharge_order/refund', 270003),
  topUpRefund('/recharge_order/refund', 270004),
  topUpCancel('/recharge_order/cancel', 270005),
  topUpCheckReverseSettle('/recharge_order/check_reverse_settle', 270006),
  topUpReverseSettle('/recharge_order/reverse_settle', 270007),
  topUpPrint('/recharge_order/print', 270008),
  topUpReReturn('/recharge_order/re_return', 270009),

  // 点餐助手特有
  bindCashier('/bind_cashier', 300001),
  onlineCashiers('/online_cashiers', 300002),

  //锁屏
  lockVerifyPassword('/verify_lock_password', 310001),

  //厨显相关
  productListByOrder('/product/list_by_order', 320001),
  productPrinterList('/product_printer_list', 320002),
  kitchenProductFinish('/product/finish', 320003),
  kitchenProductRecovery('/product/recovery', 320004),
  productListByCategory('/product/list_by_category', 320005),
  kitchenProductHistory('/product/history', 320006),
  kitchenBind('/bind', 320006),

  // 打印列表相关
  printList('/printer/list', 330001),
  printerBase('/printer/base', 330002),
  printerPrint('/printer/print', 330003),

  // 数据统计相关
  statisticsGetBusiness('/statistics/business', 340001),
  statisticsGetPayment('/statistics/payment_method', 340002),
  statisticsGetProductCategory('/statistics/product_category', 340003),
  statisticsGetProduct('/statistics/product', 340004);

  final String basePath;
  final int code;

  const APIPath(this.basePath, this.code);

  static String getPathCode(String? path) {
    if (path == null) {
      return unknown.code.toString();
    }

    if (!path.startsWith('/passport')) {
      List<String> pathList = path.split('/');
      pathList.removeRange(0, 2);
      path = '/${pathList.join('/')}';
    }

    return APIPath.values.firstWhere((e) => e.basePath == path, orElse: () => unknown).code.toString();
  }

  static bool isLoginPath(String? path) {
    if (path == null || path.isEmpty) return false;

    List<String> pathList = path.split('/');
    pathList.removeRange(0, 2);
    path = '/${pathList.join('/')}';

    return APIPath.authLogin.basePath == path;
  }

  static bool isServerPublicKeyPath(String? path) {
    if (path == null || path.isEmpty) return false;

    return APIPath.passportServerPublicKey.basePath == path;
  }

  static bool isEncryptPath(String? path) {
    if (path == null || path.isEmpty) return false;

    List<String> pathList = path.split('/');
    pathList.removeRange(0, 2);
    path = '/${pathList.join('/')}';

    return [
      APIPath.authLogin.basePath,
      APIPath.authVerifyAdvancedPassword.basePath,
      APIPath.authVerifyCashBoxPassword.basePath,
      APIPath.authVerifyLockPassword.basePath,
      APIPath.authRefreshToken.basePath,
    ].contains(path);
  }
}

class APIPrefix {
  static const String cashierPrefix = '/cashier';
  static const String assistantPrefix = '/assistant';
  static const String tabletPrefix = '/tablet';
  static const String kitchenPrefix = '/kitchen';
  static const String h5Prefix = '/h5';
  static const String menuPrefix = '/menu';
}

extension APIPathExtension on APIPath {
  String get path => basePath;
  String get cashierPath => '${APIPrefix.cashierPrefix}$basePath'; // 收银端
  String get assistantPath => '${APIPrefix.assistantPrefix}$basePath'; // 点餐助手端
  String get tabletPath => '${APIPrefix.tabletPrefix}$basePath'; // 平板点餐端
  String get kitchenPath => '${APIPrefix.kitchenPrefix}$basePath'; // 厨显端
  String get h5Path => '${APIPrefix.h5Prefix}$basePath'; // 扫码端
  String get menuPath => '${APIPrefix.menuPrefix}$basePath'; // 电子菜单
}
