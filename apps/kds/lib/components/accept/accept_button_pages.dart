import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptButtonPages extends StatelessWidget {
  const AcceptButtonPages({
    super.key,
    this.pageNo = 1,
    this.lastPageNo = 5,
    this.onPrevious,
    this.onNext,
  });

  final int pageNo;
  final int lastPageNo;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 上一页按钮
          TextButton(
            onPressed: pageNo > 1 ? onPrevious : null,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                left: 26,
                right: 18,
                top: 12,
                bottom: 12,
              ),
              backgroundColor: pageNo > 1 ? CustomTheme.primaryColor.shade300 : CustomTheme.greyColor.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: pageNo > 1 ? CustomTheme.secondaryColor : CustomTheme.greyColor,
            ),
          ),
          // 页码显示
          SizedBox(width: 40),
          Text(
            '$pageNo/$lastPageNo',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 40),
          // 下一页按钮
          TextButton(
            onPressed: pageNo < lastPageNo ? onNext : null,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                left: 24,
                right: 20,
                top: 12,
                bottom: 12,
              ),
              backgroundColor: pageNo < lastPageNo ? CustomTheme.primaryColor.shade300 : CustomTheme.greyColor.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: pageNo < lastPageNo ? CustomTheme.secondaryColor : CustomTheme.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
