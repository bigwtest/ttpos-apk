// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/api/order/free_or_gift_reason.dart';
import 'package:pos/api/print/print_api.dart';
// Project imports:
import 'package:pos/components/goods_cart/action/view/index.dart' as action;
import 'package:pos/components/goods_cart/order/view/dialog/clock.dart';
import 'package:pos/components/goods_cart/order/view/index.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/controllers/order/operation_controller.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:pos/model/response/order/merge_desk.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/invoice/invoice_info.dart';
import 'package:ttpos_model/payment/response/finish.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/checkout/views/finish.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/dialog.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_model.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_price/order_price_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_remark/order_remark_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

part 'controller.dart';

class GoodsCartView extends StatefulWidget {
  final String tag; // 是否为桌台
  final bool permanent; // 是否永久
  final void Function()? onBack; // 返回桌台
  final Future<bool> Function()? onUnlock; // 解锁
  final void Function(int saleBillUuid, int saleOrderUuid)? onCheckout; // 送厨
  final void Function()? onAdjustBuffetComplete; // 调整自助餐

  const GoodsCartView({
    super.key,
    this.tag = "instant",
    this.permanent = false,
    this.onBack,
    this.onUnlock,
    this.onCheckout,
    this.onAdjustBuffetComplete,
  });

  // 获取控制器实例 - 复杂点，但生命力更强
  GoodsCartController get controller {
    try {
      return Get.find<GoodsCartController>(tag: tag);
    } catch (e) {
      return Get.put(
        GoodsCartController(
          tag: tag,
          onCheckout: onCheckout,
          onBack: onBack,
          onUnlock: onUnlock,
        ),
        tag: tag,
        permanent: permanent,
      );
    }
  }

  // 订单组件控制器
  GoodsCartOrderController get ordersController => controller.orders.controller;

  @override
  State<GoodsCartView> createState() => _GoodsCartViewState();
}

class _GoodsCartViewState extends State<GoodsCartView> {
  @override
  void dispose() {
    // 如果控制器不是永久的，则销毁它
    if (!widget.permanent && Get.isRegistered<GoodsCartController>(tag: widget.tag)) {
      Get.delete<GoodsCartController>(tag: widget.tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 515.0.scaleWidthSmall,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: widget.controller.orders),
            SizedBox(width: 10.0),
            Obx(
              () => action.GoodsCartActionView(
                tag: widget.tag,
                isTask: !widget.tag.contains("instant"),
                product: widget.controller.currentProduct.value,
                cartInfo: widget.controller.cartInfo.value,
                onTapEvent: (action.ActionCommonType type, Map<String, dynamic> context) async {
                  if (type == action.ActionCommonType.returns) {
                    if (widget.onBack != null) {
                      widget.onBack!();
                    }
                    return true;
                  }
                  // 执行事件
                  return await widget.controller._onActionTapEvent(
                    type, 
                    context, 
                    widget.onBack, 
                    widget.onAdjustBuffetComplete,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
