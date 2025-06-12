import 'package:flutter/material.dart';
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
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          nameText,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (btnText != null)
          SizedBox(
            child: TextButton(
              onPressed: onBtnTap,
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              child: Text(
                btnText!,
                style: TextStyle(
                  color: CustomTheme.primaryColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
