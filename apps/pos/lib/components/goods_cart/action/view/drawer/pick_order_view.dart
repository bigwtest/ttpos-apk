// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/goods_cart/action/models/pick_order.dart';
import 'package:pos/controllers/order/pick_order_controller.dart';
import 'package:pos/model/response/cart/cart.dart';
// Project imports:

import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class PickOrderView extends StatelessWidget {
  PickOrderView({
    super.key,
    this.pickOrderCallBack,
  });

  final void Function(ResponseCart? cart)? pickOrderCallBack;

  final ControllerPickOrder controllerPickOrder = Get.find<ControllerPickOrder>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '取单'.tr,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Expanded(
                    child: Obx(() {
                      if (controllerPickOrder.isLoading) {
                        return Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                          ),
                        );
                      }
                      if (controllerPickOrder.orders.isEmpty) {
                        return EmptyDataView();
                      }
                      return ListView.separated(
                        padding: EdgeInsets.only(bottom: 8),
                        itemCount: controllerPickOrder.orders.length + 1,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.0);
                        },
                        itemBuilder: (context, index) {
                          final items = controllerPickOrder.orders;
                          if (index == items.length) {
                            // 最后一项显示加载状态或无数据提示
                            return Obx(
                              () => Container(
                                height: 24.0,
                                alignment: Alignment.center,
                                child: controllerPickOrder.hasMore
                                    ? SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: const CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : Text(
                                        '没有更多数据了'.tr,
                                        style: TextStyle(
                                          color: CustomTheme.greyColor,
                                          fontSize: 12.0,
                                        ),
                                      ),
                              ),
                            );
                          }

                          // 当滑动到最后一项时，触发加载更多
                          if (index == items.length - 1 && controllerPickOrder.hasMore) {
                            controllerPickOrder.loadMore();
                          }
                          final item = controllerPickOrder.orders[index];
                          return Obx(
                            () => _OrderContent(
                              totalPrice: item.totalPrice,
                              time: item.time,
                              goodsList: item.goodsList,
                              onCancelOrder: controllerPickOrder.isCancelOrderLoading
                                  ? null
                                  : () => controllerPickOrder.onCancelOrder(
                                        orderId: item.orderId,
                                        goodsList: item.goodsList,
                                      ),
                              onPickerOrder: () => controllerPickOrder.onPickerOrder(item.orderId, pickOrderCallBack),
                              isLoading: controllerPickOrder.isPickerOrderLoading(item.orderId),
                            ),
                          );
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          TextButton(
            onPressed: () => Get.back(),
            style: TextButton.styleFrom(
              minimumSize: Size(double.infinity, 40.0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: CustomTheme.secondaryColor.shade300,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.zero,
            ),
            child: Text(
              '退出'.tr,
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                height: 1.44,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderContent extends StatelessWidget {
  const _OrderContent({
    this.totalPrice = 0,
    this.time = '',
    this.goodsList = const [],
    this.onCancelOrder,
    this.onPickerOrder,
    this.isLoading = false,
  });

  final double totalPrice;
  final String time;
  final void Function()? onCancelOrder;
  final void Function()? onPickerOrder;

  final bool isLoading;

  final List<PickOrderGoodsViewModel> goodsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        spacing: 6.7,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8.0,
                    children: [
                      Text(
                        '订单总价：'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.44,
                        ),
                      ),
                      Text(
                        totalPrice.toString().primaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.errorColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        totalPrice.toString().secondaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '挂单时间：'.tr,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        time,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        child: TextButton(
                          onPressed: isLoading ? null : onCancelOrder,
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 8.0,
                            ),
                            backgroundColor: CustomTheme.errorColor.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                          ),
                          child: Text(
                            '整单取消'.tr,
                            style: TextStyle(
                              color: CustomTheme.errorColor,
                              fontSize: 12.0, // 需要替换为 12.0 的结果

                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      TextButton(
                        onPressed: isLoading ? null : onPickerOrder,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 8.0,
                          ),
                          backgroundColor:
                              isLoading ? CustomTheme.primaryColor.shade300 : CustomTheme.primaryColor.shade600,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (isLoading) ...[
                              SizedBox(
                                width: 8.0,
                                height: 8.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0),
                            ],
                            Text(
                              '取单'.tr,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor.withAlpha(isLoading ? 128 : 255),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _ProductTable(goodsList: goodsList),
        ],
      ),
    );
  }
}

class _ProductTable extends StatelessWidget {
  const _ProductTable({
    this.goodsList = const [],
  });
  final List<PickOrderGoodsViewModel> goodsList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: ShapeDecoration(
        color: CustomTheme.greyColor.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderRow(),
          ...List.generate(
            goodsList.length,
            (index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (index > 0) _buildBorder(),
                _buildProductRow(
                  goodsList[index].goodsName,
                  'x ${goodsList[index].goodsNum}',
                  goodsList[index].goodsPrice,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              child: Text(
                '商品名称'.tr,
                style: _getHeaderTextStyle(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Text(
                '数量'.tr,
                style: _getHeaderTextStyle(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Text(
                '小计'.tr,
                textAlign: TextAlign.end,
                style: _getHeaderTextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductRow(String productName, String quantity, double price) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              child: Text(
                productName,
                style: _getProductTextStyle(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Text(
                quantity,
                style: _getProductTextStyle(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    child: Text(
                      price.primaryCurrency,
                      style: _getProductTextStyle(),
                    ),
                  ),
                  if (price.secondaryCurrency.isNotEmpty)
                    SizedBox(
                      child: Text(
                        price.secondaryCurrency,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBorder() {
    return Container(
      width: double.infinity,
      height: 1,
      color: CustomTheme.greyColor.shade300,
    );
  }

  TextStyle _getHeaderTextStyle() {
    return TextStyle(
      color: CustomTheme.greyColor,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      height: 1.50,
    );
  }

  TextStyle _getProductTextStyle() {
    return TextStyle(
      color: CustomTheme.secondaryColor,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      height: 1.50,
    );
  }
}
