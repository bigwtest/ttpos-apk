// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';
// Project imports:

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.isSelected,
    required this.index,
    this.name,
    this.icon,
    this.remark,
    this.onTap,
  });
  final int index;
  final bool isSelected;
  final String? name;
  final String? icon;
  final String? remark;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap!(index),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        backgroundColor: isSelected ? CustomTheme.primaryColor.shade50 : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? CustomTheme.primaryColor : CustomTheme.secondaryColor.shade300,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 显示图标或默认图标
          icon != null && icon!.isNotEmpty
              ? Image.network(
                  icon!,
                  width: 32.16,
                  height: 32.16,
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return _buildLocalImage();
                  },
                )
              : _buildLocalImage(),

          SizedBox(
            height: 8.0,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              name ?? '',
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                height: 1.44,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          if (remark != null && remark!.isNotEmpty) ...[
            SizedBox(
              width: double.infinity,
              child: Text(
                '($remark)',
                style: TextStyle(
                  color: CustomTheme.greyColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLocalImage() {
    return Image.asset(
      'assets/images/wallet-2.png',
      width: 32.16,
      height: 32.16,
      fit: BoxFit.fill,
    );
  }
}
