import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingItem extends StatelessWidget {
  final String labelText;
  final String nameText;
  final String? btnText;
  final void Function()? onBtnTap; // 点击

  const SettingItem({
    super.key,
    required this.labelText,
    required this.nameText,
    this.btnText,
    this.onBtnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        /*Expanded(
          child: 
        ),*/
        Text(
          nameText.length > 40 ? '${nameText.substring(0, 40)}...' : nameText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 4.0,
        ),
        if (btnText != null)
          SizedBox(
            height: 24.0.scaleHeight,
            child: TextButton(
              onPressed: onBtnTap,
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                ),
              ),
              child: Text(
                btnText!,
                style: TextStyle(
                  color: CustomTheme.primaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
