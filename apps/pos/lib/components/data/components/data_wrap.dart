// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataWrap extends StatelessWidget {
  final List? dayData;
  const DataWrap({super.key, this.dayData});

  @override
  Widget build(BuildContext context) {
    return (dayData!.isEmpty || dayData == null)
        ? const SizedBox()
        : LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // 假设每行显示3个子项
              int itemsPerRow = 3;
              // 每个子项的宽度
              double itemWidth = (constraints.maxWidth - 20) / itemsPerRow; // 20是因为左右的总padding是10+10
              return SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 10.0, // 主轴方向的间距
                  runSpacing: 10.0, // 交叉轴方向的间距
                  children: List.generate(dayData!.length, (index) {
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
                  }),
                ),
              );
            },
          );
  }
}
