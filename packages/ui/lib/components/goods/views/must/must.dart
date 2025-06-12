// Flutter imports:
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/goods/controllers/must_controller.dart';
import 'package:ttpos_ui/components/goods/views/must/must_list.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsMust extends StatefulWidget {
  final String tag;
  final List<MustGoodsItem> initMust; // 必选列表
  final void Function(GoodsProduct detail, {int? mustId})? onDetailChange; // 点击
  final Future<bool> Function()? onMustRefresh; // 刷新必选商品
  final Future<bool> Function()? onConfirmMust; // 确认必选商品

  const GoodsMust({
    super.key,
    this.tag = 'instant',
    this.initMust = const [],
    this.onDetailChange,
    this.onMustRefresh,
    this.onConfirmMust,
  });

  // 获取控制器实例 - 复杂点，但生命力更强
  MustController get controller {
    try {
      return Get.find<MustController>(tag: tag);
    } catch (e) {
      return Get.put(
        MustController(
          initMust: initMust,
          fetchConfirmMust: onConfirmMust,
          fetchMustRefresh: onMustRefresh,
        ),
        tag: tag,
      );
    }
  }

  @override
  State<GoodsMust> createState() => _GoodsMustState();
}

class _GoodsMustState extends State<GoodsMust> with SingleTickerProviderStateMixin {
  // 控制器实例
  late final MustController controller;
  late final AnimationController _animationController;
  bool _isRefresh = false;

  void _setupRefreshAnimation() async {
    try {
      if (_isRefresh) return;
      setState(() {
        _isRefresh = true;
      });
      _animationController.repeat();

      await Future.delayed(const Duration(seconds: 3));

      setState(() {
        _isRefresh = false;
      });

      _animationController.stop();
      _animationController.reset();
    } catch (error, stackTrace) {
      debugPrint('setupRefreshAnimation error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    controller = widget.controller;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<MustController>(tag: widget.tag)) {
      Get.delete<MustController>(tag: widget.tag);
    }

    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(GoodsMust oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.initMust 发生变化
    final listEquality = ListEquality<MustGoodsItem>();
    bool areEqual = listEquality.equals(controller.mustGoodsList, widget.initMust);
    if (areEqual) return;
    // 有变化重新赋值
    controller.mustGoodsList = widget.initMust;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '请选择必点商品'.tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              RotationTransition(
                turns: _animationController,
                child: IconButton(
                  // padding: EdgeInsets.all(2.0),
                  icon: Icon(
                    Iconfont.refresh,
                    size: 20.0.scaleWidth,
                  ),
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  color: CustomTheme.secondaryColor,
                  onPressed: _isRefresh
                      ? null
                      : () {
                          _setupRefreshAnimation();
                          controller.handleMustRefresh();
                        },
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Obx(
                  () => MustList(
                    mustGoodsList: controller.mustGoodsList,
                    onDetailChange: widget.onDetailChange,
                  ),
                ),
                Obx(
                  () => controller.isRefreshLoading
                      ? Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                              color: CustomTheme.rgbBgColor,
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 32.0,
                                height: 32.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          SizedBox(
            height: 40.0.scaleHeight,
            width: double.infinity,
            child: Obx(
              () => TtButton(
                isLoading: controller.isLoading,
                fontWeight: FontWeight.w600,
                text: '确认必点商品'.tr,
                onTap: controller.handleConfirmMust,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
