// Package imports:
part of 'main.dart';

abstract class HomeRoutes {
  /// 空页面
  static const empty = '/empty';

  /// 即时点餐
  static const instant = '/instant';

  /// 桌台
  static const desks = '/desks';

  /// 桌台点餐
  static const desk = '/desk/:deskId';

  /// 订单
  static const orders = '/orders';

  /// 订单详情
  static const order = '/order';

  /// 沽清
  static const soldOut = '/sold_out';

  /// 接单
  static const accept = '/accept';

  /// 设置
  static const settings = '/settings';

  /// 打印
  static const prints = '/prints';
}

extension HomeRouteExtension on String {
  String get homeRoute {
    return '${RouteNames.home}$this';
  }

  String get deskRoute {
    return '${RouteNames.home}/desk/$this';
  }
}
