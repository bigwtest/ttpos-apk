// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/accept/main.dart';
import 'package:pos/pages/desk/main.dart';
import 'package:pos/pages/desks/main.dart';
import 'package:pos/pages/empty/main.dart';
import 'package:pos/pages/home/binding.dart';
import 'package:pos/pages/home/view.dart';
import 'package:pos/pages/instant/main.dart';
import 'package:pos/pages/order/main.dart';
import 'package:pos/pages/print/main.dart';
import 'package:pos/pages/setting/main.dart';
import 'package:pos/pages/sold_out/main.dart';
import 'package:pos/routers/middleware/auth_middleware.dart';
import 'package:pos/routers/name.dart';

part 'route.dart';

class HomePage {
  const HomePage({this.name = RouteNames.home});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => HomeView(),
        bindings: [HomeBinding()],
        transition: Transition.fadeIn,
        middlewares: [AuthMiddleware()],
        children: [
          const EmptyPage(name: HomeRoutes.empty).page,
          const InstantPage(name: HomeRoutes.instant).page,
          const DesksPage(name: HomeRoutes.desks).page,
          const DeskPage(name: HomeRoutes.desk).page,
          const OrderPage(name: HomeRoutes.orders).page,
          const SoldOutPage(name: HomeRoutes.soldOut).page,
          const AcceptPage(name: HomeRoutes.accept).page,
          const SettingPage(name: HomeRoutes.settings).page,
          const PrintPage(name: HomeRoutes.prints).page,
        ],
      );
}
