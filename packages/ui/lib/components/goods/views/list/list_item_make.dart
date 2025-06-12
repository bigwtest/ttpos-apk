// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
// Package imports:
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum MakeType {
  darkColor, // 深色
  lightColor, // 浅色
}

class ListItemMake extends StatelessWidget {
  final SentKitchenProduct detail;
  final MakeType type; // 使用枚举类型代替字符串
  final bool isDisabled; // 禁止点击

  const ListItemMake({
    super.key,
    this.type = MakeType.darkColor, // 默认使用 'darkColor'
    this.detail = const SentKitchenProduct(
      finishedNum: 0,
      productPackageUuid: 0,
      sentKitchenProductNum: 0,
    ),
    this.isDisabled = false,
  });

  // 定义一个 Map，将枚举类型映射到文本和颜色
  static Map<MakeType, Map<String, dynamic>> makeMap = {
    MakeType.darkColor: {
      'textColor': Colors.white,
      'iconColor': Colors.white,
      'bgColor': CustomTheme.secondaryColor.shade100,
    },
    MakeType.lightColor: {
      'textColor': CustomTheme.secondaryColor,
      'iconColor': CustomTheme.primaryColor,
      'bgColor': Colors.transparent,
    },
  };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final make = makeMap[type];

    return Positioned(
      right: 4.0,
      bottom: 4.0,
      child: Opacity(
        opacity: isDisabled ? 0.6 : 1,
        child: Container(
          decoration: BoxDecoration(
            color: make?['bgColor'],
            borderRadius: BorderRadius.all(
              Radius.circular(
                48.0,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 4.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Iconfont.finingPlate,
                size: 14.0.scaleWidth,
                color: make?['iconColor'],
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                detail.finishedNum.toString(),
                style: TextStyle(
                  color: CustomTheme.greenColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '/${detail.sentKitchenProductNum}',
                style: TextStyle(
                  color: make?['textColor'],
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
