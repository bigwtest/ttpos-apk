import 'package:assistant/components/cashier/cashier_list.dart';
import 'package:assistant/controllers/cashier/cashier_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart';

class Cashier extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final bool isShowCancelBtn;
  final bool isShowDesc;
  final bool isShowIcon;
  final String? title;
  final void Function()? onCancel;
  final void Function()? onConfirm;

  const Cashier({
    super.key,
    this.padding,
    this.isShowCancelBtn = false,
    this.isShowDesc = false,
    this.isShowIcon = false,
    this.title,
    this.onCancel,
    this.onConfirm,
  });

  @override
  State<Cashier> createState() => _CashierState();
}

class _CashierState extends State<Cashier> {
  late CashierController controller;
  final tag = const Uuid().v4();

  @override
  void initState() {
    super.initState();
    try {
      controller = Get.find<CashierController>(tag: tag);
    } catch (e) {
      controller = Get.put(CashierController(), tag: tag);
    }
  }

  @override
  void dispose() {
    if (Get.isRegistered<CashierController>(tag: tag)) {
      Get.delete<CashierController>(tag: tag);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CashierController>(
      id: tag,
      tag: tag,
      builder: (controller) => Container(
        width: 640.0.scaleWidth,
        padding: widget.padding ?? EdgeInsets.all(24.0.scalePadding),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16.0.scalePadding,
            children: [
              Column(
                spacing: 4.0,
                children: [
                  if (widget.isShowIcon)
                    Container(
                      width: 64.0.scaleWidth,
                      height: 64.0.scaleHeight,
                      decoration: BoxDecoration(
                        color: CustomTheme.primaryColor.shade100,
                        shape: BoxShape.circle, // 设置形状为圆形
                      ),
                      child: Icon(
                        Iconfont.notice,
                        size: 36.0.scaleWidth,
                        color: CustomTheme.primaryColor,
                      ),
                    ),
                  Stack(
                    clipBehavior: Clip.none, // 允许超出 Stack 边界的部分显示
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 36.0.scalePadding,
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: double.infinity,
                            minHeight: 36.0.scaleHeight,
                          ),
                          child: Text(
                            widget.title ?? '请选择本点餐助手对应的收银机设备'.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -6.0.scaleWidth,
                        top: -6.0.scaleHeight,
                        child: SizedBox(
                          width: 36.0.scaleWidth,
                          height: 36.0.scaleHeight,
                          child: IconButton(
                            icon: Icon(Iconfont.refresh, size: 20.0.scaleWidth),
                            color: const Color.fromARGB(255, 78, 73, 69),
                            padding: EdgeInsets.zero,
                            onPressed: controller.handleRefresh,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (widget.isShowDesc)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '原收银员已交班，请选择本点餐助手对应的收银机设备'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                ],
              ),
              Obx(
                () => CashierList(
                  isLoading: controller.isCashierLoading,
                  uuid: controller.formData.cashierUuid,
                  list: controller.cashierList,
                  onTap: controller.handleDetail,
                ),
              ),
              Row(
                spacing: 16.0.scalePadding,
                children: [
                  if (widget.isShowCancelBtn)
                    Expanded(
                      child: TtButton(
                        text: '退出'.tr,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        buttonType: ActionButtonType.normal,
                        onTap: widget.onCancel,
                      ),
                    ),
                  Expanded(
                    child: Obx(
                      () => TtButton(
                        text: '确定'.tr,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        isLoading: controller.isLoading,
                        onTap: controller.isLoading
                            ? null
                            : () async {
                                final res = await controller.handleConfirm();
                                if (res && widget.onConfirm != null) widget.onConfirm!();
                              },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
