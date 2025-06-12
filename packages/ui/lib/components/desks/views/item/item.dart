import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/components/desks/controllers/item.dart';
import 'package:ttpos_ui/components/desks/models/callbacks.dart';
import 'package:ttpos_ui/components/desks/views/item/item_close.dart';
import 'package:ttpos_ui/components/desks/views/item/item_info.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskListItemView extends StatefulWidget {
  final Desk props;
  final String tag;

  final DeskListItemCallbacks callbacks;

  final bool isActionAvailable;

  const DeskListItemView({
    super.key,
    required this.props,
    required this.tag,
    required this.callbacks,
    required this.isActionAvailable,
  });

  @override
  State<DeskListItemView> createState() => _DeskListItemState();
}

class _DeskListItemState extends State<DeskListItemView> {
  late DeskListItemController controller;

  @override
  void initState() {
    super.initState();
    _initController();
  }

  @override
  void didUpdateWidget(DeskListItemView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.props != widget.props) {
      controller.updateFromProps(widget.props);
    }
  }

  void _initController() {
    controller = Get.put(
      DeskListItemController(
        props: widget.props,
        callbacks: widget.callbacks,
      ),
      tag: widget.tag,
    );
  }

  @override
  void dispose() {
    if (Get.isRegistered<DeskListItemController>(tag: widget.tag)) {
      Get.delete<DeskListItemController>(tag: widget.tag, force: true);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskListItemController>(
      id: widget.tag,
      tag: widget.tag,
      builder: (controller) {
        return Obx(() {
          return Stack(
            children: [
              InkWell(
                onTap: widget.isActionAvailable ? controller.onTap : null,
                child: Column(
                  children: [
                    Container(
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: controller.borderColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ), // 设置圆角半径
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 10.0.scalePadding,
                          left: 16.0.scalePadding,
                          right: 16.0.scalePadding,
                          bottom: 16.0.scalePadding,
                        ),
                        decoration: BoxDecoration(
                          color: controller.bgColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ), // 设置圆角半径
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    controller.deskNo,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                // 是否锁单
                                if (controller.isLock) const Icon(Iconfont.lock, size: 20),
                              ],
                            ),
                            // 虚线开始
                            const SizedBox(height: 10.0),
                            SizedBox(
                              width: double.infinity,
                              height: 0.5,
                              child: CustomPaint(
                                painter: DashedBorder(
                                  dashSpace: 2.0,
                                  dashWidth: 3.0,
                                  color: Color(0x18100A05),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            // 虚线结束
                            DeskListItemInfoView(
                              isAvailable: controller.isAvailable,
                              isWait: controller.isWait,
                              label: controller.label,
                              customerCount: controller.customerCount,
                              remark: controller.remark,
                              priceString: controller.priceString,
                              timeString: controller.isLock ? controller.lockTimeString : controller.timerString,
                              timerColor: controller.isLock ? CustomTheme.secondaryColor : controller.timerColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (controller.isClosable && widget.callbacks.isClearable != false)
                DeskListItemCloseButton(
                  onTap: widget.isActionAvailable ? controller.onTapClose : null,
                ),
            ],
          );
        });
      },
    );
  }
}
