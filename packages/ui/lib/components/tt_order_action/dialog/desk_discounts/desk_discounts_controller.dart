import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_model.dart';

class DeskDiscountsController extends GetxController {
  final DiscountConfirmParamsModel? initData; // 初始化数据
  final bool intiShowCancel; // 初始化是否显示撤销按钮
  final Future<bool> Function()? fetchCancelDiscount; // 撤销优惠方法
  final Future<BaseList<ResponseFreeOrGiftReason>?> Function()? fetchReasons;
  final Future<bool> Function(DiscountConfirmParamsModel data)? fetchConfirm; // 确认方法
  final SafetyNumber? initPrice; // 初始化价格
  DeskDiscountsController({
    this.initData,
    this.intiShowCancel = false,
    this.fetchCancelDiscount,
    this.fetchReasons,
    this.fetchConfirm,
    this.initPrice,
  });
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  // 确认参数
  final Rx<DiscountConfirmParamsModel> formData = DiscountConfirmParamsModel(
    discountMethod: 1,
    priceStr: '',
    discountStr: '',
    zeroRule: 1,
    freeReasons: [],
    freeRemark: '',
  ).obs;

  // 优惠列表
  List<DiscountMethodModel> get discountMethodList => [
        DiscountMethodModel(
          text: '改价'.tr,
          type: 1,
        ),
        DiscountMethodModel(
          text: '折扣'.tr,
          type: 2,
        ),
        DiscountMethodModel(
          text: '抹零'.tr,
          type: 3,
        ),
        DiscountMethodModel(
          text: '免单'.tr,
          type: 4,
        ),
      ];

  // 抹零列表
  List<DiscountMethodModel> get roundOffList => [
        DiscountMethodModel(
          text: '抹分'.tr,
          type: 1,
        ),
        DiscountMethodModel(
          text: '抹角'.tr,
          type: 2,
        ),
        DiscountMethodModel(
          text: '四舍五入保留一位小数'.tr,
          type: 3,
        ),
        DiscountMethodModel(
          text: '四舍五入到整数'.tr,
          type: 4,
        ),
      ];

  // 当前价格
  final Rx<SafetyNumber?> _price = Rx<SafetyNumber?>(null);
  SafetyNumber? get price => _price.value;
  set price(SafetyNumber? value) {
    _price.value = value;
  }

  // 更新价格
  void updatePrice(SafetyNumber? newPrice) {
    price = newPrice;
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 撤销加载状态
  final RxBool _isCancelLoading = false.obs;
  bool get isCancelLoading => _isCancelLoading.value;

  // 是否显示撤销优惠按钮
  final RxBool _isShowCancel = false.obs;
  bool get isShowCancel => _isShowCancel.value;
  set isShowCancel(bool value) {
    _isShowCancel.value = value;
  }

  // 赠菜原因
  final RxList<ResponseFreeOrGiftReason> _reasonsList = <ResponseFreeOrGiftReason>[].obs;
  List<ResponseFreeOrGiftReason> get reasonsList => _reasonsList;
  set reasonsList(List<ResponseFreeOrGiftReason> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<ResponseFreeOrGiftReason>().equals(_reasonsList, value);
    if (areEqual) return;
    reasonsList.addAll(value);
    // 缓存
    _cachedReasonsList = value;
  }

  // 缓存列表
  static List<ResponseFreeOrGiftReason> _cachedReasonsList = [];

  @override
  void onInit() async {
    // 如果有缓存数据，直接使用
    if (_cachedReasonsList.isNotEmpty) {
      reasonsList = _cachedReasonsList;
    }
    //
    loadReasonsList();
    //
    isShowCancel = intiShowCancel;
    //
    formData.value = DiscountConfirmParamsModel(
      discountMethod: initData?.discountMethod ?? 1,
      priceStr: initData?.priceStr ?? '',
      discountStr: initData?.discountStr ?? '',
      zeroRule: initData?.zeroRule ?? 1,
      freeReasons: initData?.freeReasons ?? [],
      freeRemark: initData?.freeRemark ?? '',
    );
    // 初始化价格
    if (initPrice != null) {
      _price.value = initPrice;
    }
    //
    super.onInit();
  }

  // 加载接口
  void loadReasonsList() async {
    try {
      final res = await fetchReasons?.call();
      reasonsList = res?.list ?? [];
    } catch (error, stackTrace) {
      _logger.severe('loadReasonsList Error:', error, stackTrace);
    }
  }

  // 撤销优惠方法
  void handleCancelDiscount() async {
    if (_isCancelLoading.value) return;

    await DialogManager.showConfirmDialog(
      title: '提示'.tr,
      message: "是否取消优惠折扣？".tr,
      onConfirm: () async {
        try {
          _isCancelLoading.value = true;
          final res = await fetchCancelDiscount?.call();
          if (res != null && res) {
            // 更新折扣状态，隐藏取消按钮
            isShowCancel = false;
            formData.value = DiscountConfirmParamsModel(
              discountMethod: 1,
              priceStr: '',
              discountStr: '',
              zeroRule: 1,
              freeReasons: [],
              freeRemark: '',
            );
            return true;
          }
          return false;
        } catch (error, stackTrace) {
          _logger.severe('handleCancelDiscount Error:', error, stackTrace);
          return false;
        } finally {
          _isCancelLoading.value = false;
        }
      },
    );
  }

  // 点击确认方法
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    if (formData.value.discountMethod == 1) {
      if (formData.value.priceStr == null || formData.value.priceStr!.isEmpty) {
        DialogManager.showToast('请输入价格'.tr);
        return;
      }
      final double price = double.tryParse(formData.value.priceStr ?? '') ?? 0;
      if (!(price >= 0 && price <= 999999999)) {
        DialogManager.showToast('请输入0-999999999间的价格'.tr);
        return;
      } else {
        formData.value.price = price;
      }
    } else if (formData.value.discountMethod == 2) {
      if (formData.value.discountStr == null || formData.value.discountStr!.isEmpty) {
        DialogManager.showToast('请输入折扣'.tr);
        return;
      } else if (!RegExp(r'^(100|[1-9]?[0-9])$').hasMatch(formData.value.discountStr!)) {
        DialogManager.showToast('请输入0-100间的正整数'.tr);
        return;
      } else {
        formData.value.discount = double.tryParse(formData.value.discountStr ?? '') ?? 0;
      }
    } else if (formData.value.discountMethod == 3) {
      if (formData.value.zeroRule == 0) {
        DialogManager.showToast('请选择抹零方式'.tr);
        return;
      }
    } else if (formData.value.discountMethod == 4) {
      if (reasonsList.isNotEmpty) {
        if ((formData.value.freeReasons == null || formData.value.freeReasons!.isEmpty) &&
            (formData.value.freeRemark == null || formData.value.freeRemark!.isEmpty)) {
          DialogManager.showToast('请选择或者填写免单原因'.tr);
          return;
        }
      } else {
        if (formData.value.freeRemark == null || formData.value.freeRemark!.isEmpty) {
          DialogManager.showToast('请输入免单原因'.tr);
          return;
        }
      }
    }
    try {
      _isLoading.value = true;
      final res = await fetchConfirm?.call(formData.value);
      if (res == null || !res) return;
      Get.back();
    } catch (error, stackTrace) {
      _logger.severe('handleConfirm Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  void handleInitData(int type) {
    formData.value = DiscountConfirmParamsModel(
      discountMethod: type,
      priceStr: '',
      discountStr: '',
      zeroRule: 1,
      freeReasons: [],
      freeRemark: '',
    );
  }

  void handleSelectReason(int uuid) {
    final freeReasons = formData.value.freeReasons ?? [];
    final index = freeReasons.indexWhere((item) => item == uuid);
    //
    if (index != -1) {
      freeReasons.removeAt(index);
    } else {
      freeReasons.add(uuid);
    }
    formData.update((data) {
      data?.freeReasons = freeReasons;
    });
  }
}
