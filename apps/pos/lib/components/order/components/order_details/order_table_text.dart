// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderTableText extends StatelessWidget {
  final String text;
  final String? subText;
  final String? textLineThrough;
  final String? subTextLineThrough;
  final double? errorText;
  final String? type;
  final String? textAlign;

  const OrderTableText({
    super.key,
    required this.text,
    this.subText,
    this.textLineThrough,
    this.subTextLineThrough,
    this.errorText,
    this.type = 'td',
    this.textAlign = 'left',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: type == 'td' ? 10.0 : 12.0,
      ),
      child: SizedBox(
        child: Wrap(
          runAlignment: WrapAlignment.center,
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                  mainAxisAlignment: textAlign == 'left' ? MainAxisAlignment.start : MainAxisAlignment.end,
                  children: [
                    if (textLineThrough != null)
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: constraints.maxWidth * 0.5 - 5,
                        ),
                        child: Text(
                          textLineThrough!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: CustomTheme.secondaryColor,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: textLineThrough != null ? constraints.maxWidth * 0.5 - 5 : constraints.maxWidth - 10,
                      ),
                      child: Text(
                        text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: CustomTheme.secondaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            if (subText != null && subText != '')
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Row(
                    mainAxisAlignment: textAlign == 'left' ? MainAxisAlignment.start : MainAxisAlignment.end,
                    children: [
                      if (subTextLineThrough != null)
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: constraints.maxWidth * 0.5 - 5,
                          ),
                          child: Text(
                            subTextLineThrough!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: CustomTheme.greyColor,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                      SizedBox(width: 10),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth:
                              subTextLineThrough != null ? constraints.maxWidth * 0.5 - 5 : constraints.maxWidth - 10,
                        ),
                        child: Text(
                          subText!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: CustomTheme.greyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            if (errorText != null && errorText != '')
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  // 尝试将 errorText 转换为数字，如果是负数则转为正数
                  String displayErrorText = errorText.toString();
                  try {
                    final double? errorValue = errorText;
                    if (errorValue != null && errorValue < 0) {
                      displayErrorText = errorValue.abs().toString();
                    }
                  } catch (_) {
                    // 如果转换失败，保持原始文本
                  }

                  return Row(
                    mainAxisAlignment: textAlign == 'left' ? MainAxisAlignment.start : MainAxisAlignment.end,
                    children: [
                      Text(
                        '(${'退款'.tr}: ${displayErrorText.primaryCurrency})',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: CustomTheme.errorColor,
                        ),
                      ),
                    ],
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
