// Package imports:
part of 'main.dart';

abstract class HomeRoutes {
  // 桌台
  static const desks = '/desks'; // 桌台列表
  static const desk = '/desk/:deskId'; // 桌台详情
}

extension HomeRouteExtension on String {
  String get homeRoute {
    return '${RouteNames.home}$this';
  }

  String get deskRoute {
    return '${RouteNames.home}/desk/$this';
  }
}
