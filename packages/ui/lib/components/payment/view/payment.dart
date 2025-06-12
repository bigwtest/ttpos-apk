// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/payment/model/payment_method_item.dart';
// Project imports:
import 'package:ttpos_ui/components/payment/view/payment_item.dart';

class Payment extends StatelessWidget {
  const Payment({
    super.key,
    this.paymentMethods = const [],
    this.onTap,
    this.selectedIndex,
  });

  final List<PaymentMethodItemViewModel> paymentMethods;
  final int? selectedIndex;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (paymentMethods.isEmpty) {
          return const EmptyDataView();
        }
        final crossAxisCount = constraints.maxWidth > 400 ? 3 : 2;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: paymentMethods.length,
          itemBuilder: (context, index) {
            return PaymentItem(
              isSelected: selectedIndex == index,
              index: index,
              name: paymentMethods[index].title ?? '',
              icon: paymentMethods[index].icon ?? '',
              remark: paymentMethods[index].subTitle ?? '',
              onTap: onTap,
            );
          },
        );
      },
    );
  }
}
