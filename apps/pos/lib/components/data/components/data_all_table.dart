// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataAllTable extends StatelessWidget {
  final String titleLeft;
  final String titleCenter;
  final String titleRight;
  final String? totalPayPrice;
  final List data;

  const DataAllTable({
    super.key,
    required this.titleLeft,
    required this.titleCenter,
    required this.titleRight,
    required this.data,
    this.totalPayPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Flex(
          direction: Axis.horizontal,
          spacing: 16,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                titleLeft,
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: CustomTheme.secondaryColor.shade200,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                titleCenter,
                textAlign: TextAlign.right,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: CustomTheme.secondaryColor.shade200,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                titleRight,
                textAlign: TextAlign.right,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: CustomTheme.secondaryColor.shade200,
                ),
              ),
            ),
          ],
        ),
        if (data.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '暂无数据'.tr,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: CustomTheme.secondaryColor.shade200,
              ),
            ),
          ),
        if (data.isNotEmpty) ...[
          for (int i = 0; i < data.length; i++)
            Flex(
              direction: Axis.horizontal,
              spacing: 16,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    data[i]['value'],
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    data[i]['num'],
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    data[i]['price'],
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          if (totalPayPrice != null && totalPayPrice!.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '总金额'.tr,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
                Text(
                  totalPayPrice!,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
              ],
            ),
        ],
      ],
    );
  }
}
