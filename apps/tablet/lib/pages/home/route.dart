// Package imports:
part of 'main.dart';

abstract class HomeRoutes {
  // NOTE: 开桌
  static const open = '/open';
  // NOTE: 桌台
  static const desk = '/desk';
}

extension HomeRouteExtension on String {
  String get homeRoute {
    return '${RouteNames.home}$this';
  }
}
