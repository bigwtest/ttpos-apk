// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/sub_screen/app.dart';
import 'package:ttpos_ui/controllers/cache_service.dart';

void subScreenEntry() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() => CacheService().initWithCache(), permanent: true);

  runApp(SubScreenApp());
}
