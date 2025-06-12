// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/sub_screen/pages/recharge/binding.dart';
import 'package:pos/components/sub_screen/pages/recharge/view.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class RechargePage {
  const RechargePage({this.name = SubScreenRouteNames.recharge});
  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const RechargeView(),
        bindings: [RechargeBinding()],
        transition: Transition.fadeIn,
      );
}
