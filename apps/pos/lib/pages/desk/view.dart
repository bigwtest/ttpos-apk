import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/goods/goods_index.dart';
import 'package:pos/pages/desk/controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart';

class DeskView extends StatefulWidget {
  const DeskView({super.key});

  @override
  State<DeskView> createState() => _DeskViewState();
}

class _DeskViewState extends State<DeskView> {
  // 控制器实例
  late final DeskOrderController controller;
  final String tag = 'desk_${const Uuid().v4()}';

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<DeskOrderController>(tag: tag);
    } catch (e) {
      controller = Get.put(
        DeskOrderController(
          tag: tag,
        ),
        tag: tag,
      );
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<DeskOrderController>(tag: tag)) {
      Get.delete<DeskOrderController>(tag: tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomTheme.greyColor.shade100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 订单列表
          controller.carts,
          // 分隔
          SizedBox(width: 10.0),
          // 商品列表
          Expanded(
            child: Obx(
              () => GoodsIndex(
                tag: tag,
                maxWidth: 160.0,
                isLock: controller.cartInfo?.isLock ?? false,
                isMust: controller.cartInfo?.mustPlans?.list.isNotEmpty ?? false,
                initMust: controller.cartInfo?.mustPlans?.list ?? [],
                isBuffet: controller.cartInfo?.buffet != null,
                saleBillUuid: controller.saleBillUuid,
                isTimeout: controller.carts.ordersController.isTimeout,
                onUnlock: controller.orderUnlock,
                onAddProduct: (req, ballDetail) => controller.addProduct(req),
                onConfirmMust: controller.confirmMust,
                onMustRefresh: controller.refreshCartList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
