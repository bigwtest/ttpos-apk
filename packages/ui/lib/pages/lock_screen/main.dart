// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'binding.dart';
import 'view.dart';

class LockScreenPage {
  const LockScreenPage({
    this.name = '/lock',
    required this.onSubmit,
    this.bindings = const [],
    this.appName = 'TTPOS',
  });

  final String name;
  final List<Bindings> bindings;
  final String appName;
  final Future<bool> Function(String password) onSubmit;

  GetPage get page => GetPage(
        name: name,
        page: () => LockScreenView(
          appName: appName,
          onSubmit: onSubmit,
        ),
        bindings: [
          LockScreenBinding(),
          ...bindings,
        ],
        transition: Transition.downToUp,
      );
}
