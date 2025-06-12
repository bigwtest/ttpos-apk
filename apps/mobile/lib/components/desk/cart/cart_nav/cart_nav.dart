import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CartNav extends StatelessWidget {
  final bool isLoading;
  final GlobalKey? cartIconKey;
  final UnsentKitchenAmountInfo? amountInfo;
  final void Function(int status)? onChange;

  const CartNav({
    super.key,
    this.isLoading = false,
    this.cartIconKey,
    this.amountInfo = const UnsentKitchenAmountInfo(
      productAmount: SafetyNumber.zero,
      productNum: 0,
    ),
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.0.scaleHeight,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => onChange?.call(0),
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.only(
                  left: 24.0,
                ),
                decoration: const BoxDecoration(
                  color: CustomTheme.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                  ),
                ),
                child: Row(
                  spacing: 12.0,
                  children: [
                    Badge(
                      label: Text(
                        (amountInfo?.productNum ?? 0) > 99 ? '99+' : '${(amountInfo?.productNum ?? 0)}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      isLabelVisible: (amountInfo?.productNum ?? 0) > 0,
                      textStyle: const TextStyle(
                        fontSize: 12.0,
                      ),
                      offset: Offset(5, -5),
                      child: Icon(
                        Iconfont.cart,
                        key: cartIconKey,
                        size: 32.0,
                        color: CustomTheme.primaryColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          amountInfo?.productAmount.primaryCurrency ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (amountInfo != null && amountInfo!.productAmount.secondaryCurrency.isNotEmpty)
                          Text(
                            amountInfo?.productAmount.secondaryCurrency ?? '',
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: TtButton(
              isLoading: isLoading,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              text: '下单'.tr,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              onTap: () => onChange?.call(1),
            ),
          ),
        ],
      ),
    );
  }
}
