enum StorageKey {
  /// DEVICE
  deviceId('DEVICE_ID'),
  deviceRemark('DEVICE_REMARK'),
  productPrinterUuid('PRODUCT_PRINTER_UUID'),

  /// AUTH
  authServerPublicKey('AUTH_SERVER_PUBLIC_KEY'),
  authToken('AUTH_TOKEN'),
  authRefreshToken('AUTH_REFRESH_TOKEN'),
  authSavedUsers('AUTH_SAVED_USERS'),
  authBaseInfo('AUTH_BASE_INFO'),
  // 点餐助手是否绑定收银机
  authIsSelectCashier('IS_SELECT_CASHIER'),
  // 点餐助手 token
  authTokenAssistant('TOKEN_ASSISTANT_CASHIER'),

  /// DESK
  deskList('DESK_LIST'),
  deskCategory('DESK_CATEGORY'),
  deskCurrentInfo('DESK_CURRENT_INFO'),

  /// BUFFET
  buffetList('BUFFET_LIST'),

  /// GOODS
  goodsCategoryList('GOODS_CATEGORY_LIST'),
  goodsBaseList('GOODS_BASE_LIST'),

  /// Route
  currentRoute('CURRENT_ROUTE'),

  /// 设置的卡片模式
  currentCardStyle('CURRENT_CARD_STYLE'),

  /// 设置字体大小
  currentFontSize('CURRENT_FONT_SIZE'),

  /// 语言
  languageCurrent('LANGUAGE_CURRENT'),
  languageSecond('LANGUAGE_SECOND'),

  /// 接单设置语音播报
  acceptOrderVoiceNotification('ACCEPT_ORDER_VOICE_NOTIFICATION'),

  /// 支付方式列表
  paymentMethodList('PAYMENT_METHOD_LIST'),

  /// 平板
  isTabletBind('IS_TABLET_BIND'),
  // 平板端本地声音提醒
  tabletLocalVoiceReminder('TABLET_LOCAL_VOICE_REMINDER'),
  // 平板端本地声音提醒修改时间
  tabletLocalVoiceReminderAt('TABLET_LOCAL_VOICE_REMINDER_UPDATED_AT'),
  // 平板端云端声音提醒
  tabletCloudVoiceReminder('TABLET_CLOUD_VOICE_REMINDER'),
  // 平板端云端声音提醒修改时间
  tabletCloudVoiceReminderAt('TABLET_CLOUD_VOICE_REMINDER_UPDATED_AT'),

  //厨显
  kdsLocalCallReminder('KDS_LOCAL_CALL_REMINDER'),
  kdsLocalCallReminderAt('KDS_LOCAL_CALL_REMINDER_UPDATED_AT'),
  kdsCloudCallReminder('KDS_CLOUD_CALL_REMINDER'),
  kdsCloudCallReminderAt('KDS_CLOUD_CALL_REMINDER_UPDATED_AT'),

  kdsLocalFoodArrivalReminder('KDS_LOCAL_FOOD_ARRIVAL_REMINDER'),
  kdsLocalFoodArrivalReminderAt('KDS_LOCAL_FOOD_ARRIVAL_REMINDER_UPDATED_AT'),
  kdsCloudFoodArrivalReminder('KDS_CLOUD_FOOD_ARRIVAL_REMINDER'),
  kdsCloudFoodArrivalReminderAt('KDS_CLOUD_FOOD_ARRIVAL_REMINDER_UPDATED_AT'),

  /// 打印队列
  printQueue('PRINT_QUEUE'),

  //收银机的首次登录
  isFirstLogin('IS_FIRST_LOGIN'),

  // 未处理通知
  unprocessedNoticeList('UNPROCESSED_NOTICE_LIST'),

  // 锁屏
  isLockScreen('IS_LOCK_SCREEN'),

  // 收银机的 H5 订单
  h5OrderUuid('H5_ORDER_UUID'),

  // 店铺过期时间戳
  saasExpiredAt('SAAS_EXPIRED_AT'),
  saasExpiredShowDialogAtDays('SAAS_EXPIRED_SHOW_DIALOG_AT_DAYS'),

  // 收银机选择的 USB 打印机
  savedUsbDeviceSerial('SAVED_USB_DEVICE_SERIAL'),
  ;

  final String asString;
  const StorageKey(this.asString);

  // 静态方法，通过字符串获取枚举值
  static StorageKey fromString(String value) {
    for (var item in StorageKey.values) {
      if (item.asString == value) {
        return item;
      }
    }
    throw ArgumentError('Invalid shared preferences key: $value');
  }
}
