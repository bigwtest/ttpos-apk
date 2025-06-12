import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/buffet/response/list/list.dart';
import 'package:ttpos_model/desk/response/category/category.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/desk/response/list/list.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';

class DeskCallbacks {
  /// 打开桌台
  final Future<bool> Function(DeskOpenModel) onOpenDesk;

  /// 校验密码
  final Future<bool> Function({required String password}) onCheckPassword;

  /// 关闭桌台
  final Future<bool> Function(Desk, {String? password, String? reason}) onCloseDesk;

  /// 清台
  final Future<bool> Function(Desk) onCleanDesk;

  /// 点击自助餐桌台
  final Future<void> Function(Desk) onClickBuffetDesk;

  /// 点击非自助餐桌台
  final Future<void> Function(Desk) onClickNotBuffetDesk;

  /// 点击已锁定桌台
  final Future<void> Function(Desk) onClickLockDesk;

  /// 尝试关闭桌台
  final Future<(bool, BaseList<Product>?, String, bool)> Function(Desk) onClickClose;

  /// 获取桌台详情
  final Future<Desk?> Function(int) getDeskData;

  /// 获取桌台列表
  final Future<DeskList?> Function({
    bool showGlobalLoading,
    MetaRequest? meta,
  }) getDeskList;

  /// 获取桌台分类
  final Future<DeskCategory?> Function() getDeskCategory;

  /// 获取自助餐桌台列表
  final Future<BuffetList?> Function() getBuffetList;

  /// 是否可清台
  final bool? isClearable;

  const DeskCallbacks({
    ///
    required this.onOpenDesk,
    required this.onCheckPassword,
    required this.onCloseDesk,
    required this.onCleanDesk,
    required this.onClickBuffetDesk,
    required this.onClickNotBuffetDesk,
    required this.onClickLockDesk,
    required this.onClickClose,
    required this.getDeskData,

    ///
    required this.getDeskList,
    required this.getDeskCategory,
    required this.getBuffetList,

    ///
    this.isClearable,
  });
}

class DeskContainerInternalControllerCallbacks {
  final Future<DeskList?> Function({
    bool showGlobalLoading,
    MetaRequest? meta,
  }) getDeskList;
  final Future<DeskCategory?> Function() getDeskCategory;
  final Future<BuffetList?> Function() getBuffetList;

  const DeskContainerInternalControllerCallbacks({
    required this.getDeskList,
    required this.getDeskCategory,
    required this.getBuffetList,
  });
}

class DeskListItemCallbacks {
  /// 桌台回调
  final DeskCallbacks deskCallbacks;

  /// 加载桌台列表
  final Future<void> Function({bool forceRefresh}) loadDeskList;

  /// 加载桌台分类
  final Future<void> Function({bool forceRefresh}) loadDeskCategory;

  /// 设置当前操作桌台
  final void Function(int) setCurrentActionDeskUuid;

  /// 注册计时器
  final void Function(int) registerTimer;

  /// 注销计时器
  final void Function(int) unregisterTimer;

  /// 是否可清台
  final bool? isClearable;

  const DeskListItemCallbacks({
    required this.deskCallbacks,

    ///
    required this.loadDeskList,
    required this.loadDeskCategory,
    required this.setCurrentActionDeskUuid,
    required this.registerTimer,
    required this.unregisterTimer,

    ///
    this.isClearable,
  });
}
