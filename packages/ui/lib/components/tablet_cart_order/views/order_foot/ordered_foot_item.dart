import 'package:flutter/material.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderedFootItem extends StatelessWidget {
  final String text;
  final SafetyNumber price;

  const OrderedFootItem({
    super.key,
    required this.text,
    this.price = SafetyNumber.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$text:',
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Text(
          price.primaryCurrency,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        if (price.secondaryCurrency.isNotEmpty)
          Text(
            price.secondaryCurrency,
            style: TextStyle(
              color: CustomTheme.greyColor,
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
          ),
      ],
    );
  }
}
