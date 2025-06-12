// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:ttpos_model/goods/response/product/product.dart';

class DetailSpec extends StatelessWidget {
  final GoodsProduct? detail;
  final Widget? specItemFlavors; // 规格
  final Widget? specItemAttributes; // 属性
  final Widget? specItemSauces; // 小料

  const DetailSpec({
    super.key,
    this.detail,
    this.specItemFlavors,
    this.specItemAttributes,
    this.specItemSauces,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10.0,
        children: [
          if (specItemFlavors != null) specItemFlavors!,
          if (specItemAttributes != null) specItemAttributes!,
          if (specItemSauces != null) specItemSauces!,
        ],
      ),
    );
  }
}
