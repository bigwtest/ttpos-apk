// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_empty/tt_img_empty.dart';
import 'package:ttpos_ui/theme/theme.dart';
// Project imports:
// import 'package:pos/model/response/order_list_details/product_return_type.dart';

class OrderImgTd extends StatelessWidget {
  final String nameText;
  final String? attributes;
  final String? imgUrl;
  final String? refundReason;
  final bool? isGift;
  // final ProductReturnType? productReturn;
  const OrderImgTd({
    super.key,
    required this.nameText,
    this.attributes,
    this.imgUrl,
    this.refundReason,
    this.isGift,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 56,
            height: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6.0)), // 设置圆角半径
              child: Image.network(
                imgUrl ?? '',
                width: 56,
                height: 56,
                fit: BoxFit.cover,
                frameBuilder: (cxt, child, frame, wasSynchronouslyLoaded) {
                  if (frame == null) {
                    return TtImgEmpty(
                      width: 56,
                      height: 56,
                      iconSize: 24,
                    );
                  }
                  return child;
                },
                errorBuilder: (cxt, error, stackTrace) => TtImgEmpty(
                  width: 56,
                  height: 56,
                  iconSize: 24,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      if (isGift == true || refundReason != '')
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: isGift == true ? Colors.red : CustomTheme.greyColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            isGift == true ? '赠'.tr : '退'.tr,
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      Expanded(
                        child: Text(
                          nameText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                            color: CustomTheme.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    attributes ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: CustomTheme.greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
