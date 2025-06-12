// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/goods/goods_index.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart';

import './controller.dart';

class InstantView extends StatefulWidget {
  const InstantView({super.key});

  @override
  State<InstantView> createState() => _InstantViewState();
}

class _InstantViewState extends State<InstantView> {
  // 控制器实例
  late final InstantController controller;
  final String tag = 'instant_${const Uuid().v4()}';

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<InstantController>(tag: tag);
    } catch (e) {
      controller = Get.put(InstantController(), tag: tag);
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<InstantController>(tag: tag)) {
      Get.delete<InstantController>(tag: tag);
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
          // 分割线
          const SizedBox(width: 10.0),
          // 商品列表
          Expanded(
            child: Obx(
              () => GoodsIndex(
                tag: tag,
                maxWidth: 160.0,
                isLock: controller.cartInfo?.isLock ?? false,
                isMust: controller.cartInfo?.mustPlans?.list.isNotEmpty ?? false,
                initMust: controller.cartInfo?.mustPlans?.list ?? [],
                isBuffet: false,
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
