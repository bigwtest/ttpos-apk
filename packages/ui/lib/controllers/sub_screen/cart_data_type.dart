// 定义购物车返回的数据类型
import 'package:flutter/foundation.dart';

enum CartDataType {
  updataData('updataData'), // 更新数据
  showPayQrcode('showPayQrcode'), // 打开支付弹窗
  hidePayQrcode('hidePayQrcode'); // 关闭支付弹窗

  final String name;
  const CartDataType(this.name);

  // 静态方法，通过字符串获取枚举值
  static CartDataType? fromName(String name) {
    try {
      for (var item in CartDataType.values) {
        if (item.name == name) {
          return item;
        }
      }
      return null;
    } catch (error, stackTrace) {
      debugPrint('CartDataType=>fromName, path=>$name, error:$error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }
}
