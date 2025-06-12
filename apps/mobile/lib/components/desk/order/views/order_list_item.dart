import 'package:flutter/material.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/tt_order_tips/tt_order_tips.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderListItem extends StatelessWidget {
  final bool isActive; // 是否高亮
  final bool isShowBorder; // 是否显示边框
  final Widget? btnWidget;
  final BorderRadius? borderRadius;
  final Product product;
  final void Function()? onTap;

  const OrderListItem({
    super.key,
    this.isActive = false,
    this.isShowBorder = true,
    this.btnWidget,
    this.borderRadius,
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 12.0,
        ),
        decoration: BoxDecoration(
          color: isActive ? CustomTheme.primaryColor.shade50 : Colors.transparent,
          borderRadius: borderRadius ??
              BorderRadius.all(
                Radius.circular(6.0),
              ),
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: isActive || !isShowBorder ? Colors.transparent : CustomTheme.greyColor.shade300,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4.0,
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
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
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
                  color: CustomTheme.secondaryColor.shade800,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 4.0,
                  children: [
                    Text(
                      product.discountPrice.primaryCurrency,
                      style: TextStyle(
                        color: CustomTheme.errorColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (product.discountPrice.secondaryCurrency.isNotEmpty)
                      Text(
                        product.discountPrice.secondaryCurrency,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
                btnWidget ?? SizedBox.shrink(),
              ],
            ),
            // 备注
            if (product.remark.isNotEmpty)
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 4.0,
                ),
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
                    fontSize: 13.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
