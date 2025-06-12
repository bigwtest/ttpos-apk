import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/goods/response/category/category.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/goods/controllers/goods_controller.dart';
import 'package:ttpos_ui/components/goods/views/category/category_item.dart';
import 'package:ttpos_ui/components/goods/views/list/list.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_scroll_button/scroll_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsView extends StatefulWidget {
  final String tag;
  final bool isSort; // 是否需要排序
  final bool isBuffet;
  final bool isSoldOutPage; // 是否为估清页面
  final bool isShowMake; // 是否显示制作中
  final List<SentKitchenProduct> sentKitchenProducts;
  final bool isListenScan; // 是否监听扫码
  final bool isShowSearch; // 是否显示搜索
  final double maxWidth; // 最大宽度
  final void Function(
    GoodsProduct detail, {
    GlobalKey? startKey,
    Offset? startPos,
    int? flavorId,
  })? onDetailChange; // 点击商品详情回调方法
  final Future<BaseList<GoodsBuffet>?> Function()? onBuffetList; // 获取自助餐商品列表
  final Future<List<GoodsCategory>?> Function()? onCategoryList; // 请求分类方法
  final Future<BaseList<GoodsProduct>?> Function(BasePageQuery data)? onGoodsBaseList; // 请求商品基础信息方法

  const GoodsView({
    super.key,
    this.tag = 'instant',
    this.isSort = true,
    this.isBuffet = false,
    this.isSoldOutPage = false,
    this.isShowMake = false,
    this.sentKitchenProducts = const [],
    this.isListenScan = false,
    this.isShowSearch = true,
    this.maxWidth = 180.0,
    this.onBuffetList,
    this.onDetailChange,
    this.onCategoryList,
    this.onGoodsBaseList,
  });

  // 获取控制器实例 - 复杂点，但生命力更强
  GoodsController get controller {
    try {
      return Get.find<GoodsController>(tag: tag);
    } catch (e) {
      return Get.put(
        GoodsController(
          isSort: isSort,
          initIsBuffet: isBuffet,
          isListenScan: isListenScan,
          fetchBuffetList: onBuffetList,
          fetchCategoryList: onCategoryList,
          fetchGoodsBaseList: onGoodsBaseList,
          onDetailChange: onDetailChange,
        ),
        tag: tag,
      );
    }
  }

  @override
  State<GoodsView> createState() => _GoodsViewState();
}

class _GoodsViewState extends State<GoodsView> {
  // 控制器实例
  late final GoodsController controller;

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    controller = widget.controller;
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<GoodsController>(tag: widget.tag)) {
      Get.delete<GoodsController>(tag: widget.tag);
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(GoodsView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.value 发生变化
    if (controller.isBuffet != widget.isBuffet) {
      controller.isBuffet = widget.isBuffet;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 16.0,
      ),
      child: Column(
        spacing: 8.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            spacing: 4.0,
            children: [
              if (widget.isShowSearch)
                Obx(
                  () => TtInput(
                    value: controller.goodsSearchKeyword,
                    fontSize: 13.0,
                    hintText: '请输入商品名称'.tr,
                    onChanged: (value) {
                      controller.goodsSearchKeyword = value;
                    },
                    isShowClose: true,
                    prefixIcon: Icon(
                      Iconfont.search,
                      size: 16.0,
                      color: CustomTheme.secondaryColor.shade300,
                    ),
                    height: 40.0.scaleHeight,
                  ),
                ),
              Obx(
                () => controller.goodsSearchKeyword.isEmpty
                    ? Column(
                        spacing: 8.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (controller.categoryList.isNotEmpty)
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: CustomTheme.greyColor.shade200,
                                  ),
                                ),
                              ),
                              child: ScrollButton(
                                (scrollController) => SizedBox(
                                  height: 40.0.scaleHeight,
                                  child: ListView.builder(
                                    controller: scrollController,
                                    scrollDirection: Axis.horizontal, // 设置为水平滚动
                                    itemCount: controller.categoryList.length,
                                    itemBuilder: (_, int index) {
                                      final item = controller.categoryList[index];
                                      return Obx(
                                        () => CategoryItem(
                                          text: item.localeName.translate,
                                          isActive: item.uuid == controller.categoryId,
                                          onTap: () {
                                            controller.categoryId = item.uuid;
                                            controller.categorySubId = 0;
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          if (controller.categorySubList.isNotEmpty)
                            ScrollButton(
                              (scrollController) => SizedBox(
                                height: 34.0.scaleHeight,
                                width: double.infinity,
                                child: ListView.separated(
                                  controller: scrollController,
                                  scrollDirection: Axis.horizontal, // 设置为水平滚动
                                  separatorBuilder: (context, index) => SizedBox(width: 10.0), // 间距
                                  itemCount: controller.categorySubList.length,
                                  itemBuilder: (_, int index) {
                                    final item = controller.categorySubList[index];
                                    return Obx(
                                      () => TtButton(
                                        height: 36.0.scaleHeight,
                                        fontSize: 13.0,
                                        text: item.localeName.translate,
                                        buttonType: item.uuid == controller.categorySubId
                                            ? ActionButtonType.secondary
                                            : ActionButtonType.normal,
                                        sizeType: SizeButtonType.small,
                                        onTap: () {
                                          controller.categoryId = item.parentUuid;
                                          controller.categorySubId = item.uuid;
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                        ],
                      )
                    : SizedBox.shrink(),
              ),
            ],
          ),
          Expanded(
            child: Obx(
              () => controller.goodsSearchList.isNotEmpty
                  ? GoodsList(
                      isSoldOutPage: widget.isSoldOutPage,
                      isShowMake: widget.isShowMake,
                      sentKitchenProducts: widget.sentKitchenProducts,
                      maxWidth: widget.maxWidth,
                      hasMore: controller.hasMore,
                      goodsList: controller.goodsSearchList,
                      loadNextPage: controller.loadNextPage,
                      onDetailChange: widget.onDetailChange,
                    )
                  : Center(
                      child: EmptyDataView(
                        isSearch: controller.goodsSearchKeyword.isNotEmpty,
                        imgWidth: controller.goodsSearchKeyword.isNotEmpty ? 150.0 : 100.0,
                        fontSize: 14.0,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
