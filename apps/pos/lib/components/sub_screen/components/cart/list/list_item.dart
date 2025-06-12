import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListItem extends StatelessWidget {
  final bool isShowBorder; // 是否显示边框
  final ResponseCartProduct product; // 购物车商品详情

  const ListItem({
    super.key,
    this.isShowBorder = true,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            style: isShowBorder ? BorderStyle.solid : BorderStyle.none,
            color: CustomTheme.greyColor.shade300,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    product.localeName.translateSecond,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    '( ${product.localeAttributeName.translateSecond} )',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor.shade800,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Container(
            width: 98,
            alignment: Alignment.center,
            child: Text(
              product.num.toString(),
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Container(
            width: 98,
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Text(
                  product.price.primaryCurrency,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (product.price.secondaryCurrency.isNotEmpty)
                  Text(
                    product.price.secondaryCurrency,
                    style: TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
