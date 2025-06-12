// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/order_list/order_refund_details.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class RefundItemList extends StatefulWidget {
  final List<OrderReturnProductList> refundItems;
  final Function(int index) onTapMinus;
  final Function(int index) onTapPlus;
  const RefundItemList({
    super.key,
    required this.refundItems,
    required this.onTapMinus,
    required this.onTapPlus,
  });

  @override
  State<RefundItemList> createState() => _RefundItemListState();
}

class _RefundItemListState extends State<RefundItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Flex(
        direction: Axis.vertical,
        children: [
          _buildHeader(),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 176.88,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int index = 0; index < widget.refundItems.length; index++)
                    _buildRefundItem(
                      index: index,
                      name: widget.refundItems[index].localeName.translate,
                      subTitle: widget.refundItems[index].localeAttributeName.translate,
                      isBorder: index < widget.refundItems.length - 1,
                      num: widget.refundItems[index].num,
                      refundNum: widget.refundItems[index].refundNum,
                      refundAmount: widget.refundItems[index].price * widget.refundItems[index].refundNum,
                      canReturnAmount: widget.refundItems[index].canReturnAmount,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: CustomTheme.greyColor.shade300,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              '商品名称'.tr,
              style: TextStyle(
                fontSize: 12.0,
                color: CustomTheme.greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                '数量'.tr,
                style: TextStyle(
                  fontSize: 12.0,
                  color: CustomTheme.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                '退款数量'.tr,
                style: TextStyle(
                  fontSize: 12.0,
                  color: CustomTheme.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '退款金额'.tr,
                style: TextStyle(
                  fontSize: 12.0,
                  color: CustomTheme.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRefundItem({
    required int index,
    required String name,
    String? subTitle,
    bool isBorder = true,
    required int num,
    required int refundNum,
    required double refundAmount,
    required double canReturnAmount,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        border: isBorder
            ? Border(
                bottom: BorderSide(
                  color: isBorder ? CustomTheme.greyColor.shade300 : Colors.transparent,
                  width: 1,
                ),
              )
            : null,
      ),
      child: Row(
        children: [
          // 商品名称和数量
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (subTitle != null)
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: CustomTheme.greyColor,
                    ),
                  ),
              ],
            ),
          ),
          // 退款数量
          Expanded(
            flex: 1,
            child: Text(
              '$num',
              style: TextStyle(
                fontSize: 12.0,
                color: CustomTheme.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          // 退款数量调整
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCircleButton(
                  icon: Iconfont.minus,
                  disabled: refundNum <= 0,
                  onTap: () {
                    if (refundNum > 0) {
                      widget.onTapMinus(index);
                      setState(() {
                        refundNum--;
                      });
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: SizedBox(
                    width: 20.1,
                    child: Text(
                      refundNum.toString(),
                      style: TextStyle(
                        fontSize: 12.0,
                        color: CustomTheme.secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                _buildCircleButton(
                  icon: Iconfont.plus,
                  disabled: refundNum >= num,
                  onTap: () {
                    if (refundNum < num) {
                      widget.onTapPlus(index);
                      setState(() {
                        refundNum++;
                      });
                    }
                  },
                  isHighlighted: true,
                ),
              ],
            ),
          ),

          // 退款金额
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  refundAmount.toString().primaryCurrency,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.errorColor.shade500,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${'可退款'.tr}: ${canReturnAmount.toString().primaryCurrency}',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.greyColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleButton({
    required IconData icon,
    required VoidCallback onTap,
    bool isHighlighted = false,
    bool disabled = false,
  }) {
    return InkWell(
      onTap: disabled ? () {} : onTap,
      child: Container(
        width: 32.16,
        height: 32.16,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: disabled ? const Color.fromRGBO(230, 232, 235, 0.6) : const Color.fromRGBO(255, 184, 0, 1),
          ),
          color: isHighlighted
              ? disabled == true
                  ? const Color.fromRGBO(255, 184, 0, 0.5)
                  : const Color.fromRGBO(255, 184, 0, 1)
              : disabled == true
                  ? const Color.fromARGB(26, 114, 114, 114)
                  : Colors.white,
        ),
        child: Icon(
          icon,
          size: 12,
          color: disabled ? Color.fromRGBO(16, 10, 5, 0.4) : CustomTheme.secondaryColor,
        ),
      ),
    );
  }
}
