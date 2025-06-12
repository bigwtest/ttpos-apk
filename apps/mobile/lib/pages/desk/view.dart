// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/api/goods/category_api.dart';
import 'package:mobile/api/goods/goods_api.dart';
import 'package:mobile/api/order/desk_ping_api.dart';
import 'package:mobile/components/desk/cart/cart_nav/cart_nav.dart';
import 'package:mobile/components/desk/header/desk_header.dart';
import 'package:mobile/pages/desk/controller.dart';
import 'package:mobile/pages/home/main.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/mobile_goods/goods_view.dart';
import 'package:ttpos_ui/components/mobile_goods/must/goods_must_view.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:uuid/uuid.dart';

class DeskView extends StatefulWidget {
  const DeskView({super.key});

  @override
  State<DeskView> createState() => _DeskViewState();
}

class _DeskViewState extends State<DeskView> {
  // 控制器实例
  late final DeskController controller;
  final String tag = 'desk_${const Uuid().v4()}';

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<DeskController>(tag: tag);
    } catch (e) {
      controller = Get.put(
        DeskController(
          fetchDeskPing: (deskId) async {
            final (res, errorCode) = await DeskPingAPI().getDeskPing(deskId);
            // 成功
            if (errorCode == ErrorCode.success) {
              return res;
            }
            // 失败
            if (errorCode.code == ErrorCode.deskCartInfoInvalid.code) {
              Get.rootDelegate.toNamed(HomeRoutes.open.homeRoute);
            }
            return null;
          },
        ),
        tag: tag,
      );
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<DeskController>(tag: tag)) {
      Get.delete<DeskController>(tag: tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => DeskHeader(
                isLoading: controller.isCallLoading,
                buffetInfo: controller.buffetInfo,
                deskInfo: controller.deskInfo,
                onCheckout: controller.handleCheckout,
              ),
            ),
            Expanded(
              child: Obx(
                () => GoodsView(
                  tag: tag,
                  canChangeNumList: controller.canChangeNumList,
                  isNumLoading: controller.isNumLoading,
                  counterType: controller.counterType.value,
                  changeProduct: controller.changeProduct.value,
                  initIsBuffet: controller.deskInfo?.isBuffet ?? false,
                  unsentKitchenList: controller.unsentKitchenInfo?.products.list ?? [],
                  mustProducts: controller.mustProducts,
                  onBuffetList: () => GoodsAPI().getBuffetGoodsList(controller.saleBillUuid),
                  onGoodsBaseList: GoodsAPI().getGoodsList,
                  onCategoryList: CategoryAPI().getCategoryList,
                  onTapCounter: controller.handleDetailChange,
                  onDetailChange: (detail) => controller.handleDetailChange(detail, CounterType.up),
                ),
              ),
            ),
          ],
        ),
        // 购物车导航
        Positioned(
          left: 10.0,
          right: 10.0,
          bottom: 24.0,
          child: Obx(
            () => CartNav(
              cartIconKey: controller.cartIconKey,
              amountInfo: controller.unsentKitchenInfo?.amountInfo,
              onChange: (status) => controller.handleCartNav(0),
            ),
          ),
        ),
        // 必点商品
        Obx(
          () => controller.mustGoodsList.isNotEmpty
              ? Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: GoodsMustView(
                    isMustLoading: controller.isMustLoading,
                    mustList: controller.mustGoodsList,
                    onMustRefresh: () async {
                      controller.loadDeskPingFromAPI(
                        forceRefresh: true,
                      );
                      return true;
                    },
                    onConfirmMust: controller.handleConfirmMust,
                    onTapCounter: controller.handleDetailChange,
                    onDetailChange: (detail, {mustId}) => controller.handleDetailChange(
                      detail,
                      CounterType.up,
                      mustId: mustId,
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}
