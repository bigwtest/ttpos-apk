import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class MemberCardView extends StatelessWidget {
  const MemberCardView({
    super.key,
    this.showHeader = true,
    this.showAction = true,
    this.onAction,
    required this.nickname,
    required this.levelName,
    required this.balance,
    required this.points,
  });

  final bool showHeader;
  final bool showAction;
  final VoidCallback? onAction;
  final String nickname;
  final String levelName;
  final String balance;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showHeader)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '会员'.tr,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  height: 1.44,
                ),
              ),
              if (showAction)
                TextButton(
                  onPressed: onAction,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // 移除内边距
                    minimumSize: Size.zero, // 移除最小尺寸限制
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                  child: Text(
                    '不使用此会员'.tr,
                    style: TextStyle(
                      color: CustomTheme.primaryColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                ),
            ],
          ),
        const SizedBox(height: 8.0),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0x0CFFBE00),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildMemberItem(
                '昵称'.tr,
                nickname,
              ),
              _buildMemberItem(
                '会员卡/等级'.tr,
                levelName,
              ),
              _buildMemberItem(
                '余额'.tr,
                balance,
              ),
              _buildMemberItem(
                '积分'.tr,
                points,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMemberItem(String name, String value) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              color: CustomTheme.secondaryColor.shade800,
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              height: 1.44,
            ),
          ),
        ],
      ),
    );
  }
}
