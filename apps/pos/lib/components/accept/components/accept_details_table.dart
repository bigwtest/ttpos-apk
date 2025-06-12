// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/accept/components/accept_details_td.dart';
import 'package:pos/components/accept/components/accept_details_title.dart';
import 'package:pos/model/view/accept/accept_product_item.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class AcceptDetailsTable extends StatelessWidget {
  const AcceptDetailsTable({
    super.key,
    required this.title,
    this.products = const [],
  });
  final String title;

  final List<AcceptProductItemViewModel> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcceptDetailsTitle(
          title: title,
          numberName: '${'数量'.tr}X${products.fold<int>(0, (sum, item) => sum + (item.number))}',
          total: '${'小计'.tr}${products.fold<double>(0, (sum, item) => sum + (item.price)).toString().primaryCurrency}',
        ),
        if (products.isNotEmpty)
          ...products.map(
            (e) => AcceptDetailsTd(
              title: e.name,
              number: 'X${e.number}',
              total: e.price.toString().primaryCurrency,
            ),
          ),
      ],
    );
  }
}
