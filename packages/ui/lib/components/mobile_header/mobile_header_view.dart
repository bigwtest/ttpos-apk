import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/refresh_icon.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class MobileHeaderView extends StatelessWidget {
  final String logoSrc;
  final double logoHeight;
  final Widget? btnCall;
  final bool isCallLoading;
  final void Function()? onTapLanguage;
  final void Function()? onTapCall;

  const MobileHeaderView({
    super.key,
    this.logoSrc = '',
    this.logoHeight = 40.0,
    this.btnCall,
    this.isCallLoading = false,
    this.onTapLanguage,
    this.onTapCall,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.0.scaleHeight,
      color: CustomTheme.secondaryColor,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.scalePadding,
        vertical: 4.0.scalePadding,
      ),
      child: Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 100.0.scaleWidth,
                maxHeight: 40.0.scaleHeight,
              ),
              child: (logoSrc.isNotEmpty)
                  ? Image.network(
                      logoSrc,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.fill,
                          errorBuilder: (context, error, stackTrace) {
                            return const SizedBox.shrink();
                          },
                        );
                      },
                    )
                  : Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox.shrink();
                      },
                    ),
            ),
            // right
            Row(
              spacing: 8.0.scalePadding,
              children: [
                // 刷新
                RefreshIconButton(size: 40.0, color: Colors.white),
                // 语言
                IconButton(
                  onPressed: () {
                    onTapLanguage?.call();
                  },
                  icon: Icon(
                    Iconfont.global,
                    color: Colors.white,
                  ),
                  iconSize: 24,
                ),
                // 呼叫服务员
                btnCall ?? SizedBox.shrink(),
              ],
            ),
          ],
        );
      }),
    );
  }
}
