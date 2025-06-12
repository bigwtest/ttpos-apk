import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/components/tt_order_tips/tt_order_tips.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsListContent extends StatelessWidget {
  final bool isNumLoading;
  final bool isMust;
  final CounterType? counterType;
  final GoodsProduct? changeProduct;
  final int count;
  final List<int> canChangeNumList;
  final bool isViewMode; // 是否为查看模式
  final bool isSingleSpec;
  final GoodsProduct detail; // 商品详情
  final void Function()? onTap;
  final void Function(CounterType, {GlobalKey? startKey})? onTapCounter; // 加减号改变

  GoodsListContent({
    super.key,
    this.isNumLoading = false,
    this.isMust = false,
    this.counterType,
    this.changeProduct,
    this.count = 0,
    this.canChangeNumList = const [],
    this.isViewMode = false,
    this.isSingleSpec = false,
    required this.detail,
    this.onTap,
    this.onTapCounter,
  });
  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textScaler: TextScaler.linear(fontSizeController.textScaler),
            text: TextSpan(
              children: [
                // 是否必选
                if (isMust) ...[
                  WidgetSpan(
                    child: TtOrderTips(
                      type: TipType.must,
                    ),
                  ),
                  WidgetSpan(
                    child: SizedBox(
                      width: 4.0,
                    ),
                  ),
                ],
                TextSpan(
                  text: detail.localeName.translate,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          if (detail.describe?.isNotEmpty ?? false) ...[
            SizedBox(
              height: 4.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
              decoration: ShapeDecoration(
                color: CustomTheme.primaryColor.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              child: Text(
                detail.describe ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: CustomTheme.primaryColor.shade900,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
          SizedBox(
            height: 6.0,
          ),
          Stack(
            children: [
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail.price.primaryCurrency,
                      style: TextStyle(
                        color: CustomTheme.errorColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (detail.price.secondaryCurrency.isNotEmpty)
                      Text(
                        detail.price.secondaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
              ),
              // 加减按钮
              Positioned(
                right: 0,
                child: isViewMode
                    ? isSingleSpec
                        ? SizedBox.shrink()
                        : TtButton(
                            text: '查看'.tr,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            height: 28.0.scaleHeight,
                            sizeType: SizeButtonType.small,
                            onTap: onTap,
                          )
                    : isSingleSpec
                        ? TtOrderCounter(
                            isDisabledMinus: canChangeNumList.contains(detail.uuid) ||
                                (isNumLoading && counterType == CounterType.down && changeProduct?.uuid == detail.uuid),
                            isDisabledPlus:
                                isNumLoading && counterType == CounterType.up && changeProduct?.uuid == detail.uuid,
                            num: count,
                            iconWidth: 24.0,
                            onChange: onTapCounter,
                          )
                        : Badge(
                            label: Text(
                              count > 99 ? '99+' : '$count',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                            isLabelVisible: count > 0,
                            textStyle: const TextStyle(
                              fontSize: 12.0,
                            ),
                            offset: Offset(5, -5),
                            child: TtButton(
                              text: '选规格'.tr,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              height: 28.0.scaleHeight,
                              sizeType: SizeButtonType.small,
                              onTap: onTap,
                            ),
                          ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
