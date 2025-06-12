// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/goods_cart/order/models/model.dart';
// Project imports:
import 'package:pos/components/goods_cart/order/view/list/list_item.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:pos/model/response/cart/cart_sale_order.dart';

class OrderProductList extends StatefulWidget {
  final bool isEdit;
  final bool isLoading;
  final String loadError;
  final ResponseCartSaleOrder? saleOrder;
  final int selectedProductUuid;
  final int scrollToProductUuid;
  final int loadingProductAddAndSubBtns;
  final List<GoodsCartEditProducts>? editProducts;
  final void Function(ResponseCartProduct, dynamic)? onProductRowEvent;
  final void Function(ResponseCartProduct, bool)? onChangeCheckbox;

  const OrderProductList({
    super.key,
    this.isEdit = false,
    this.isLoading = true,
    this.loadingProductAddAndSubBtns = 0,
    this.loadError = "",
    this.saleOrder,
    this.selectedProductUuid = 0,
    this.scrollToProductUuid = 0,
    this.editProducts,
    this.onProductRowEvent,
    this.onChangeCheckbox,
  });

  @override
  State<OrderProductList> createState() => _OrderProductListState();
}

class _OrderProductListState extends State<OrderProductList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(OrderProductList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.scrollToProductUuid != 0 && oldWidget.scrollToProductUuid != widget.scrollToProductUuid) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!_scrollController.hasClients) return;
        if (!mounted) return;
        final targetIndex = widget.saleOrder?.productList.indexWhere((product) => product.uuid == widget.scrollToProductUuid) ?? -1;
        if (targetIndex != -1) {
          final itemCount = widget.saleOrder?.productList.length ?? 0;
          final viewportHeight = _scrollController.position.viewportDimension;
          final maxScroll = _scrollController.position.maxScrollExtent;
          final approximateItemHeight = (viewportHeight + maxScroll) / itemCount;
          // 计算目标偏移，考虑最后一个项目的特殊情况
          double targetOffset;
          // 其他项目则正常计算
          targetOffset = approximateItemHeight * targetIndex;
          final visibleStart = _scrollController.offset;
          final visibleEnd = visibleStart + viewportHeight;
          // 检查是否在可视区域内
          final isVisible = targetOffset >= visibleStart && targetOffset <= visibleEnd - approximateItemHeight;
          if (!isVisible) {
            _scrollController.animateTo(
              targetOffset,
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.loadError != "" && (widget.saleOrder?.productList.length ?? 0) == 0) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 8.0),
              Text(widget.loadError),
            ],
          ),
        ),
      );
    }
    if (widget.isLoading && widget.saleOrder == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 24.0,
              height: 24.0,
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      );
    }
    if ((widget.saleOrder?.productList.length ?? 0) == 0) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150.0, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 8.0),
              Text(
                "请选择右边的商品, 开始点菜吧".tr,
                style: TextStyle(
                  color: const Color.fromARGB(255, 195, 195, 195),
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      controller: _scrollController,
      itemCount: widget.saleOrder?.productList.length ?? 0,
      itemBuilder: (context, index) {
        return Obx(() {
          final product = widget.saleOrder!.productList[index];
          final isActive = product.uuid == widget.selectedProductUuid;
          final editProduct = widget.editProducts?.where((element) => element.uuid == product.uuid).toList().firstOrNull;
          final isChecked = editProduct?.isChecked ?? false;
          return ListItem(
            isShowBorder: index != (widget.saleOrder?.productList.length ?? 0) - 1,
            isEdit: widget.isEdit,
            isActive: isActive,
            product: product,
            isChecked: isChecked,
            editProduct: editProduct,
            loadingProductAddAndSubBtns: widget.loadingProductAddAndSubBtns,
            onChangeCheckbox: (bool value) {
              widget.onChangeCheckbox?.call(product, value);
            },
            onTap: (dynamic type) {
              widget.onProductRowEvent?.call(product, type);
            },
            onLongPress: (dynamic type) {
              widget.onProductRowEvent?.call(product, 'long');
            },
          );
        });
      },
    );
  }
}
