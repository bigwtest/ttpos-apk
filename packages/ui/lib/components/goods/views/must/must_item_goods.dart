// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class MustItemGoods extends StatelessWidget {
  final List<MustProducts> goodsList; // 商品详情
  final void Function(GoodsProduct detail)? onDetailChange; // 点击

  MustItemGoods({
    super.key,
    this.goodsList = const [],
    this.onDetailChange,
  });

  // 控制器
  final cardStyleController = Get.find<CardStyleController>();

  final fontSizeController = Get.find<FontSizeController>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // 假设每行显示3个子项
        int itemsPerRow = fontSizeController.currentFontSize == 16 ? 4 : 3;
        // 每个子项的宽度
        double itemWidth = (constraints.maxWidth - (itemsPerRow - 1) * 10) / itemsPerRow; // 20是因为左右的总padding是10+10

        return Wrap(
          spacing: 10.0, // 主轴方向的间距
          runSpacing: 10.0, // 交叉轴方向的间距
          children: List.generate(goodsList.length, (index) {
            final item = goodsList[index];
            return Stack(
              clipBehavior: Clip.none,
              children: [
                ListItem(
                  imgWidth: itemWidth,
                  imgMode: cardStyleController.isImageMode,
                  detail: item.product,
                  onTap: (detail, {startKey, startPos}) => onDetailChange?.call(detail),
                ),
                if (item.selectedNum > 0)
                  Positioned(
                    right: -5.0.scaleWidth,
                    top: -12.0.scaleHeight,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: CustomTheme.errorColor,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        item.selectedNum > 99 ? '99+' : '${item.selectedNum}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0.scaleWidth,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          }),
        );
      },
    );
  }
}
