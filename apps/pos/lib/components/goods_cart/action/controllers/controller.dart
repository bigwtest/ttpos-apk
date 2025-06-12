part of '../view/index.dart';

enum ActionCommonType {
  takeout, // 打包
  returns, // 返回
  delete, // 删除
  price, // 价格
  orderCancel, // 整单取消/清台 => 如果是桌台的时候显示为"清台"
  sendingKitchen, // 送厨
  returningDishes, // 退菜
  cancelReturningDishes, // 取消退菜
  remarks, // 备注
  giftDishes, // 赠菜
  cancelGiftDishes, // 取消赠菜
  discounts, // 优惠折扣
  // 点餐
  hangingOrder, // 挂单
  pickOrder, // 取单
  // 桌台
  adjustPeople, // 调整人数
  adjustBuffet, // 调整自助餐
  turntable, // 转台
  parallelPlatform, // 并台
  transferDishes, // 转菜
  otherDialog, // 其他
}

class GoodsCartActionController extends GetxController
    with GoodsCartActionTaskControllerMixin, GoodsCartActionControllerMixin {
  GoodsCartActionController({String tag = "action-instant"}) : _tag = tag;

  // 订单类型
  final String _tag;
  String get tag => _tag;

  // 当前动作列表
  final RxList<Map<String, dynamic>> _actionList = RxList<Map<String, dynamic>>();
  final Rx<ResponseCart?> _cart = Rx<ResponseCart?>(null);

  @override
  void onInit() {
    super.onInit();
    _updateActionList(!tag.contains("instant"), null, null);
  }

  // 更新动作列表
  void _updateActionList(bool isTask, ResponseCart? cart, ResponseCartProduct? product) {
    _cart.value = cart;
    // 判断购物车中是否存在未送厨的商品
    final bool hasUnsentProducts = _hasUnsentProducts(cart);
    //
    final list = isTask
        ? _tableActionList(cart, product, hasUnsentProducts)
            .where(
              (action) =>
                  action['isPermission'] == true || (cart == null && action['type'] != ActionCommonType.adjustBuffet),
            )
            .toList()
        : _getActionList(cart, product, hasUnsentProducts)
            .where((action) => action['isPermission'] == true || cart == null)
            .toList();
    //
    _actionList
      ..clear()
      ..addAll(list);
  }

  // 判断购物车中是否存在未送厨的商品
  bool _hasUnsentProducts(ResponseCart? cart) {
    if (cart == null) return false;
    for (var order in cart.saleOrderList) {
      for (var product in order.productList) {
        // 如果商品未被取消且未送厨（status == 0），则返回 true
        if (!product.isCancel && product.status == 0) {
          return true;
        }
      }
    }
    return false;
  }

  // NOTE: 按钮点击事件
  Future<void> _onTapEvent(
    ResponseCart? cart,
    ResponseCartProduct? product,
    ActionCommonType type,
    BuildContext context,
    Future<bool> Function(ActionCommonType type, Map<String, dynamic> context)? onTapEvent,
  ) async {
    //
    switch (type) {
      case ActionCommonType.takeout: // 打包
        onTapEvent?.call(type, <String, dynamic>{'takeout': !(cart?.takeout ?? false)});
        break;
      case ActionCommonType.returns: // 返回
      case ActionCommonType.delete: // 删除
      case ActionCommonType.price: // 价格
      case ActionCommonType.hangingOrder: // 挂单
      case ActionCommonType.orderCancel: // 整单取消/清台 => 如果是桌台的时候显示为“清台”
      case ActionCommonType.sendingKitchen: // 送厨
      case ActionCommonType.returningDishes: // 退菜
      case ActionCommonType.remarks: // 备注
      case ActionCommonType.giftDishes: // 赠菜
      case ActionCommonType.pickOrder: // 取单
      case ActionCommonType.adjustPeople: // 人数
      case ActionCommonType.adjustBuffet: // 调整自助餐
      case ActionCommonType.turntable: // 转台
      case ActionCommonType.parallelPlatform: // 并台
      case ActionCommonType.transferDishes: // 转菜
      case ActionCommonType.cancelReturningDishes: //取消退菜
      case ActionCommonType.cancelGiftDishes: // 取消赠菜
      case ActionCommonType.discounts: // 优惠折扣
        onTapEvent?.call(type, <String, dynamic>{});
        break;
      // 其他
      case ActionCommonType.otherDialog:
        Get.dialog(
          DismissKeyboardDialog(
            child: OtherDialog(
              actionList: _actionList
                  .firstWhere(
                    (item) => item['type'] == ActionCommonType.otherDialog,
                    orElse: () => {'list': []},
                  )['list']
                  .where((action) => action['isPermission'] == true)
                  .toList(),
              onTap: (type) {
                Get.back();
                onTapEvent?.call(type, <String, dynamic>{});
              },
            ),
          ),
          barrierDismissible: false,
        );
        break;
    }
  }
}
