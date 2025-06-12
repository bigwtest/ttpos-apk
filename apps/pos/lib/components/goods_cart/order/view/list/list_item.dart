// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/goods_cart/order/models/model.dart';
// Project imports:
import 'package:pos/components/goods_cart/order/view/list/list_item_checkbox.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/components/tt_order_tips/tt_order_tips.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListItem extends StatelessWidget {
  final bool isActive; // 是否选中
  final bool isShowBorder; // 是否显示边框
  final int loadingProductAddAndSubBtns; // 是否显示加减按钮
  final bool isEdit; // 是否编辑模式
  final bool isChecked; // 是否选中Checkbox
  final GoodsCartEditProducts? editProduct;
  final void Function(dynamic)? onTap; // 点击事件
  final void Function(dynamic)? onLongPress; // 长按事件
  final void Function(bool)? onChangeCheckbox; // 点击Checkbox
  final ResponseCartProduct product;

  const ListItem({
    super.key,
    this.isEdit = false,
    this.isActive = false,
    this.isShowBorder = true,
    this.onTap,
    this.onLongPress,
    this.onChangeCheckbox,
    required this.product,
    this.editProduct,
    this.isChecked = false,
    this.loadingProductAddAndSubBtns = 0,
  });

  @override
  Widget build(BuildContext context) {

    // 是否禁用减号
    bool isDisabledMinus = false;
    if ((isEdit && (editProduct?.num ?? 2) <= 1) ||
        loadingProductAddAndSubBtns == product.uuid ||
        (!isEdit && (product.isCancel == true || product.status == 1))) {
      isDisabledMinus = true;
    }

    // 是否禁用加号
    bool isDisabledPlus = false;
    if ((isEdit && (editProduct?.num ?? 0) >= product.num) ||
        loadingProductAddAndSubBtns == product.uuid ||
        (!isEdit && (product.isCancel == true || product.status == 1))) {
      isDisabledPlus = true;
    }

    // 价格
    SafetyNumber price = isEdit ? SafetyNumber.fromJson((editProduct?.num ?? 1) * product.unitPrice.toSafetyDouble()) : product.price;

    // 优惠价
    SafetyNumber discountPrice = isEdit ? SafetyNumber.fromJson((product.discountPrice.toSafetyDouble() / product.num * (editProduct?.num ?? 1))) : product.discountPrice;

    //
    return InkWell(
      onTap: onTap != null
          ? () {
              if (onTap != null) {
                onTap!(isActive);
              }
            }
          : null,
      onLongPress: onLongPress != null
          ? () {
              if (onLongPress != null) {
                onLongPress!(isActive);
              }
            }
          : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: isActive ? CustomTheme.greyColor.shade300 : Colors.transparent,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                style: isShowBorder ? BorderStyle.solid : BorderStyle.none,
                color: CustomTheme.greyColor.shade300,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (isEdit)
                              ListItemCheckbox(
                                isChecked: isChecked,
                                onChangeCheckbox: onChangeCheckbox,
                              ),
                            // 赠送
                            if (product.isGift == true) ...[
                              const TtOrderTips(
                                type: TipType.gift,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                            ],
                            // 必点
                            if (product.isMust == true) ...[
                              const TtOrderTips(
                                type: TipType.must,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                            ],
                            // 退菜
                            if (product.isCancel == true) ...[
                              const TtOrderTips(
                                type: TipType.refund,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                            ],
                            // 商品名称
                            Expanded(
                              child: Text(
                                product.localeName.translate,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // 属性
                        if (product.aboutBuffet.isDelay == false)
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4,
                            ),
                            child: Text(
                              '( ${product.localeAttributeName.translate} )',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10.0,
                                color: CustomTheme.secondaryColor,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  // 加减
                  TtOrderCounter(
                    num: isEdit ? (editProduct?.num ?? 0) : product.num,
                    isDisabledMinus: isDisabledMinus,
                    isDisabledPlus: isDisabledPlus,
                    onChange: (CounterType type, {startKey}) {
                      if (onTap != null) {
                        if (type == CounterType.up && !isDisabledPlus) {
                          onTap!('up');
                        } else if (type == CounterType.down && !isDisabledMinus) {
                          onTap!('down');
                        }
                      }
                    },
                  ),
                  // 价格
                  Container(
                    width: 98,
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          price.primaryCurrency,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13.0,
                            decoration: product.isGift ? TextDecoration.lineThrough : TextDecoration.none,
                          ),
                        ),
                        if (price.secondaryCurrency != '')
                          Padding(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              price.secondaryCurrency,
                              style: TextStyle(
                                fontSize: 13.0,
                                color: CustomTheme.greyColor,
                                decorationColor: CustomTheme.greyColor,
                                decoration: product.isGift ? TextDecoration.lineThrough : TextDecoration.none,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              // 折扣价
              product.discountPrice != product.price &&
                      product.aboutBuffet.isDelay == false &&
                      product.isCancel == false
                  ? Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: CustomTheme.primaryColor.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 4.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '优惠价:'.tr,
                              style: TextStyle(
                                color: CustomTheme.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              discountPrice.primaryCurrency,
                              style: TextStyle(
                                color: CustomTheme.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              discountPrice.secondaryCurrency,
                              style: TextStyle(
                                color: CustomTheme.primaryColor,
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
              // 备注
              if (product.remark != "")
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: CustomTheme.greyColor.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 4.0,
                    ),
                    child: Text(
                      product.remark,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: CustomTheme.greyColor,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
