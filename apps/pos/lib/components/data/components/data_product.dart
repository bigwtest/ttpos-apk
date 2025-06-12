// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:pos/components/data/components/data_product_table.dart';

class DataProduct extends StatelessWidget {
  const DataProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DataProductTable(),
        ],
      ),
    );
  }
}
