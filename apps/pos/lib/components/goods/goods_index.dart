// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/goods/category_api.dart';
import 'package:pos/api/goods/goods_api.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_ui/components/goods/controllers/detail_controller.dart';
import 'package:ttpos_ui/components/goods/models/detail_model.dart';
import 'package:ttpos_ui/components/goods/views/goods_view.dart';
import 'package:ttpos_ui/components/goods/views/must/must.dart';
import 'package:ttpos_ui/components/tt_order_lock/tt_order_lock.dart';

class GoodsIndex extends StatelessWidget {
  final String tag;
  final int saleBillUuid; // 账单ID
  final double maxWidth; // 最大宽度
  final bool isBuffet;
  final bool isTimeout;
  final bool isLock; // 是否锁定
  final bool isMust; // 是否必选
  final List<MustGoodsItem> initMust; // 必选列表
  final Future<bool> Function()? onMustRefresh; // 刷新必选商品
  final Future<bool> Function()? onConfirmMust; // 确认必选商品
  final Future<bool> Function()? onUnlock;
  final Future<bool> Function(GoodsDetailModel data, ParabolaAnimatorModel? ballDetail)? onAddProduct; // 添加购物车方法

  const GoodsIndex({
    super.key,
    this.tag = 'instant',
    this.saleBillUuid = 0,
    this.maxWidth = 200.0,
    this.isBuffet = false,
    this.isTimeout = false,
    this.isLock = false,
    this.isMust = false,
    this.initMust = const [],
    this.onUnlock,
    this.onMustRefresh,
    this.onConfirmMust,
    this.onAddProduct,
  });

  @override
  Widget build(BuildContext context) {
    //
    return Stack(
      children: [
        // 商品列表
        GoodsView(
          tag: tag,
          maxWidth: maxWidth,
          isListenScan: true, // 是否监听扫码
          isBuffet: isBuffet,
          onBuffetList: () async {
            return await GoodsAPI().getBuffetGoodsList(saleBillUuid);
          },
          onGoodsBaseList: GoodsAPI().getGoodsList,
          onCategoryList: CategoryAPI().getCategoryList,
          onDetailChange: (detail, {startKey, startPos, flavorId}) async {
            GoodsDetailController.showGoodsDetailDialog(
              detail,
              onAddProduct,
              isTimeout: isTimeout,
              flavorUuid: flavorId,
            );
          },
        ),
        // 是否必点
        if (isMust)
          Positioned.fill(
            child: GoodsMust(
              tag: tag,
              initMust: initMust,
              onMustRefresh: onMustRefresh,
              onConfirmMust: onConfirmMust,
              onDetailChange: (detail, {int? mustId}) {
                GoodsDetailController.showGoodsDetailDialog(
                  detail,
                  (req, ballDetail) async {
                    req.mustPlanUuid = mustId ?? 0;
                    final res = await onAddProduct?.call(req, ballDetail);
                    return res != null && res;
                  },
                );
              },
            ),
          ),
        // 是否锁定
        if (isLock)
          Positioned.fill(
            child: TtOrderLock(
              title: '核对单已打印，订单已锁定'.tr,
              isShowLockBtn: true,
              onLockTap: onUnlock,
            ),
          ),
      ],
    );
  }
}
