class PickOrderViewModel {
  final int orderId;
  // 挂单时间
  final String time;
  // 订单总价
  final double totalPrice;
  // 商品列表
  final List<PickOrderGoodsViewModel> goodsList;
  PickOrderViewModel({
    required this.orderId,
    this.time = '',
    this.totalPrice = 0,
    this.goodsList = const [],
  });
}

class PickOrderGoodsViewModel {
  final int? goodsId;
  final String goodsName;
  final double goodsPrice;
  final int goodsNum;
  // 商品状态 0: 未送厨 1:已送厨
  final int status;
  PickOrderGoodsViewModel({
    this.goodsId,
    this.goodsName = '商品名称',
    this.goodsPrice = 0,
    this.goodsNum = 0,
    this.status = 0,
  });
}
