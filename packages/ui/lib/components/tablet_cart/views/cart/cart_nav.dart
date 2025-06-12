import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskCartNav extends StatelessWidget {
  final GlobalKey? cartIconKey;
  final UnsentKitchenAmountInfo amountInfo;
  final void Function(int status)? onChange;

  const DeskCartNav({
    super.key,
    this.cartIconKey,
    this.amountInfo = const UnsentKitchenAmountInfo(
      productAmount: SafetyNumber.zero,
      productNum: 0,
    ),
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: -6.0,
      child: SizedBox(
        width: 400.0.scaleWidth,
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
                    spacing: 6.0,
                    children: [
                      Badge(
                        label: Text(
                          amountInfo.productNum > 99 ? '99+' : '${amountInfo.productNum}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                        isLabelVisible: amountInfo.productNum > 0,
                        textStyle: const TextStyle(
                          fontSize: 12.0,
                        ),
                        offset: const Offset(10, -10),
                        child: Icon(
                          Iconfont.shoppingCart,
                          key: cartIconKey,
                          size: 20.0.scaleWidth,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox.shrink(),
                      Text(
                        amountInfo.productAmount.primaryCurrency,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (amountInfo.productAmount.secondaryCurrency.isNotEmpty)
                        Text(
                          amountInfo.productAmount.secondaryCurrency,
                          style: TextStyle(
                            color: CustomTheme.greyColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 110.0.scaleWidth,
              ),
              child: TtButton(
                height: 56.0.scaleHeight,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                text: '下单'.tr,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                onTap: () => onChange?.call(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
