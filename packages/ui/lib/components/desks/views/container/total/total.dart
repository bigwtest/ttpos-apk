// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/desks/models/extra.dart';
import 'package:ttpos_ui/components/desks/views/container/total/total_item.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Total extends StatelessWidget {
  const Total({super.key, required this.props});

  final List<DeskTotalItemModel> props;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: CustomTheme.greyColor.shade300,
          ),
        ),
      ),
      padding: EdgeInsets.only(top: 16.0.scalePadding),
      height: 40.0.scaleHeight,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 16.0.scalePadding),
        scrollDirection: Axis.horizontal,
        itemCount: props.length,
        itemBuilder: (_, int index) => TotalItem(props: props[index]),
      ),
    );
  }
}
