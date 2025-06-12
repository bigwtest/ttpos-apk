// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_info.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Detail extends StatelessWidget {
  final GoodsProduct? detail;
  final void Function()? onSubmit; // 点击
  final Widget? specItemFlavors; // 规格
  final Widget? specItemAttributes; // 属性
  final Widget? specItemSauces; // 小料
  final Widget? detailFoot; // 底部按钮

  const Detail({
    super.key,
    this.detail,
    this.onSubmit,
    this.specItemFlavors,
    this.specItemAttributes,
    this.specItemSauces,
    this.detailFoot,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 500.0,
      ),
      child: Container(
        width: 550.0.scaleWidth,
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '商品详情'.tr,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            DetailInfo(
              detail: detail,
            ),
            SizedBox(
              height: 10.0,
            ),
            Flexible(
              child: DetailSpec(
                detail: detail,
                specItemFlavors: specItemFlavors,
                specItemAttributes: specItemAttributes,
                specItemSauces: specItemSauces,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            detailFoot ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
