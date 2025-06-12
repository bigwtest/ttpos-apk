part of '../main_controller.dart';

enum PermissionKey {
  // 关于商品订单权限
  price('price', '价格'),
  returnDish('return_dish', '退菜'),
  remark('remark', '备注'),
  transferDish('transfer_dish', '转菜'),
  giftDish('gift_dish', '赠菜'),
  // 关于桌台结账权限
  settle('settle', '结账'),
  turnTable('turn_table', '转台'),
  clearTable('clear_table', '清台'),
  mergeTable('merge_table', '并台'),
  discount('discount', '优惠折扣'),
  addMember('add_member', '添加会员'),
  people('people', '人数'),
  adjustBuffet('adjust_buffet', '调整自助餐');

  const PermissionKey(this.asString, this.comment);

  final String asString;
  final String comment;
}
