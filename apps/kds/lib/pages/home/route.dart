// Package imports:
part of 'main.dart';

abstract class HomeRoutes {
  // NOTE: 接单
  static const accept = '/accept';
}

extension HomeRouteExtension on String {
  String get homeRoute {
    return '${RouteNames.home}$this';
  }
}
