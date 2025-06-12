// Flutter imports:
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:pos/api/sold_out/sold_out.dart';
import 'package:pos/model/request/sold_out/add_sold_out.dart';
import 'package:pos/pages/sold_out/controller.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/goods/response/flavors/flavors.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/goods/controllers/goods_controller.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_foot.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_flavors.dart';

class SoldOutDialogController extends GetxController {
  final String tag;
  SoldOutDialogController({
    this.tag = 'sold_out',
  });

  // 商品列表控制器
  GoodsController get _goodsController {
    try {
      return Get.find<GoodsController>(tag: tag);
    } catch (e) {
      return Get.put(GoodsController(), tag: tag);
    }
  }

  // 商品列表控制器
  SoldOutController get _soldOutController {
    try {
      return Get.find<SoldOutController>(tag: tag);
    } catch (e) {
      return Get.put(SoldOutController(), tag: tag);
    }
  }

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  // 规格
  final RxList<int> _flavorsIds = <int>[].obs;
  List<int> get flavorsIds => _flavorsIds.toList();
  set flavorsIds(List<int> val) {
    _flavorsIds.value = val;
  }

  List<int> initUuids = [];

  void showGoodsDetailDialog(
    GoodsProduct detail,
  ) {
    // 初始化数据
    initUuids = detail.flavors.list.where((item) => item.stockNum == 0).map((item) => item.uuid).toList();
    //
    flavorsIds = initUuids;
    //
    Get.dialog(
      DismissKeyboardDialog(
        child: Detail(
          detail: detail,
          specItemFlavors: detail.flavors.list.isNotEmpty
              ? Obx(
                  () => DetailSpecFlavors(
                    isSelectAll: true,
                    selectList: flavorsIds,
                    flavorsList: detail.flavors.list,
                    onTap: _handleFlavorsTap,
                    onSelectAll: () {
                      _handleFlavorsAllTap(detail);
                    },
                  ),
                )
              : null,
          detailFoot: Obx(
            () => DetailFoot(
              isLoading: isLoading,
              onSubmit: () {
                _handleSoldOutSubmit(detail.flavors.list);
              },
            ),
          ),
        ),
      ),
    );
  }

  // 请求添加估清接口
  void _handleSoldOutSubmit(List<GoodsFlavors> list) async {
    if (_isLoading.value) return;
    // 检查两个列表是否相等
    bool areEqual = ListEquality<int>().equals(flavorsIds, initUuids);
    if (areEqual) {
      DialogManager.showToast('售罄规格未改变'.tr);
      return;
    }
    try {
      _isLoading.value = true;
      //
      final List<RequestAddSoldOutItem> data = [];
      for (var item in list) {
        data.add(
          RequestAddSoldOutItem(
            isSoldOut: flavorsIds.contains(item.uuid),
            productBomUuid: item.uuid,
          ),
        );
      }
      //
      final res = await SoldOutAPI().addSoldOut(
        RequestAddSoldOut(soldOutData: data),
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      //
      if (res) {
        Get.back();
        // 请求列表
        _soldOutController.loadInitData();
        // 刷新商品列表
        _goodsController.loadInitData(
          forceRefresh: true,
        );
      }
    } catch (error, stackTrace) {
      _logger.severe('_handleSoldOutSubmit Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  // 点击规格逻辑
  void _handleFlavorsTap(GoodsFlavors val) {
    final List<int> list = [...flavorsIds];
    int index = list.indexOf(val.uuid);
    // 如果不存在
    if (index == -1) {
      // 添加
      list.add(val.uuid);
    } else {
      // 删除
      list.removeAt(index);
    }
    // 赋值
    flavorsIds = list;
  }

  // 点击全选，全不选
  void _handleFlavorsAllTap(
    GoodsProduct detail,
  ) {
    if (flavorsIds.length == detail.flavors.list.length) {
      flavorsIds = [];
    } else {
      flavorsIds = detail.flavors.list.map((item) => item.uuid).toList();
    }
  }
}
