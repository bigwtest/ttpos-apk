import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/desk/response/list/list.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/components/tt_order_action/drawer/desk_select_uuid/desk_select_uuid_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart';

//===========================================================================
// 选择桌台uuids，例如并台、转台、转菜用到
//===========================================================================

class DeskSelectUuidView extends StatefulWidget {
  final String title; // 标题
  final bool multiple; // 是否多选
  final int? hideUuid; // 需要隐藏那个桌台ID
  final Future<DeskList?> Function({MetaRequest? meta})? onDeskList; // 请求桌台列表接口
  final Future<bool> Function(List<int> data, {Desk? desk})? onConfirm; // 确认按钮接口

  ///
  final double? width;
  final bool centerTitle;
  final String? confirmText;
  final String? cancelText;
  final VoidCallback? onCancel;
  final bool resetOnCancel;
  final bool isAllowEmpty;

  const DeskSelectUuidView({
    super.key,
    this.title = '',
    this.multiple = true,
    this.hideUuid,
    this.onDeskList,
    this.onConfirm,

    ///
    this.width,
    this.centerTitle = false,
    this.confirmText,
    this.cancelText,
    this.onCancel,
    this.resetOnCancel = false,
    this.isAllowEmpty = false,
  });

  @override
  State<DeskSelectUuidView> createState() => _DeskSelectUuidViewState();
}

class _DeskSelectUuidViewState extends State<DeskSelectUuidView> {
  late DeskSelectUuidController controller;
  final tag = const Uuid().v4();

  @override
  void initState() {
    super.initState();

    try {
      controller = Get.find<DeskSelectUuidController>(tag: tag);
    } catch (e) {
      controller = Get.put(
        DeskSelectUuidController(
          multiple: widget.multiple,
          hideUuid: widget.hideUuid,
          fetchDeskList: widget.onDeskList,
          fetchConfirm: widget.onConfirm,
          isAllowEmpty: widget.isAllowEmpty,
        ),
        tag: tag,
      );
    }
  }

  @override
  void dispose() {
    Get.delete<DeskSelectUuidController>(tag: tag);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskSelectUuidController>(
      id: tag,
      tag: tag,
      builder: (controller) => Container(
        width: widget.width ?? 550.0.scaleWidth,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 1,
        ),
        padding: EdgeInsets.all(24.0.scalePadding),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                10.0,
              ),
              bottomLeft: Radius.circular(
                10.0,
              ),
            ),
          ),
        ),
        child: Column(
          spacing: 16.0.scalePadding,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onDoubleTap: () {
                if (widget.multiple) {
                  controller.uuids = controller.uuids.length == controller.deskList.length
                      ? []
                      : controller.deskList.map((e) => e.uuid).toList();
                }
              },
              child: Text(
                widget.title,
                textAlign: widget.centerTitle ? TextAlign.center : TextAlign.left,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Obx(
                  () => controller.deskList.isNotEmpty
                      ? LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            // 假设每行显示3个子项
                            int itemsPerRow = 3;
                            // 每个子项的宽度
                            double itemWidth = (constraints.maxWidth - 20) / itemsPerRow; // 20是因为左右的总padding是10+10
                            return Wrap(
                              spacing: 10.0, // 主轴方向的间距
                              runSpacing: 10.0, // 交叉轴方向的间距
                              children: List.generate(controller.deskList.length, (index) {
                                final item = controller.deskList[index];
                                return SizedBox(
                                  width: itemWidth,
                                  child: Obx(
                                    () => TtButton(
                                      fontSize: 13.0,
                                      textWidget: Expanded(
                                        child: Text(
                                          item.deskNo,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: CustomTheme.secondaryColor,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      text: item.deskNo,
                                      buttonType: controller.uuids.contains(item.uuid)
                                          ? ActionButtonType.secondary
                                          : ActionButtonType.normal,
                                      onTap: () => controller.handleSelectUuid(item.uuid),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        )
                      : controller.isDeskLoading
                          ? Center(
                              child: SizedBox(
                                width: 24.0,
                                height: 24.0,
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : Center(
                              child: TtEmpty(
                                text: '暂无数据'.tr,
                              ),
                            ),
                ),
              ),
            ),
            Row(
              spacing: 10.0.scalePadding,
              children: [
                Expanded(
                  child: TtButton(
                    text: widget.cancelText ?? '退出'.tr,
                    height: 36.0.scaleHeight,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    buttonType: ActionButtonType.normal,
                    onTap: () {
                      if (controller.isLoading) return;
                      //
                      if (widget.resetOnCancel) {
                        controller.reset();
                      }

                      if (widget.onCancel != null) {
                        widget.onCancel?.call();
                      } else {
                        Get.back();
                      }
                    },
                  ),
                ),
                Expanded(
                  child: Obx(
                    () => TtButton(
                      text: widget.confirmText ?? '确定'.tr,
                      height: 36.0.scaleHeight,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      isLoading: controller.isLoading,
                      onTap: controller.handleConfirm,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
