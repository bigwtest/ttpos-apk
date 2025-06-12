import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/mobile_goods/must/goods_must_item.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsMustView extends StatelessWidget {
  final bool isMustLoading;
  final List<MustGoodsItem> mustList; // 必选列表
  final void Function(GoodsProduct detail, {int? mustId})? onDetailChange; // 点击
  final void Function(GoodsProduct detail, CounterType type, {int? mustId})? onTapCounter; // 加减号改变
  final Future<bool> Function()? onMustRefresh; // 刷新必选商品
  final Future<bool> Function()? onConfirmMust; // 确认必选商品

  const GoodsMustView({
    super.key,
    this.isMustLoading = false,
    this.mustList = const [],
    this.onDetailChange,
    this.onTapCounter,
    this.onMustRefresh,
    this.onConfirmMust,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(
              8.0.scalePadding,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: CustomTheme.greyColor.shade100,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '请选择必选商品'.tr,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TtButton(
                  isLoading: isMustLoading,
                  text: '确定'.tr,
                  fontWeight: FontWeight.bold,
                  onTap: () => onConfirmMust?.call(),
                ),
              ],
            ),
          ),
          // 商品列表
          Expanded(
            child: ListView.builder(
              itemCount: mustList.length,
              itemBuilder: (context, index) {
                final item = mustList[index];
                return GoodsMustItem(
                  detail: item,
                  onDetailChange: (req) => onDetailChange?.call(req, mustId: item.uuid),
                  onTapCounter: (req, type) => onTapCounter?.call(
                    req,
                    type,
                    mustId: item.uuid,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
