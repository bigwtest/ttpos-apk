// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/goods_cart/action/view/dialog/other_dialog.dart';
// Project imports:
import 'package:pos/components/goods_cart/action/view/list/list.dart';
import 'package:pos/components/goods_cart/action/view/list/list_item.dart';
import 'package:pos/components/goods_cart/action/view/list/list_switch.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

part '../controllers/controller.dart';
part '../controllers/controller_desk.dart';
part '../controllers/controller_instant.dart';

class GoodsCartActionView extends StatefulWidget {
  final String tag;
  final bool isTask; // 是否为桌台
  final ResponseCartProduct? product; // 选中商品
  final Future<bool> Function(ActionCommonType type, Map<String, dynamic> context)? onTapEvent;
  final ResponseCart? cartInfo;

  const GoodsCartActionView({
    super.key,
    this.tag = '',
    this.isTask = false,
    this.product,
    this.onTapEvent,
    required this.cartInfo,
  });

  @override
  State<GoodsCartActionView> createState() => _GoodsCartActionViewState();
}

class _GoodsCartActionViewState extends State<GoodsCartActionView> {
  // 获取控制器实例 - 复杂点，但生命力更强
  late final GoodsCartActionController controller;

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    if (Get.isRegistered<GoodsCartActionController>(tag: "${widget.tag}_tag_action")) {
      controller = Get.find<GoodsCartActionController>(tag: "${widget.tag}_tag_action");
    } else {
      controller = Get.put(GoodsCartActionController(tag: "${widget.tag}_tag_action"), tag: "${widget.tag}_tag_action");
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<GoodsCartActionController>(tag: "${widget.tag}_tag_action")) {
      Get.delete<GoodsCartActionController>(tag: "${widget.tag}_tag_action");
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller._updateActionList(widget.isTask, widget.cartInfo, widget.product);
    return Obx(
      () => Container(
        width: 106.0.scaleWidthSmall,
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!widget.isTask) ListSwitch(
              value: controller._cart.value?.takeout ?? false,
              onChanged: (value) async {
                await controller._onTapEvent(widget.cartInfo, widget.product, ActionCommonType.takeout, context, widget.onTapEvent);
              },
            ),
            if (widget.isTask)
              SizedBox(
                height: 10.0,
              ),
            Expanded(
              child: ActionList(
                actionList: controller._actionList,
                onTapEvent: (type, context) {
                  controller._onTapEvent(widget.cartInfo, widget.product, type, context, widget.onTapEvent);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
