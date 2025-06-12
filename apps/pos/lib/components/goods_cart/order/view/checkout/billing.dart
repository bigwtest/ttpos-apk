// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart_amount_info.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Billing extends StatelessWidget {
  final int? num;
  final bool? isShowBillBtn;
  final ResponseCartAmountInfo? amountInfo;
  final void Function()? onCheckout; // 结账

  const Billing({
    super.key,
    this.amountInfo,
    this.num = 0,
    this.onCheckout,
    this.isShowBillBtn = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Obx(
            () => Container(
              height: 50.0.scaleHeight,
              decoration: BoxDecoration(
                color: CustomTheme.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  topRight: Radius.circular((isShowBillBtn ?? true) ? 0.0 : 8.0),
                  bottomRight: Radius.circular((isShowBillBtn ?? true) ? 0.0 : 8.0),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    (amountInfo?.amount ?? SafetyNumber.zero).primaryCurrency,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    (amountInfo?.amount ?? SafetyNumber.zero).secondaryCurrency,
                    style: TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isShowBillBtn ?? true)
          Obx(
            () => SizedBox(
              height: 50.0.scaleHeight,
              child: Material(
                color: ((num ?? 0) > 0) ? CustomTheme.primaryColor : CustomTheme.primaryColor.withAlpha(140),
                borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              child: InkWell(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                // ignore: deprecated_member_use
                splashColor: const Color.fromARGB(255, 166, 166, 166).withOpacity(0.3), // 点击时的水波纹颜色
                // ignore: deprecated_member_use
                highlightColor: const Color.fromARGB(255, 164, 164, 164).withOpacity(0.1), // 按下时的高亮颜色
                onTap: () {
                  if ((num ?? 0) > 0) {
                    onCheckout?.call();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Center(
                    child: ((num ?? 0) > 0)
                        ? Badge.count(
                            count: num ?? 0,
                            backgroundColor: CustomTheme.errorColor,
                            textStyle: const TextStyle(fontSize: 12),
                            offset: const Offset(10, -10),
                            child: Text(
                              '结账'.tr,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                          )
                        : Text(
                            '结账'.tr,
                            style: TextStyle(
                              color: CustomTheme.secondaryColor.withAlpha(80),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
