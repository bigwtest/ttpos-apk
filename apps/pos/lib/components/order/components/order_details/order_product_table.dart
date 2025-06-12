// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:get/get.dart';
import 'package:pos/components/order/components/order_details/order_img_td.dart';
import 'package:pos/components/order/components/order_details/order_table_text.dart';
import 'package:pos/model/response/order_list_details/resp_order_info.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderProductTable extends StatelessWidget {
  final List<RespOrderInfo> saleOrders;
  final int selectedIndex;
  const OrderProductTable({
    super.key,
    required this.saleOrders,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: CustomTheme.greyColor.shade300,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: CustomTheme.greyColor.shade100,
                border: Border(
                  bottom: BorderSide(
                    width: 0.5,
                    color: CustomTheme.greyColor.shade300,
                  ),
                ),
              ),
              child: Flex(
                direction: Axis.horizontal,
                spacing: 10,
                children: [
                  Expanded(
                    flex: 9,
                    child: OrderTableText(
                      text: '商品'.tr,
                      textAlign: 'left',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: OrderTableText(
                      text: '价格'.tr,
                      textAlign: 'right',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: OrderTableText(
                      text: '购买数量'.tr,
                      textAlign: 'right',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: OrderTableText(
                      text: '商品总价'.tr,
                      textAlign: 'right',
                      type: 'th',
                    ),
                  ),
                ],
              ),
            ),
            if (saleOrders.isNotEmpty && saleOrders[selectedIndex].products.isEmpty)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 12.0,
                ),
                child: Text(
                  '暂无数据'.tr,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: CustomTheme.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (saleOrders.isNotEmpty && saleOrders[selectedIndex].products.isNotEmpty)
              for (var dataIndex = 0; dataIndex < saleOrders[selectedIndex].products.length; dataIndex++)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                    color: dataIndex % 2 == 0 ? Colors.white : CustomTheme.greyColor.shade200,
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: dataIndex < saleOrders[selectedIndex].products.length
                            ? CustomTheme.greyColor.shade300
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        spacing: 10,
                        children: [
                          Expanded(
                            flex: 9,
                            child: OrderImgTd(
                              imgUrl: saleOrders[selectedIndex].products[dataIndex].imageUrl,
                              nameText: saleOrders[selectedIndex].products[dataIndex].localeName.translate,
                              attributes: saleOrders[selectedIndex].products[dataIndex].localeAttributeName.translate,
                              isGift: saleOrders[selectedIndex].products[dataIndex].isGift,
                              refundReason: saleOrders[selectedIndex].products[dataIndex].refundReason,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: OrderTableText(
                              text: saleOrders[selectedIndex].products[dataIndex].price.toString().primaryCurrency,
                              subText: saleOrders[selectedIndex].products[dataIndex].price.toString().secondaryCurrency,
                              textAlign: 'right',
                              type: 'td',
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: OrderTableText(
                              text: saleOrders[selectedIndex].products[dataIndex].num.toString(),
                              textAlign: 'right',
                              type: 'td',
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: OrderTableText(
                              text: saleOrders[selectedIndex].products[dataIndex].totalPrice.toString().primaryCurrency,
                              subText:
                                  saleOrders[selectedIndex].products[dataIndex].totalPrice.toString().secondaryCurrency,
                              textLineThrough: getSalePrice(
                                saleOrders[selectedIndex].products[dataIndex].salePrice,
                                saleOrders[selectedIndex].products[dataIndex].totalPrice,
                                'primaryCurrency',
                              ),
                              subTextLineThrough: getSalePrice(
                                saleOrders[selectedIndex].products[dataIndex].salePrice,
                                saleOrders[selectedIndex].products[dataIndex].totalPrice,
                                'secondaryCurrency',
                              ),
                              errorText: saleOrders[selectedIndex].products[dataIndex].refundAmount < 0
                                  ? saleOrders[selectedIndex].products[dataIndex].refundAmount
                                  : null,
                              textAlign: 'right',
                              type: 'td',
                            ),
                          ),
                        ],
                      ),
                      // 退菜原因 赠送原因
                      if (saleOrders.isNotEmpty &&
                          (saleOrders[selectedIndex].products[dataIndex].refundReason != '' ||
                              saleOrders[selectedIndex].products[dataIndex].isGift == true))
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: CustomTheme.greyColor.shade300,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 9.0,
                            ),
                            child: Text(
                              saleOrders[selectedIndex].products[dataIndex].isGift == true
                                  ? '${'赠送原因'.tr}: ${saleOrders[selectedIndex].products[dataIndex].giftReason}'
                                  : '${'退菜原因'.tr}: ${saleOrders[selectedIndex].products[dataIndex].refundReason}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: CustomTheme.greyColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }

  String? getSalePrice(double salePrice, double totalPrice, String type) {
    return type == 'primaryCurrency'
        ? salePrice != totalPrice
            ? salePrice.toString().primaryCurrency
            : null
        : salePrice != totalPrice
            ? salePrice.toString().secondaryCurrency
            : null;
  }
}
