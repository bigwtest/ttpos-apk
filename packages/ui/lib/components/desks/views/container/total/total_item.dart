// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/desks/models/extra.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TotalItem extends StatelessWidget {
  final DeskTotalItemModel props;

  const TotalItem({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        props.enableColor
            ? Container(
                width: 12.0.scaleWidth,
                height: 12.0.scaleHeight,
                margin: EdgeInsets.only(
                  right: 6.0.scalePadding,
                ),
                decoration: BoxDecoration(
                  color: props.color,
                ),
              )
            : SizedBox.shrink(),
        Text(
          props.label,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
