import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OpenTipsDialog extends StatelessWidget {
  const OpenTipsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364.48.scaleWidth,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.0,
        children: [
          Text(
            '提示',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          Column(
            spacing: 8.0,
            children: [
              _tipsItem('如有剩餘食物，可能產生額外費用'),
              _tipsItem('點菜時請考慮您的飽食量，只訂購能夠完全食用的食品數量'),
              _tipsItem('對於食品和飲品的過度點單，可能會引發額外費用'),
              _tipsItem('如有多餘食物或飲品浪費的情況，我們可能會視情況追加費用'),
              _tipsItem('我們鼓勵客人謹慎點菜，僅訂購會食用完的食品，避免剩菜問題和額外費用', isIcon: false),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 16.0,
            children: [
              Expanded(
                child: TtButton(
                  text: '取消'.tr,
                  buttonType: ActionButtonType.outline,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: TtButton(
                  text: '确认'.tr,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _tipsItem(String text, {bool isIcon = true}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    spacing: 8.0,
    children: [
      if (isIcon)
        Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.only(top: 6.7),
          decoration: BoxDecoration(
            color: CustomTheme.primaryColor,
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
      Expanded(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13.0,
            color: CustomTheme.secondaryColor,
          ),
        ),
      ),
    ],
  );
}
