// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataClassWrap extends StatelessWidget {
  final List? dayData;
  final int? salesNum;
  final double? totalReceivedPrice;
  final double? totalRefundMoney;
  const DataClassWrap({super.key, this.dayData, this.salesNum, this.totalReceivedPrice, this.totalRefundMoney});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // 假设每行显示3个子项
        int itemsPerRow = 3;
        // 每个子项的宽度
        double itemWidth = (constraints.maxWidth - 20) / itemsPerRow; // 20是因为左右的总padding是10+10
        return Wrap(
          spacing: 10.0, // 主轴方向的间距
          runSpacing: 10.0, // 交叉轴方向的间距
          children: [
            _buildItem('销售笔数'.tr, salesNum.toString().primaryCurrency, itemWidth),
            if (dayData != null && dayData!.isNotEmpty)
              ...List.generate(
                dayData!.length,
                (index) {
                  return SizedBox(
                    width: itemWidth,
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            dayData![index]['label'],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: CustomTheme.secondaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            dayData![index]['value'],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: CustomTheme.secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            _buildItem('退款金额'.tr, totalRefundMoney.toString().primaryCurrency, itemWidth),
            _buildItem('实收金额'.tr, totalReceivedPrice.toString().primaryCurrency, itemWidth),
          ],
        );
      },
    );
  }
}

Widget _buildItem(String label, String value, double itemWidth) {
  return SizedBox(
    width: itemWidth,
    child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            label,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor,
            ),
          ),
        ),
        SizedBox(height: 4.0),
        SizedBox(
          width: double.infinity,
          child: Text(
            value,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}
