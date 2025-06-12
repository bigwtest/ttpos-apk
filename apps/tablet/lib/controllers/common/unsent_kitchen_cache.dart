//===========================================================================
// 平板端-未送厨商品缓存
//===========================================================================

import 'dart:math';

import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/request/cooking_product.dart';
import 'package:ttpos_model/order/request/num_change.dart';
import 'package:ttpos_model/order/request/remark_product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class UnsentKitchenCache {
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 提交参数
  static List<RequestCookingProducts> cookingProductList = <RequestCookingProducts>[];

  // 未送厨商品
  static List<Product> unsentKitchenProductList = <Product>[];

  // 未送厨统计信息
  static UnsentKitchenAmountInfo get amountInfo {
    final totalPrice = unsentKitchenProductList.fold(0.0, (double sum, item) => sum + item.discountPrice);
    final totalNum = unsentKitchenProductList.fold(0, (sum, item) => sum + item.num);
    //
    return UnsentKitchenAmountInfo(
      productAmount: SafetyNumber.string(totalPrice.toStringAsFixed(2)),
      productNum: totalNum,
    );
  }

  // 清空
  void clear() {
    cookingProductList.clear();
    unsentKitchenProductList.clear();
  }

  // 获取未送厨商品
  Future<UnsentKitchen?> getUnsentKitchenList(int saleBillUuid, {ExtraRequestOptions? options}) async {
    try {
      //
      return UnsentKitchen(
        amountInfo: amountInfo,
        products: BaseList(
          list: unsentKitchenProductList,
        ),
      );
    } catch (error, stackTrace) {
      _logger.severe('getUnsentKitchenList Error:', error, stackTrace);
      return null;
    }
  }

  // 修复未送厨商品备注
  Future<bool> remarkProductDesk(RequestRemarkProduct req, {ExtraRequestOptions? options}) async {
    try {
      final index = unsentKitchenProductList.indexWhere((item) => item.uuid == req.orderProductUuid);
      if (index == -1) {
        DialogManager.showToast('查找不到该商品'.tr);
        return false;
      }
      // 如果存在
      final key = getProductIndex(cookingProductList[index].copyWith(remark: req.remark));
      if (key != -1) {
        cookingProductList[index].num += cookingProductList[key].num;
        unsentKitchenProductList[index].num += cookingProductList[key].num;
        // 判断被删除的商品，是不是必选
        if (unsentKitchenProductList[key].isMust) {
          unsentKitchenProductList[index].isMust = true;
        }
      }
      //
      cookingProductList[index].remark = req.remark;
      unsentKitchenProductList[index].remark = req.remark;
      // 最后才删除，不然有bug
      if (key != -1) {
        cookingProductList.removeAt(key);
        unsentKitchenProductList.removeAt(key);
      }
      return true;
    } catch (error, stackTrace) {
      _logger.severe('remarkProductDesk Error:', error, stackTrace);
      return false;
    }
  }

  // 修改未送厨商品数量
  Future<bool> numChangeDesk(
    RequestNumChange req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final index = unsentKitchenProductList.indexWhere((item) => item.uuid == req.saleOrderProductUuid);
      if (index == -1) {
        DialogManager.showToast('查找不到该商品'.tr);
        return false;
      }
      if (req.num == 0) {
        cookingProductList.removeAt(index);
        unsentKitchenProductList.removeAt(index);
        return true;
      }
      // 商品限购数量
      final limitNum = unsentKitchenProductList[index].limitNum ?? 0;
      if (limitNum > 0) {
        if (req.num > limitNum) {
          DialogManager.showToast(
            '商品数量不能超过@num'.trParams({
              'num': limitNum.toString(),
            }),
          );
          return false;
        }
      }
      // 如果存在
      cookingProductList[index].num = req.num;
      // 影响到价格
      unsentKitchenProductList[index].num = req.num;
      unsentKitchenProductList[index].discountPrice = (unsentKitchenProductList[index].unitPrice ?? 0) * req.num;
      return true;
    } catch (error, stackTrace) {
      _logger.severe('numChangeDesk Error:', error, stackTrace);
      return false;
    }
  }

  // 添加商品
  Future<bool?> deskAddProduct(RequestOrderAddProduct req, GoodsProduct detail, {int num = 1}) async {
    try {
      // 参数
      final params = RequestCookingProducts(
        // 必点方案ID
        mustPlanUuid: req.mustPlanUuid,
        // 商品规格uuid
        flavorProductBomUuid: req.flavorUuid,
        // 属性信息
        productPackageAttributeUuidList: req.attributeUuid,
        // 加料信息
        sauceProductBomUuidList: req.sauceUuid,
        // 数量数量
        num: num,
        // 操作类型。add: 加购，sub: 减购
        operation: 'add',
        // 备注
        remark: '',
      );
      // 获取单价
      final unitPrice = getUnitPrice(req, detail);
      final timestamp =
          req.mustPlanUuid != 0 ? (req.mustPlanUuid + detail.uuid) : DateTime.now().millisecondsSinceEpoch;
      //
      final product = Product(
        aboutBuffet: AboutBuffet(
          buffetUuid: 0, // 自助餐Id
          customerTypeUuid: 0, // 自助餐顾客类型uuid
          isCustomer: false, // 是否是自助餐顾客
          isDelay: false, // 是否是加钟
        ),
        unitPrice: unitPrice, // 单价
        discountPrice: unitPrice * 1, // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
        isBuffet: false, // 是否是自助餐
        isCancel: false, // 是否退菜
        isGift: false, // 是否是赠菜
        isMust: req.mustPlanUuid != 0, // 是否必点
        mustPlanUuid: req.mustPlanUuid,
        localeAttributeName: getLocaleAttributeName(req, detail), // 商品属性
        localeName: detail.localeName, // 商品名称。商品名称、自助餐名称、自助餐加钟名称
        productPackageUuid: detail.uuid, // 商品ID
        num: num, // 数量
        price: 0, // 原价
        remark: '', // 备注
        status: 0, // 0: 未送厨 1:已送厨 2:制作完成（出餐）
        uuid: timestamp, // 商品uuid
        limitNum: detail.limitNum, // 商品限购数量
      );
      // 查找同类项是否存在
      final index = getProductIndex(params);
      //
      if (index == -1) {
        // 如果不存在，添加到列表
        cookingProductList.add(params);
        // 判断uuid是否存在
        if (unsentKitchenProductList.any((item) => item.uuid == timestamp)) {
          product.uuid = timestamp + 1;
        }
        //
        unsentKitchenProductList.add(product);
      } else {
        final int num = cookingProductList[index].num + 1;
        // 商品限购数量
        final limitNum = unsentKitchenProductList[index].limitNum ?? 0;
        if (limitNum > 0) {
          if (num > limitNum) {
            DialogManager.showToast(
              '商品数量不能超过@num'.trParams({
                'num': limitNum.toString(),
              }),
            );
            return false;
          }
        }
        // 如果存在相同的产品，增加数量
        cookingProductList[index].num = num;
        // 影响到价格
        unsentKitchenProductList[index].num = num;
        unsentKitchenProductList[index].discountPrice = unitPrice * num;
      }
      return true;
    } catch (error, stackTrace) {
      _logger.severe('deskAddProduct Error:', error, stackTrace);
      return false;
    }
  }

  // 获取单价
  double getUnitPrice(
    RequestOrderAddProduct req,
    GoodsProduct detail,
  ) {
    // 计算公式=规格价格+加料价格
    final flavor = detail.flavors.list.firstWhere((item) => item.uuid == req.flavorUuid);
    final sauce = detail.sauces.list
        .fold(0.0, (double sum, item) => req.sauceUuid.contains(item.uuid) ? (sum + item.price.toSafetyDouble()) : sum);
    return flavor.price.toSafetyDouble() + sauce;
  }

  // 获取商品
  int getProductIndex(RequestCookingProducts params) {
    return cookingProductList.indexWhere(
      (product) =>
          product.mustPlanUuid == params.mustPlanUuid && // 必点方案
          product.remark == params.remark && // 备注
          product.flavorProductBomUuid == params.flavorProductBomUuid && // 规格
          _listEquals(product.productPackageAttributeUuidList, params.productPackageAttributeUuidList) && // 属性
          _listEquals(product.sauceProductBomUuidList, params.sauceProductBomUuidList), // 加料
    );
  }

  // 获取规格
  LocaleName getLocaleAttributeName(
    RequestOrderAddProduct req,
    GoodsProduct detail,
  ) {
    final List<LocaleName> describe = <LocaleName>[];
    // 查找规格
    if (req.flavorUuid != 0) {
      detail.flavors.list.any((item) {
        if (item.uuid == req.flavorUuid) {
          describe.add(item.localeName);
          return true;
        }
        return false;
      });
    }
    // 查找属性
    if (req.attributeUuid.isNotEmpty) {
      for (final item in detail.attributeGroups.list) {
        for (final child in item.attributes.list) {
          if (req.attributeUuid.contains(child.uuid)) {
            describe.add(child.localeName);
          }
        }
      }
    }
    // 查找加料
    if (req.sauceUuid.isNotEmpty) {
      for (final item in detail.sauces.list) {
        if (req.sauceUuid.contains(item.uuid)) {
          describe.add(item.localeName);
        }
      }
    }
    return LocaleName(
      en: describe.map((item) => item.en).join(';'),
      ja: describe.map((item) => item.ja).join(';'),
      ko: describe.map((item) => item.ko).join(';'),
      my: describe.map((item) => item.my).join(';'),
      th: describe.map((item) => item.th).join(';'),
      tr: describe.map((item) => item.tr).join(';'),
      zh: describe.map((item) => item.zh).join(';'),
      zhtw: describe.map((item) => item.zhtw).join(';'),
      // de: describe.map((item) => item.de).join(';'),
    );
  }

  // 比较两个列表是否相等
  bool _listEquals(List<dynamic> list1, List<dynamic> list2) {
    if (list1.length != list2.length) return false;
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) return false;
    }
    return true;
  }

  // 合并
  List<MustGoodsItem> getMergeMustList(List<MustGoodsItem> mustList) {
    final List<MustGoodsItem> arr = List.from(mustList);
    for (final item in arr) {
      for (final child in item.products.list) {
        child.selectedNum = 0;
      }
      //
      int num = 0;
      int needNum = 0;
      // 初始化必点商品数量
      // must_rule == 1 就是可选商品，提示词：每单需选择XX份
      // must_rule == 0 && must_type == 1 是固定商品+每人必点，提示词为：每人需对以下商品各选 1 份
      // must_rule == 0 && must_type == 0 是固定商品+每单必点，提示词为：每单需对以下商品各选 1 份
      if (item.mustRule == 1) {
        needNum = item.mustType == 1 ? item.mealNum : 1;
      } else {
        if (item.mustType == 0) {
          needNum = item.products.list.length;
        } else {
          needNum = item.mealNum * item.products.list.length;
        }
      }
      // 第一步：查找商品显示数量
      if (cookingProductList.isNotEmpty) {
        for (final cooking in cookingProductList) {
          if (cooking.mustPlanUuid == item.uuid && item.products.list.isNotEmpty) {
            // 是否为自动加购商品
            bool isAutoAdd = true;
            // 查找商品显示数量
            for (final child in item.products.list) {
              // 查找规格ID
              if (child.product.flavors.list.any((flavor) => flavor.uuid == cooking.flavorProductBomUuid)) {
                isAutoAdd = false;
                child.selectedNum = cooking.num;
                break;
              }
            }
            if (isAutoAdd) continue;
            // 已选择的数量
            num += cooking.num;
            // 还差多少的数量
            if (item.mustRule == 1) {
              // must_rule == 1 就是可选商品，提示词：每单需选择XX份
              needNum -= cooking.num;
            } else {
              if (item.mustType == 0) {
                // must_rule == 0 && must_type == 0 是固定商品+每单必点，提示词为：每单需对以下商品各选 1 份
                needNum -= 1;
              } else {
                // must_rule == 0 && must_type == 1 是固定商品+每人必点，提示词为：每人需对以下商品各选 1 份
                needNum -= min(item.mealNum, cooking.num);
              }
            }
          }
        }
      } else {
        // 如果没有商品，默认选择数量为0
        if (item.products.list.isNotEmpty) {
          for (final child in item.products.list) {
            child.selectedNum = 0;
          }
        }
      }
      // 第二步：已选择的数量
      item.selectedNum = num;
      // 第三步：还差多少的数量
      item.needNum = max(needNum, 0);
    }
    //
    return arr;
  }

  // 自动加购逻辑
  void productAutoAdd(List<MustGoodsItem> arr) async {
    if (arr.isEmpty) return;
    for (final item in arr) {
      for (final product in item.products.list) {
        if (product.isAutoAdd == true && product.product.isSoldOut == false) {
          int count = 1;
          // must_rule == 1 就是可选商品，提示词：每单需选择XX份
          // must_rule == 0 && must_type == 1 是固定商品+每人必点，提示词为：每人需对以下商品各选 1 份
          // must_rule == 0 && must_type == 0 是固定商品+每单必点，提示词为：每单需对以下商品各选 1 份
          final flavor = product.product.flavors.list.first;
          if (item.mustRule == 0 && item.mustType == 1) {
            count = min(item.mealNum, flavor.stockNum);
          }
          // 判断是否添加过，如果存在，先删除在添加
          final detail = unsentKitchenProductList.firstWhereOrNull(
            (unsentKitchenItem) =>
                unsentKitchenItem.isMust &&
                unsentKitchenItem.mustPlanUuid == item.uuid &&
                unsentKitchenItem.productPackageUuid == product.product.uuid,
          );
          // 判断是否存在
          if (detail != null) {
            if (detail.num == count) return;
            // 修改数量
            numChangeDesk(
              RequestNumChange(
                num: count,
                saleOrderProductUuid: detail.uuid,
                saleBillUuid: 0,
                saleOrderUuid: 0,
              ),
            );
          } else {
            final List<int> attributeUuid = product.product.attributeGroups.list
                .expand((group) => group.attributes.list)
                .where((attribute) => attribute.isDefaultSelected)
                .map((attribute) => attribute.uuid)
                .toList();
            final List<int> sauceUuid = product.product.sauces.list
                .where((sauce) => sauce.isDefaultSelected)
                .map((sauce) => sauce.uuid)
                .toList();
            // 添加数量
            deskAddProduct(
              RequestOrderAddProduct(
                flavorUuid: flavor.uuid,
                mustPlanUuid: item.uuid,
                attributeUuid: attributeUuid,
                sauceUuid: sauceUuid,
              ),
              product.product,
              num: count,
            );
          }
        }
      }
    }
  }

  // 删除不存在的数据
  void productDelete(List<MustGoodsItem> arr) {
    if (arr.isEmpty) return;
    for (final item in unsentKitchenProductList) {
      // 如果是自助餐商品
      if (item.isMust) {
        final mustDetail = arr.firstWhereOrNull(
          (mustItem) => item.mustPlanUuid == mustItem.uuid,
        );
        //
        if (mustDetail != null &&
            mustDetail.products.list.any((product) => product.product.uuid == item.productPackageUuid)) {
          continue;
        }
        // 删除
        numChangeDesk(
          RequestNumChange(
            num: 0,
            saleOrderProductUuid: item.uuid,
            saleBillUuid: 0,
            saleOrderUuid: 0,
          ),
        );
      }
    }
  }
}
