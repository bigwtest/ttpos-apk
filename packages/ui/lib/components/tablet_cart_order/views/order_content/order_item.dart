import 'package:flutter/material.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/tt_order_tips/tt_order_tips.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderItem extends StatelessWidget {
  final bool isActive; // 是否选中
  final bool isShowBorder; // 是否显示边框
  final Widget numWidget;
  final Product product;
  final void Function()? onTap;

  const OrderItem({
    super.key,
    this.isActive = false,
    this.isShowBorder = true,
    this.numWidget = const SizedBox.shrink(),
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          10.0,
        ),
        decoration: BoxDecoration(
          color: isActive ? CustomTheme.greyColor.shade300 : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              width: 1,
              style: isShowBorder ? BorderStyle.solid : BorderStyle.none,
              color: CustomTheme.greyColor.shade300,
            ),
          ),
        ),
        child: Column(
          spacing: 10.0,
          children: [
            Row(
              spacing: 10.0,
              children: [
                // 商品名称
                Expanded(
                  child: Column(
                    spacing: 4.0,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 4.0,
                        children: [
                          // 赠送
                          if (product.isGift)
                            const TtOrderTips(
                              type: TipType.gift,
                            ),
                          // 必点
                          if (product.isMust)
                            const TtOrderTips(
                              type: TipType.must,
                            ),
                          // 退菜
                          if (product.isCancel)
                            const TtOrderTips(
                              type: TipType.refund,
                            ),
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
                      if (product.localeAttributeName.translate.isNotEmpty)
                        Text(
                          '(${product.localeAttributeName.translate})',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: CustomTheme.secondaryColor,
                          ),
                        ),
                    ],
                  ),
                ),
                // 单价
                SizedBox(
                  width: 80.0.scaleWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        product.unitPrice?.primaryCurrency ?? '',
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                        ),
                      ),
                      if (product.unitPrice?.secondaryCurrency != null &&
                          product.unitPrice!.secondaryCurrency.isNotEmpty)
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2,
                          ),
                          child: Text(
                            product.unitPrice?.secondaryCurrency ?? '',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: CustomTheme.greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                // 数量
                Container(
                  alignment: Alignment.center,
                  width: 120.0.scaleWidth,
                  child: numWidget,
                ),
                // 总价
                Container(
                  alignment: Alignment.centerRight,
                  width: 80.0.scaleWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        product.isGift ? 0.primaryCurrency : product.discountPrice.primaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                        ),
                      ),
                      if (product.discountPrice.secondaryCurrency.isNotEmpty)
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2,
                          ),
                          child: Text(
                            product.isGift ? 0.secondaryCurrency : product.discountPrice.secondaryCurrency,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: CustomTheme.greyColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            // 备注
            if (product.remark.isNotEmpty)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CustomTheme.greyColor.shade100,
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
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
                    fontSize: 10.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
