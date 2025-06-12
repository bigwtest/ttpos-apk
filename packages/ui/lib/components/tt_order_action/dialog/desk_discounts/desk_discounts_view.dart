import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_checkbox.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_model.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:ttpos_ui/utils/util.dart';

class DeskDiscountsView extends StatelessWidget {
  final SafetyNumber? price; // 价格
  final String discountTypeText; // 折扣，单位
  final DiscountConfirmParamsModel? initData; // 初始化数据
  final bool showCancel; // 是否显示撤销按钮
  final String? autoDiscountMessage; // 自动抹零-提示
  final Future<bool> Function()? onCancelDiscount; // 撤销优惠方法接口
  final Future<BaseList<ResponseFreeOrGiftReason>?> Function()? onReasons; // 获取免单原因列表接口
  final Future<bool> Function(DiscountConfirmParamsModel data)? onConfirm; // 确认接口

  const DeskDiscountsView({
    super.key,
    this.price,
    this.discountTypeText = '%',
    this.initData,
    this.showCancel = false,
    this.autoDiscountMessage,
    this.onCancelDiscount,
    this.onReasons,
    this.onConfirm,
  });

  List<String?> get _autoDiscountMessage {
    if (autoDiscountMessage != null) {
      return autoDiscountMessage!.split('：');
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    // 优惠折扣
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 关闭键盘
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        init: DeskDiscountsController(
          initData: initData,
          intiShowCancel: showCancel,
          fetchCancelDiscount: onCancelDiscount,
          fetchReasons: onReasons,
          fetchConfirm: onConfirm,
          initPrice: price,
        ),
        dispose: (_) => Get.delete<DeskDiscountsController>(),
        builder: (controller) => Container(
          width: 550.0.scaleWidth,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20.0.scalePadding,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.0.scalePadding,
                    left: 24.0.scalePadding,
                    right: 24.0.scalePadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32.0.scaleHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '优惠折扣'.tr,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Obx(
                              () => controller.isShowCancel
                                  ? TtButton(
                                      isLoading: controller.isCancelLoading,
                                      text: '撤销优惠折扣'.tr,
                                      buttonType: ActionButtonType.normal,
                                      sizeType: SizeButtonType.small,
                                      onTap: controller.handleCancelDiscount,
                                    )
                                  : SizedBox.shrink(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0.scaleHeight,
                      ),
                      Row(
                        spacing: 10.0.scalePadding,
                        children: [
                          Text(
                            '当前价格'.tr,
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Obx(
                            () => Text(
                              controller.price?.primaryCurrency ?? '',
                              style: TextStyle(
                                color: CustomTheme.errorColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Obx(
                            () => controller.price?.secondaryCurrency != null
                                ? Text(
                                    controller.price?.secondaryCurrency ?? '',
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor.shade800,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0.scaleHeight,
                      ),
                      Text(
                        '优惠方式'.tr,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 4.0.scaleHeight,
                      ),
                      Row(
                        spacing: 10.0.scalePadding,
                        children: controller.discountMethodList
                            .map(
                              (item) => Obx(
                                () => Expanded(
                                  child: TtButton(
                                    fontSize: 13.0,
                                    text: item.text,
                                    buttonType: controller.formData.value.discountMethod == item.type
                                        ? ActionButtonType.secondary
                                        : ActionButtonType.normal,
                                    onTap: () {
                                      if (controller.formData.value.discountMethod != item.type) {
                                        controller.handleInitData(item.type);
                                      }
                                    },
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(
                        height: 10.0.scaleHeight,
                      ),
                      Obx(
                        () => (controller.formData.value.discountMethod == 1)
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '实付价格'.tr,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Obx(
                                    () => TtInput(
                                      height: 40.0.scaleHeight,
                                      fontSize: 13.0,
                                      value: controller.formData.value.priceStr ?? '',
                                      readOnly: true,
                                      isShowDelete: true,
                                      useFocusedBorderAsEnabled: true,
                                      hintText: '请输入实付价格'.tr,
                                      onChanged: (val) {
                                        controller.formData.update((data) {
                                          data?.priceStr = val;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            : (controller.formData.value.discountMethod == 2)
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '折扣'.tr,
                                        style: TextStyle(
                                          color: CustomTheme.secondaryColor,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Obx(
                                        () => TtInput(
                                          fontSize: 13.0,
                                          height: 40.0.scaleHeight,
                                          value: controller.formData.value.discountStr ?? '',
                                          readOnly: true,
                                          isShowDelete: true,
                                          useFocusedBorderAsEnabled: true,
                                          hintText: '请输入折扣'.tr,
                                          suffix: Padding(
                                            padding: EdgeInsets.only(right: 8.0),
                                            child: Text(
                                              discountTypeText,
                                              style: TextStyle(
                                                color: CustomTheme.greyColor,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          onChanged: (val) {
                                            controller.formData.update((data) {
                                              data?.discountStr = val;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                : (controller.formData.value.discountMethod == 3)
                                    ? Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '抹零方式'.tr,
                                            style: TextStyle(
                                              color: CustomTheme.secondaryColor,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12.0,
                                          ),
                                          Wrap(
                                            spacing: 20.0,
                                            runSpacing: 20.0,
                                            children: controller.roundOffList
                                                .map(
                                                  (item) => Obx(
                                                    () => DeskDiscountsCheckbox(
                                                      text: item.text,
                                                      isChecked: controller.formData.value.zeroRule == item.type,
                                                      onTap: () {
                                                        controller.formData.update((data) {
                                                          data?.zeroRule = item.type;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                          ),
                                          SizedBox(
                                            height: 12.0,
                                          ),
                                          if (_autoDiscountMessage.isNotEmpty && _autoDiscountMessage.length > 1)
                                            Obx(() {
                                              final showWidget =
                                                  controller.formData.value.zeroRule == initData?.zeroRule;
                                              return showWidget
                                                  ? Row(
                                                      children: [
                                                        Text(
                                                          '${_autoDiscountMessage[0]}：',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.w600,
                                                            color: CustomTheme.secondaryColor,
                                                          ),
                                                        ),
                                                        Text(
                                                          '（${_autoDiscountMessage[1]?.primaryCurrency}）',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.w600,
                                                            color: CustomTheme.errorColor,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : SizedBox.shrink();
                                            }),
                                        ],
                                      )
                                    : (controller.formData.value.discountMethod == 4)
                                        ? Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '免单原因'.tr,
                                                style: TextStyle(
                                                  color: CustomTheme.secondaryColor,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12.0,
                                              ),
                                              if (controller.reasonsList.isNotEmpty)
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 10.0),
                                                  child: Wrap(
                                                    spacing: 20.0,
                                                    runSpacing: 10.0,
                                                    children: controller.reasonsList
                                                        .map(
                                                          (item) => Obx(
                                                            () => DeskDiscountsCheckbox(
                                                              text: item.localeName.translate,
                                                              isChecked: controller.formData.value.freeReasons
                                                                      ?.contains(item.uuid) ??
                                                                  false,
                                                              onTap: () {
                                                                controller.handleSelectReason(item.uuid);
                                                              },
                                                            ),
                                                          ),
                                                        )
                                                        .toList(),
                                                  ),
                                                ),
                                              Obx(
                                                () => TtInput(
                                                  height: 80.0.scaleHeight,
                                                  maxLines: 4,
                                                  fontSize: 13.0,
                                                  value: controller.formData.value.freeRemark ?? '',
                                                  hintText: '请输入免单原因'.tr,
                                                  useFocusedBorderAsEnabled: true,
                                                  autoFocus: true,
                                                  onChanged: (val) {
                                                    controller.formData.value.freeRemark = val;
                                                  },
                                                ),
                                              ),
                                            ],
                                          )
                                        : SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
                // 键盘组件
                Obx(
                  () => (controller.formData.value.discountMethod == 1 || controller.formData.value.discountMethod == 2)
                      ? Container(
                          height: 260.0.scaleHeight,
                          color: CustomTheme.greyColor.shade100,
                          child: Obx(
                            () => Keyboard(
                              padding: EdgeInsets.only(
                                top: 16.0.scalePadding,
                                left: 24.0.scalePadding,
                                right: 24.0.scalePadding,
                                bottom: 24.0.scalePadding,
                              ),
                              showDot: controller.formData.value.discountMethod != 2,
                              isConfirmLoading: controller.isLoading,
                              onConfirmTap: controller.handleConfirm,
                              onNumberTap: (val) {
                                if (controller.isLoading) return;
                                //
                                if (controller.formData.value.discountMethod == 1) {
                                  String? newValue = Util.validateNumberInput(
                                    controller.formData.value.priceStr ?? '',
                                    val,
                                    maxValue: 999999999,
                                  );
                                  if (newValue == null) return;
                                  // 判断
                                  final double price = double.tryParse(newValue) ?? 0;
                                  if (price <= 0) newValue = '0';
                                  if (price >= 999999999) newValue = '999999999';
                                  if (newValue != controller.formData.value.priceStr) {
                                    controller.formData.update((data) {
                                      data?.priceStr = newValue;
                                    });
                                  }
                                } else if (controller.formData.value.discountMethod == 2) {
                                  String? newValue = Util.validateNumberInput(
                                    controller.formData.value.discountStr ?? '',
                                    val,
                                    maxValue: 99,
                                  );
                                  if (newValue == null) return;
                                  // 判断
                                  final double price = double.tryParse(newValue) ?? 0;
                                  if (price <= 0) newValue = '1';
                                  if (price >= 99) newValue = '99';
                                  if (newValue != controller.formData.value.discountStr) {
                                    controller.formData.update((data) {
                                      data?.discountStr = newValue;
                                    });
                                  }
                                }
                              },
                              onClearTap: () {
                                if (controller.isLoading) return;
                                //
                                if (controller.formData.value.discountMethod == 1) {
                                  controller.formData.update((data) {
                                    data?.priceStr = '';
                                  });
                                } else if (controller.formData.value.discountMethod == 2) {
                                  controller.formData.update((data) {
                                    data?.discountStr = '';
                                  });
                                }
                              },
                              onExitTap: () {
                                if (controller.isLoading) return;
                                //
                                Get.back();
                              },
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(
                            top: 0,
                            left: 24.0.scalePadding,
                            right: 24.0.scalePadding,
                            bottom: 24.0.scalePadding,
                          ),
                          child: Row(
                            spacing: 10.0.scalePadding,
                            children: [
                              Expanded(
                                child: TtButton(
                                  text: '退出'.tr,
                                  fontWeight: FontWeight.w600,
                                  buttonType: ActionButtonType.normal,
                                  onTap: () {
                                    if (controller.isLoading) return;
                                    //
                                    Get.back();
                                  },
                                ),
                              ),
                              Expanded(
                                child: Obx(
                                  () => TtButton(
                                    text: controller.formData.value.discountMethod == 4 ? '免单并结账'.tr : '确定'.tr,
                                    fontWeight: FontWeight.w600,
                                    isLoading: controller.isLoading,
                                    onTap: controller.handleConfirm,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
