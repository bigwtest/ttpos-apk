// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/goods/response/attributes/attribute_groups.dart';
import 'package:ttpos_model/goods/response/attributes/attributes.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/goods/response/sauces/sauces.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/goods/models/detail_model.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_foot.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_attributes.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_flavors.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_sauces.dart';
import 'package:ttpos_ui/components/mobile_goods/detail/goods_detail_spec.dart';
import 'package:ttpos_ui/components/mobile_goods/detail/goods_detail_view.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

//===========================================================================
// 商品详情控制器
//===========================================================================

class GoodsDetailController extends GetxController {
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  //
  final languageController = Get.find<LanguageController>();
  // 创建一个 ListEquality 实例
  // final _listEquality = ListEquality();

  // 当前弹窗操作对象
  final Rxn<GoodsProduct> _goodDetail = Rxn<GoodsProduct>();
  GoodsProduct? get goodDetail => _goodDetail.value;

  // 加载状态
  final RxBool _isLoadingAddCart = false.obs;
  bool get isLoadingAddCart => _isLoadingAddCart.value;

  // 规格
  final Rx<int> _flavorsId = 0.obs;
  int get flavorsId => _flavorsId.value;
  set flavorsId(val) {
    if (_flavorsId.value == val) return;
    _flavorsId.value = val;
  }

  // 属性
  final RxList<int> _attributesIds = <int>[].obs;
  List<int> get attributesIds => _attributesIds.toList();
  set attributesIds(List<int> val) {
    _attributesIds.value = val;
  }

  // 小料
  final RxList<int> _saucesIds = <int>[].obs;
  List<int> get saucesIds => _saucesIds.toList();
  set saucesIds(List<int> val) {
    _saucesIds.value = val;
  }

  static final GoodsDetailController _instance = GoodsDetailController();
  static GoodsDetailController get instance => _instance;
  // 是否打开弹窗
  bool isShowDialog = false;

  // 关闭弹窗方法
  static void hideDialog() {
    if (!GoodsDetailController.instance.isShowDialog) return;
    Get.back();
  }

  static void showMobileDialog(
    GoodsProduct detail,
    CounterType type, {
    Future<bool> Function(GoodsDetailModel data, ParabolaAnimatorModel? ballDetail)? onAddProduct,
    int? flavorUuid,
    bool isViewMode = false,
    bool isTimeout = false, // 自助餐时间是否到达
    GlobalKey? startKey, // 开始值
  }) async {
    //
    if (GoodsDetailController.instance.isLoadingAddCart) return;

    // 减数量
    if (type == CounterType.down) {
      GoodsDetailController.instance._initData(detail, flavorUuid);
      GoodsDetailController.instance._handleAddCart(onAddProduct);
      return;
    }

    // 自助餐时间是否到达
    if (type == CounterType.up && isTimeout && detail.isBuffet == true) {
      DialogManager.showConfirmDialog(
        title: '提示'.tr,
        message: '自助餐时间已到达，自助餐商品不可继续下单'.tr,
        showCancelButton: false,
      );
      return;
    }

    // ==============
    // 以下是，加数量逻辑
    // ==============
    // TODO: 1.是否加锁
    // if(cashierIsLock.value == 1) {
    //   _toastController.show('订单已被锁定，请解锁后重新操作'.tr);
    //   return;
    // }

    // 2.判断是否售罄
    if (detail.isSoldOut) {
      DialogManager.showToast('已售罄'.tr);
      return;
    }

    // TODO: 3.是否限购
    // if (detail.limitNumStatus == 1) {
    //   _toastController.show('已限购'.tr);
    //   return;
    // }

    // 初始化
    GoodsDetailController.instance._initData(detail, flavorUuid);

    // 5.只有一个规格且没有属性、加料时，点击商品直接加入购物车
    if (GoodsDetailController.instance.isSingleSpecification) {
      final startBox = startKey?.currentContext?.findRenderObject() as RenderBox?;
      final startPos = startBox?.localToGlobal(startBox.size.center(Offset.zero));
      //
      GoodsDetailController.instance._handleAddCart(
        onAddProduct,
        context: startKey?.currentContext,
        startPos: startBox == null || startPos == null ? null : Offset(startPos.dx, startPos.dy - 64.0.scaleHeight),
      );
      return;
    }

    // 先关闭上一个弹窗
    GoodsDetailController.hideDialog();
    // 6.弹窗
    GoodsDetailController.instance.isShowDialog = true;
    // 确认Key（用于定位开始位置）
    final GlobalKey confirmKey = GlobalKey();
    //
    await Get.dialog(
      Dialog(
        insetPadding: EdgeInsets.zero,
        child: Obx(
          () => GoodsDetailView(
            detail: detail,
            price: GoodsDetailController.instance._totalPrice,
            widgetSpec: [
              // 规格
              if (detail.flavors.list.isNotEmpty)
                Obx(
                  () => GoodsDetailSpec(
                    title: '规格'.tr,
                    isBuffet: detail.isBuffet ?? false,
                    selectListId: [GoodsDetailController.instance.flavorsId],
                    specList: detail.flavors.list
                        .map(
                          (item) => GoodsSpecModel(
                            title: item.localeName.translate,
                            price: item.price,
                            uuid: item.uuid,
                            isDisabled: item.stockNum == 0,
                          ),
                        )
                        .toList(),
                    onTap: (uuid) {
                      GoodsDetailController.instance.flavorsId = uuid;
                    },
                  ),
                ),
              // 属性
              if (detail.attributeGroups.list.isNotEmpty)
                ...detail.attributeGroups.list.map(
                  (item) => Obx(
                    () => GoodsDetailSpec(
                      title: item.localeName.translate,
                      selectListId: GoodsDetailController.instance.attributesIds,
                      specList: item.attributes.list
                          .map(
                            (child) => GoodsSpecModel(
                              title: child.localeName.translate,
                              uuid: child.uuid,
                              price: null,
                            ),
                          )
                          .toList(),
                      onTap: (uuid) {
                        GoodsDetailController.instance.handleAddAttributes(
                          item.attributes.list.firstWhere((first) => first.uuid == uuid),
                          item,
                        );
                      },
                    ),
                  ),
                ),
              // 加料
              if (detail.sauces.list.isNotEmpty)
                Obx(
                  () => GoodsDetailSpec(
                    title: '加料'.tr,
                    selectListId: GoodsDetailController.instance.saucesIds,
                    specList: detail.sauces.list
                        .map(
                          (item) => GoodsSpecModel(
                            title: item.localeName.translate,
                            price: item.price,
                            uuid: item.uuid,
                            isDisabled: item.stockNum == 0,
                          ),
                        )
                        .toList(),
                    onTap: (uuid) {
                      GoodsDetailController.instance
                          .handleAddSauces(detail.sauces.list.firstWhere((item) => item.uuid == uuid));
                    },
                  ),
                ),
            ],
            widgetFoot: isViewMode
                ? SizedBox.shrink()
                : Obx(
                    () => TtButton(
                      key: confirmKey,
                      isLoading: GoodsDetailController.instance.isLoadingAddCart,
                      fontWeight: FontWeight.w600,
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      iconWidget: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: CustomTheme.secondaryColor,
                        ),
                      ),
                      text: '加购'.tr,
                      onTap: () {
                        final startBox = confirmKey.currentContext?.findRenderObject() as RenderBox?;
                        final startPos = startBox?.localToGlobal(startBox.size.center(Offset.zero));
                        //
                        GoodsDetailController.instance._handleAddCart(
                          onAddProduct,
                          context: confirmKey.currentContext,
                          startPos: startBox == null || startPos == null ? null : startPos,
                        );
                      },
                    ),
                  ),
          ),
        ),
      ),
    );
    GoodsDetailController.instance.isShowDialog = false;
  }

  static void showGoodsDetailDialog(
    GoodsProduct detail,
    Future<bool> Function(GoodsDetailModel data, ParabolaAnimatorModel? ballDetail)? onAddProduct, {
    bool isTimeout = false, // 自助餐时间是否到达
    int? flavorUuid, // 初始化值
    GlobalKey? startKey, // 开始值
    Offset? startPos, // 开始值
  }) async {
    //
    if (GoodsDetailController.instance.isLoadingAddCart) return;

    // 自助餐时间是否到达
    if (isTimeout && detail.isBuffet == true) {
      DialogManager.showConfirmDialog(
        title: '提示'.tr,
        message: '自助餐时间已到达，自助餐商品不可继续下单'.tr,
        showCancelButton: false,
      );
      return;
    }

    // TODO: 1.是否加锁
    // if(cashierIsLock.value == 1) {
    //   _toastController.show('订单已被锁定，请解锁后重新操作'.tr);
    //   return;
    // }

    // 2.判断是否售罄
    if (detail.isSoldOut) {
      DialogManager.showToast('已售罄'.tr);
      return;
    }

    // TODO: 3.是否限购
    // if (detail.limitNumStatus == 1) {
    //   _toastController.show('已限购'.tr);
    //   return;
    // }

    // 4.初始化
    GoodsDetailController.instance._initData(
      detail,
      flavorUuid,
    );

    // 5.只有一个规格且没有属性、加料时，点击商品直接加入购物车
    if (GoodsDetailController.instance.isSingleSpecification) {
      GoodsDetailController.instance._handleAddCart(
        onAddProduct,
        context: startKey?.currentContext,
        startPos: startPos,
      );
      return;
    }

    // 先关闭上一个弹窗
    GoodsDetailController.hideDialog();
    // 6.弹窗
    GoodsDetailController.instance.isShowDialog = true;
    // 确认Key（用于定位开始位置）
    final GlobalKey confirmKey = GlobalKey();
    await Get.dialog(
      DismissKeyboardDialog(
        child: Detail(
          detail: detail,
          specItemFlavors: detail.flavors.list.isNotEmpty
              ? Obx(
                  () => DetailSpecFlavors(
                    isBuffet: detail.isBuffet ?? false,
                    selectId: GoodsDetailController.instance.flavorsId,
                    flavorsList: detail.flavors.list,
                    onTap: (val) {
                      GoodsDetailController.instance.flavorsId = val.uuid;
                    },
                  ),
                )
              : null,
          specItemAttributes: detail.attributeGroups.list.isNotEmpty
              ? Obx(
                  () => DetailSpecAttributes(
                    selectListId: GoodsDetailController.instance.attributesIds,
                    attributesList: detail.attributeGroups.list,
                    onTap: GoodsDetailController.instance.handleAddAttributes,
                  ),
                )
              : null,
          specItemSauces: detail.sauces.list.isNotEmpty
              ? Obx(
                  () => DetailSpecSauces(
                    selectListId: GoodsDetailController.instance.saucesIds,
                    saucesList: detail.sauces.list,
                    onTap: GoodsDetailController.instance.handleAddSauces,
                  ),
                )
              : null,
          detailFoot: Obx(
            () => DetailFoot(
              confirmKey: confirmKey,
              isLoading: GoodsDetailController.instance.isLoadingAddCart,
              onSubmit: () {
                final startBox = confirmKey.currentContext?.findRenderObject() as RenderBox?;
                final startPosition = startBox?.localToGlobal(startBox.size.center(Offset.zero));
                //
                GoodsDetailController.instance._handleAddCart(
                  onAddProduct,
                  context: confirmKey.currentContext,
                  startPos: startBox == null || startPosition == null ? null : startPosition,
                );
              },
            ),
          ),
        ),
      ),
    );
    GoodsDetailController.instance.isShowDialog = false;
  }

  // 保存到购物车
  Future<bool?> _handleAddCart(
    Future<bool> Function(GoodsDetailModel data, ParabolaAnimatorModel? ballDetail)? onAddProduct, {
    BuildContext? context,
    Offset? startPos,
  }) async {
    //
    if (_isLoadingAddCart.value) return false;
    // 判断属性是否必选
    if (_isAttributesRequired) return false;
    // 判断加料是否必选
    if (_isSaucesRequired) return false;
    //
    _isLoadingAddCart.value = true;
    try {
      final res = await onAddProduct?.call(
        GoodsDetailModel(
          flavorUuid: flavorsId, // 规格
          attributeUuid: attributesIds, // 属性
          sauceUuid: saucesIds, // 加料
        ),
        ParabolaAnimatorModel(
          context: context,
          startPos: startPos,
        ),
      );
      // 多规格需要，关闭弹窗
      if (!GoodsDetailController.instance.isSingleSpecification && res != null && res) {
        Get.back();
      }
      return res;
    } catch (error, stackTrace) {
      _logger.severe('_handleAddCart Error:', error, stackTrace);
      return false;
    } finally {
      _isLoadingAddCart.value = false;
    }
  }

  // 计算总价
  double get _totalPrice {
    double price = 0.0;
    // 规格
    final flavorsList = _goodDetail.value?.flavors.list;
    if (flavorsList != null && flavorsList.isNotEmpty) {
      final flavorsObj = flavorsList.firstWhereOrNull((item) => item.uuid == flavorsId);
      if (flavorsObj != null) {
        price += flavorsObj.price.toSafetyDouble();
      }
    }
    // 加料
    final saucesList = _goodDetail.value?.sauces.list;
    if (saucesList != null && saucesList.isNotEmpty) {
      for (GoodsSauces item in saucesList) {
        if (saucesIds.contains(item.uuid)) {
          price += item.price.toSafetyDouble();
        }
      }
    }
    //
    return price;
  }

  // 判断属性是否必选
  bool get _isAttributesRequired {
    bool isAttr = false;
    final attributesList = _goodDetail.value?.attributeGroups.list;
    if (attributesList != null && attributesList.isNotEmpty) {
      for (GoodsAttributeGroups item in attributesList) {
        // 是否必选
        if (item.isMust && item.attributes.list.isNotEmpty) {
          // 判断是否选择了ID
          bool isExist = item.attributes.list.any((item) => attributesIds.contains(item.uuid));
          // 已存在，重新查找
          if (isExist) continue;
          isAttr = true;
          // 提示
          DialogManager.showToast(
            '请选择@name'.trParams({
              'name': item.localeName.translate,
            }),
          );
          break;
        }
      }
    }
    //
    return isAttr;
  }

  // 是不是单规格
  bool get isSingleSpecification {
    if (goodDetail == null) return false;
    //
    return (goodDetail?.flavors.list == null || goodDetail!.flavors.list.length <= 1) &&
        (goodDetail?.attributeGroups.list.isEmpty ?? true) &&
        (goodDetail?.sauces.list.isEmpty ?? true);
  }

  // 判断加料是否必选
  bool get _isSaucesRequired {
    bool isSauce = false;
    final saucesObj = _goodDetail.value?.sauces;
    if (saucesObj == null) return isSauce;
    // 判断是否为必选
    if (saucesObj.list.isNotEmpty && saucesObj.isMust && saucesIds.isEmpty) {
      DialogManager.showToast('请选择加料'.tr);
      isSauce = true;
    }
    return isSauce;
  }

  // 初始化
  void _initData(GoodsProduct detail, int? initId) {
    // 赋值
    _goodDetail.value = detail;
    // 设置规格默认值
    final flavorsList = detail.flavors.list;
    flavorsId = flavorsList.any((item) => item.uuid == initId && item.stockNum > 0) ? initId : 0;
    //
    if (flavorsList.isNotEmpty) {
      if (flavorsId == 0) {
        final flavorsObj = flavorsList.firstWhere((item) => item.stockNum > 0);
        flavorsId = flavorsObj.uuid;
      }
    }
    // 设置属性默认值
    attributesIds = [];
    final attributesList = detail.attributeGroups.list;
    if (attributesList.isNotEmpty) {
      List<int> list = [];
      for (int i = 0; i < attributesList.length; i++) {
        list.addAll(
          attributesList[i].attributes.list.where((item) => item.isDefaultSelected).map((item) => item.uuid).toList(),
        );
      }
      attributesIds = list;
    }
    // 设置加料默认值
    saucesIds = [];
    final saucesList = detail.sauces.list;
    if (saucesList.isNotEmpty) {
      saucesIds =
          saucesList.where((item) => item.isDefaultSelected && item.stockNum > 0).map((item) => item.uuid).toList();
    }
  }

  // 添加属性
  void handleAddAttributes(
    GoodsAttributes item,
    GoodsAttributeGroups parentItem,
  ) {
    // 查询已选择的统计ID数组值
    List<List<int>> list = partition(
      attributesIds,
      (id) => parentItem.attributes.list.any((item) => item.uuid == id),
    );
    // 是否选中
    int index = list[0].indexOf(item.uuid);
    // 如果不存在
    if (index == -1) {
      // 加料，如果大于加料数量大于最大选择数，则先删除在添加
      if (list[0].isNotEmpty && parentItem.maxSelect <= list[0].length) {
        // TODO: 是否需要提示不执行
        // _toastController.show(
        //   '@name不能超过最大数量@count'.trParams(
        //     {
        //       'name': item.localeName.translate,
        //       'count': parentItem.maxSelect.toString(),
        //     },
        //   ),
        // );
        // return;
        list[0].removeAt(0);
      }
      list[0].add(item.uuid);
    } else {
      // 是否必选
      if (parentItem.isMust && list[0].length == 1) {
        return;
      }
      // 删除
      list[0].removeAt(index);
    }
    //
    attributesIds = [...list[1], ...list[0]];
  }

  // 分割数组
  List<List<int>> partition(List<int> list, bool Function(int num) condition) {
    List<int> truthyList = [];
    List<int> falsyList = [];

    for (var item in list) {
      if (condition(item)) {
        truthyList.add(item);
      } else {
        falsyList.add(item);
      }
    }

    return [truthyList, falsyList];
  }

  // 添加小料
  void handleAddSauces(GoodsSauces val) {
    final saucesObj = _goodDetail.value?.sauces;
    if (saucesObj == null) return;
    // 是否选中
    int index = saucesIds.indexOf(val.uuid);
    List<int> list = saucesIds;
    // 如果不存在
    if (index == -1) {
      // 加料，如果大于加料数量大于最大选择数，则先删除在添加
      if (list.isNotEmpty && saucesObj.maxSelect > 0 && saucesObj.maxSelect <= list.length) {
        // TODO: 是否需要提示不执行
        // _toastController.show(
        //   '加料不能超过最大数量@count'.trParams(
        //     {
        //       'count': list.length.toString(),
        //     },
        //   ),
        // );
        // return;
        list.removeAt(0);
      }
      list.add(val.uuid);
    } else {
      // 是否必选
      if (saucesObj.isMust && list.length == 1) {
        return;
      }
      // 删除
      list.removeAt(index);
    }
    //
    saucesIds = list;
  }
}
