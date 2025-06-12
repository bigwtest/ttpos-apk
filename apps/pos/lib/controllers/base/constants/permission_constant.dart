part of '../main_controller.dart';

enum PermissionKey {
  /// 即时点餐主页
  instantMain('cashier_cash'),

  /// 即时点餐删除订单
  instantDelete('cashier_cash_delete'),

  /// 即时点餐编辑订单
  instantEdit('cashier_cash_edit'),

  /// 即时点餐价格
  instantPrice('cashier_cash_price'),

  /// 即时点餐备注
  instantRemark('cashier_cash_remark'),

  /// 即时点餐取单
  instantPick('cashier_pick'),

  /// 即时点餐挂单
  instantPlacement('cashier_cash_placement'),

  /// 即时点餐取消订单
  instantCancel('cashier_cash_cancel'),

  /// 即时点餐送厨房
  instantSendKitchen('cashier_cash_send_kitchen'),

  /// 即时点餐退菜
  instantReturn('cashier_cash_return'),

  /// 即时点餐折扣
  instantDiscount('cashier_cash_discount'),

  /// 即时点餐结算
  instantSettle('cashier_cash_settle'),

  /// 即时点餐赠品
  instantGift('cashier_cash_gift'),

  /// 桌台
  deskMain('cashier_table'),

  /// 桌台删除
  deskDelete('cashier_table_delete'),

  /// 桌台编辑
  deskEdit('cashier_table_edit'),

  /// 桌台备注
  deskRemark('cashier_table_remark'),

  /// 桌台价格
  deskPrice('cashier_table_price'),

  /// 桌台人数
  deskNumberPeople('cashier_table_number_people'),

  /// 桌台转台
  deskTurnTable('cashier_table_turntable'),

  /// 桌台清台
  deskClear('cashier_table_clear'),

  /// 桌台送厨房
  deskSendKitchen('cashier_table_send_kitchen'),

  /// 桌台退菜
  deskReturn('cashier_table_return'),

  /// 桌台折扣
  deskDiscount('cashier_table_discount'),

  /// 桌台结算
  deskSettle('cashier_table_settle'),

  /// 桌台赠品
  deskGift('cashier_table_gift'),

  /// 桌台转菜
  deskTransferDishes('cashier_table_turn'),

  /// 桌台自助餐
  deskAdjust('cashier_table_adjust'),

  /// 桌台合单
  deskMerge('cashier_table_merge'),

  /// 订单
  orderMain('cashier_order'),

  /// 店内订单
  orderStoreOrder('cashier_store_order'),

  /// 店内订单详情
  orderStoreOrderDetail('cashier_store_order_detail'),

  /// 店内订单删除
  orderStoreOrderDelete('cashier_store_order_delete'),

  /// 店内订单取消
  orderStoreOrderCancel('cashier_store_order_cancel'),

  /// 店内订单退款
  orderStoreOrderRefund('cashier_store_order_refund'),

  /// 店内订单打印小票
  orderStoreOrderPrint('cashier_store_order_print'),

  /// 店内订单反结账
  orderStoreOrderReverseSettle('cashier_store_order_reverse_settle'),

  /// 店内订单打印发票
  orderStoreOrderPrintInvoice('cashier_store_order_print_invoice'),

  /// 打印记录
  printsMain('cashier_store_prints_index'),

  /// 打印记录打印
  printsPrint('cashier_store_prints_print'),

  /// 设置
  setting('cashier_setting'),

  /// 充值
  recharge('cashier_recharge'),

  /// 营业数据
  businessData('cashier_business_data'),

  /// 交班
  handover('cashier_handover'),

  /// 钱箱
  openBox('cashier_open_box'),

  /// 添加会员
  addMember('cashier_add_member'),

  /// 沽清
  soldOut('cashier_sold_out'),

  /// 接单
  acceptOrder('cashier_accept_order');

  final String asString;

  const PermissionKey(this.asString);
}
