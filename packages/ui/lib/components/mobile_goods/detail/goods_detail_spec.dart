import 'package:flutter/material.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item_btn.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsSpecModel {
  final int uuid; // ID
  final String title; // 名称
  final SafetyNumber? price;
  final bool isDisabled;

  GoodsSpecModel({
    this.uuid = 0,
    this.title = '',
    this.price,
    this.isDisabled = false,
  });

  factory GoodsSpecModel.fromJson(Map<String, dynamic> json) {
    return GoodsSpecModel(
      uuid: json['uuid'],
      title: json['title'],
      price: json['price'],
      isDisabled: json['isDisabled'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'title': title,
      'price': price,
      'isDisabled': isDisabled,
    };
  }
}

class GoodsDetailSpec extends StatelessWidget {
  final String title;
  final bool isBuffet; // 是否自助餐商品
  final List<GoodsSpecModel> specList;
  final List<int> selectListId;
  final void Function(int)? onTap; // 点击

  const GoodsDetailSpec({
    super.key,
    this.title = '',
    this.isBuffet = false,
    this.specList = const [],
    this.selectListId = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Wrap(
          spacing: 8.0.scalePadding,
          runSpacing: 8.0.scalePadding,
          children: specList
              .map(
                (item) => DetailSpecItemBtn(
                  text: item.title,
                  price: isBuffet ? SafetyNumber.zero : item.price,
                  type: selectListId.contains(item.uuid) ? ActionButtonType.primaryOutline : ActionButtonType.normal,
                  isDisabled: item.isDisabled,
                  onTap: () {
                    if (onTap != null) {
                      onTap?.call(item.uuid);
                    }
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
