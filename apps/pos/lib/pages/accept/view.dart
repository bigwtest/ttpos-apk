// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/accept/accept_details.dart';
import 'package:pos/components/accept/accept_menu.dart';
import 'package:pos/controllers/accept/accept_controller.dart';
import 'package:uuid/uuid.dart';

class AcceptView extends StatefulWidget {
  const AcceptView({super.key});

  @override
  State<AcceptView> createState() => _AcceptViewState();
}

class _AcceptViewState extends State<AcceptView> {
  late final AcceptController controller;
  final String tag = const Uuid().v4();

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<AcceptController>(tag: tag);
    } catch (e) {
      controller = Get.put(AcceptController(), tag: tag);
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<AcceptController>(tag: tag)) {
      Get.delete<AcceptController>(tag: tag, force: true);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Obx(
          () {
            return Stack(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 480.0,
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: AcceptMenu(tag: tag),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        child: AcceptDetails(tag: tag),
                      ),
                    ),
                  ],
                ),
                if (controller.isPageLoading)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
