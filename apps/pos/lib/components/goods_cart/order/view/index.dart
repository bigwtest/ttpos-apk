// Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/api/order/cart_api.dart';
import 'package:pos/api/order/create_sale_order.dart';
import 'package:pos/api/order/num_product_api.dart';
import 'package:pos/components/goods_cart/order/models/model.dart';
// Project imports:
import 'package:pos/components/goods_cart/order/view/checkout/billing.dart';
import 'package:pos/components/goods_cart/order/view/checkout/total.dart';
import 'package:pos/components/goods_cart/order/view/header/list_header.dart';
import 'package:pos/components/goods_cart/order/view/header/table_info.dart';
import 'package:pos/components/goods_cart/order/view/list/list.dart';
import 'package:pos/components/goods_cart/order/view/split_order/split_order.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/order/operation_controller.dart';
import 'package:pos/model/request/order/move_product.dart';
import 'package:pos/model/request/order/nums_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/cart/cart_amount_info.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:pos/model/response/cart/cart_sale_order.dart';
import 'package:pos/model/response/order/member.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tt_order_lock/tt_order_lock.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/sub_screen/cart_data_type.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

part 'package:pos/components/goods_cart/order/controllers/controller.dart';
part 'package:pos/components/goods_cart/order/controllers/controller_split.dart';

// 控制器绑定
class GoodsCartOrderView extends StatefulWidget {
  final String tag;
  final bool permanent;
  final void Function(String)? onTapEvent;
  final void Function(int saleBillUuid, int saleOrderUuid)? onCheckout;
  final void Function(ResponseCartProduct, dynamic)? onProductRowEvent;
  final void Function()? onBack;
  final Future<bool> Function()? onUnlock;

  const GoodsCartOrderView({
    super.key,
    required this.tag,
    this.permanent = false,
    this.onTapEvent,
    this.onProductRowEvent,
    this.onCheckout,
    this.onBack,
    this.onUnlock,
  });

  // 获取控制器实例 - 复杂点，但生命力更强
  GoodsCartOrderController get controller {
    try {
      return Get.find<GoodsCartOrderController>(tag: "${tag}_tag_order");
    } catch (e) {
      return Get.put(
        GoodsCartOrderController(
          tag: "${tag}_tag_order",
          onBack: onBack,
        ),
        tag: "${tag}_tag_order",
        permanent: permanent,
      );
    }
  }

  // 权限
  BaseInfoController get baseController {
    try {
      return Get.find<BaseInfoController>();
    } catch (e) {
      return Get.put(BaseInfoController());
    }
  }

  @override
  State<GoodsCartOrderView> createState() => _GoodsCartOrderViewState();
}

class _GoodsCartOrderViewState extends State<GoodsCartOrderView> {
  // 控制器实例
  late final GoodsCartOrderController controller;

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    controller = widget.controller;
  }

  @override
  void dispose() {
    // 销毁控制器
    if (!widget.permanent && Get.isRegistered<GoodsCartOrderController>(tag: "${widget.tag}_tag_order")) {
      Get.delete<GoodsCartOrderController>(tag: "${widget.tag}_tag_order");
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: 458.0.scaleWidthSmall,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      children: [
                        // 桌台信息(需要判断是否为桌台)
                        !widget.tag.contains("instant") || (controller._cartData.value?.isDeskOrder ?? false)
                            ? TableInfo(
                                buffet: controller._cartData.value?.buffet,
                                desk: controller._cartData.value?.desk,
                                onTapEvent: (String type) {
                                  widget.onTapEvent?.call(type);
                                },
                              )
                            : SizedBox.shrink(),
                        // 订单头部
                        ListHeader(
                          isEdit: controller._isEdit.value,
                          numberText: '数量'.tr,
                          totalText: '小计'.tr,
                          isSelectAll: controller._isSelectAll.value,
                          onChangeCheckbox: (bool value) {
                            controller._onChangeCheckbox(value: value);
                          },
                        ),
                        // 订单列表
                        Expanded(
                          child: OrderProductList(
                            isEdit: controller._isEdit.value,
                            isLoading: controller._isLoading.value,
                            loadError: controller._loadError.value,
                            loadingProductAddAndSubBtns: controller._loadingProductAddAndSubBtns.value,
                            saleOrder: controller.getCurrentOrder(),
                            selectedProductUuid: controller._currentSelectedProductUuid.value,
                            scrollToProductUuid: controller._scrollToProductUuid.value,
                            editProducts: controller._goodsCartEditProducts,
                            onChangeCheckbox: (ResponseCartProduct product, bool value) {
                              controller._onChangeCheckbox(product: product, value: value);
                            },
                            onProductRowEvent: (ResponseCartProduct product, dynamic type) {
                              controller._onProductRowEvent(product: product, type: type);
                              widget.onProductRowEvent?.call(product, type);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        // 拆单
                        if (controller._isShowSplitOrder.value)
                          SplitOrder(
                            isEdit: controller._isEdit.value,
                            saleOrderList: controller._cartData.value?.saleOrderList,
                            selectedSaleOrderUuid: controller._currentSelectedSaleOrderUuid.value,
                            onSelectedSaleOrder: (ResponseCartSaleOrder? order) {
                              controller._onSelectedSaleOrder(saleOrder: order);
                            },
                            onTapEvent: (String type, int saleOrderUuid) {
                              controller._onSplitTapEvent(type: type, saleOrderUuid: saleOrderUuid);
                              widget.onTapEvent?.call(type);
                            },
                          ),
                      ],
                    ),
                  ),
                  if (controller._cartData.value?.isLock ?? false)
                    Positioned.fill(
                      child: TtOrderLock(
                        title: '核对单已打印，订单已锁定'.tr,
                        isShowLockBtn: true,
                        onLockTap: widget.onUnlock,
                      ),
                    ),
                ],
              ),
            ),
            Total(
              num: controller._getProductNum(),
              amountInfo: controller.getAmountInfo(),
            ),
            Billing(
              num: controller._getProductNum(),
              amountInfo: controller.getAmountInfo(),
              isShowBillBtn: widget.baseController.hasPermission(
                widget.tag.contains("instant") ? PermissionKey.instantSettle : PermissionKey.deskSettle,
              ),
              onCheckout: () {
                widget.onCheckout?.call(
                  controller._cartData.value?.saleBillUuid ?? 0,
                  controller._currentSelectedSaleOrderUuid.value,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
