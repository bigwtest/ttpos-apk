class AcceptItemViewModel {
  final String deskNo;
  final int productNum;
  final double price;
  final int handleTime; // 接单、拒单时间
  final int orderTime; // 订单创建时间
  final int status;
  final int h5OrderUuid;
  final int deskRegionUuid;
  final String waitTime;

  AcceptItemViewModel({
    this.deskNo = '0',
    this.productNum = 0,
    this.price = 100,
    this.handleTime = 0,
    this.orderTime = 0,
    this.status = 0,
    this.h5OrderUuid = 0,
    this.deskRegionUuid = 0,
    this.waitTime = '',
  });
}
