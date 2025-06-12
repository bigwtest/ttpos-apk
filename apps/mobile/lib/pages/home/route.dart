// Package imports:
part of 'main.dart';

abstract class HomeRoutes {
  // 桌台
  static const desk = '/desk';
  // 开桌
  static const open = '/open';
}

extension HomeRouteExtension on String {
  String get homeRoute {
    return '${RouteNames.home}$this';
  }
}
