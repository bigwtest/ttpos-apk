// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:ttpos_ui/components/common/dashed_border.dart';

class DataDashedBorder extends StatelessWidget {
  const DataDashedBorder({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: double.infinity,
        height: 0.5,
        child: CustomPaint(
          painter: DashedBorder(
            dashSpace: 2.0,
            dashWidth: 3.0,
            color: Color.fromARGB(25, 16, 10, 5),
          ),
        ),
      ),
    );
  }
}
