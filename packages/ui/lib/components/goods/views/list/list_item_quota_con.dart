// Dart imports:
import 'dart:math' as math;

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:ttpos_model/goods/response/product/product.dart';

class ListItemQuotaCon extends StatelessWidget {
  final bool isDisabled; // 禁止点击
  final GoodsProduct? detail; // 商品详情

  const ListItemQuotaCon({
    super.key,
    this.isDisabled = false,
    this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Opacity(
        opacity: isDisabled ? 0.6 : 1,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/goods_item_limit_bg.png',
              width: 68,
              height: 68,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Center(
                child: Transform.rotate(
                  origin: Offset(16, 10),
                  angle: 45 * math.pi / 180, // 将角度转换为弧度（45度）
                  child: Text(
                    '限购@count份'.trParams({
                      'count': detail?.limitNum.toString() ?? '',
                    }),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
