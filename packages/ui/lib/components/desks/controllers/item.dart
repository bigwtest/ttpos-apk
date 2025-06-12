import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/callbacks.dart';
import 'package:ttpos_ui/components/desks/models/color.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/dialog.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_model.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_view.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskListItemController extends GetxController {
  Desk props;

  final DeskListItemCallbacks callbacks;

  DeskListItemController({
    required this.props,
    //
    required this.callbacks,
  });

  final ConfigController _configController = Get.find<ConfigController>();

  bool get isEnableBuffet => _configController.isEnableBuffet;
  bool get _isActionNeedPassword => _configController.isActionNeedPassword;

  final RxList<Buffet> buffetList = RxList<Buffet>([]);

  bool get _isRemainBuffetCountdownColor => _configController.buffetOption.value.isRemainBuffetCountdownColor;
  Color get _remainBuffetCountdownColorLeft10min => _configController.buffetOption.value.buffetCountdownLeft10minColor;
  Color get _remainBuffetCountdownColorLeft20min => _configController.buffetOption.value.buffetCountdownLeft20minColor;

  Logger get _logger {
    try {
      return Get.isRegistered<LoggerController>(tag: 'DeskListItemController ${props.uuidString}')
          ? Get.find<LoggerController>(tag: 'DeskListItemController ${props.uuidString}').logger
          : Get.put(
              LoggerController(appName: 'DeskListItemController ${props.uuidString}'),
              tag: 'DeskListItemController ${props.uuidString}',
            ).logger;
    } catch (e) {
      return Get.put(
        LoggerController(appName: 'DeskListItemController ${props.uuidString}'),
        tag: 'DeskListItemController ${props.uuidString}',
      ).logger;
    }
  }

  final Rx<Desk> _internalData = Desk(
    uuid: 0,
    deskNo: '',
    customerCount: 0,
    status: 0,
    isLock: false,
    isBuffet: false,
    isWait: false,
    time: 0,
    price: SafetyNumber.fromJson(0),
    remark: '',
    regionUuid: 0,
    typeUuid: 0,
  ).obs;

  int get uuid => _internalData.value.uuid;
  String get uuidString => _internalData.value.uuidString;

  Color get borderColor => _internalData.value.palette.borderColor;
  Color get bgColor => _internalData.value.palette.bgColor;

  String get deskNo => _internalData.value.deskNo;
  String get label => _internalData.value.label;
  int get customerCount => _internalData.value.customerCount;
  String get remark => _internalData.value.remark;
  String get priceString => _internalData.value.priceString;
  bool get isLock => _internalData.value.isLock;
  bool get isBuffet => _internalData.value.isBuffet;
  bool get isWait => _internalData.value.isWait;
  bool get isAvailable => _internalData.value.isAvailable;
  bool get isClosable => _internalData.value.isClosable;
  bool get isCountDown => _internalData.value.isCountDown;
  bool get isCountUp => _internalData.value.isCountUp;
  bool get isOpenDefaultPeopleNum => _internalData.value.isOpenDefaultPeopleNum ?? false;
  int get defaultPeopleNum => _internalData.value.defaultPeopleNum ?? 0;

  final RxInt _timerValue = (-9999).obs;
  String get timerString {
    try {
      if (_timerValue.value == -9999) return '';
      if (_timerValue.value == -1) return '不限时'.tr;
      if (_timerValue.value == 0) return '00:00';
      final hours = _timerValue.value ~/ 3600;
      final minutes = (_timerValue.value % 3600) ~/ 60;
      final seconds = _timerValue.value % 60;
      return '${hours > 0 ? '${hours.toString().padLeft(2, '0')}:' : ''}${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
    } catch (error, stackTrace) {
      _logger.severe('timerString Error:', error, stackTrace);
      return '00:00';
    }
  }

  final RxInt _lockTime = (-9999).obs;
  String get lockTimeString {
    try {
      if (_lockTime.value < 0) return '';
      if (_lockTime.value == 0) return '00:00';
      final hours = _lockTime.value ~/ 3600;
      final minutes = (_lockTime.value % 3600) ~/ 60;
      final seconds = _lockTime.value % 60;
      return '${hours > 0 ? '${hours.toString().padLeft(2, '0')}:' : ''}${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
    } catch (error, stackTrace) {
      _logger.severe('lockTimeString Error:', error, stackTrace);
      return '00:00';
    }
  }

  Color get timerColor {
    if (_isRemainBuffetCountdownColor) {
      if (isCountUp) {
        return CustomTheme.secondaryColor;
      } else if (_timerValue.value < 0 || _timerValue.value > 20 * 60) {
        return CustomTheme.secondaryColor;
      } else if (_timerValue.value <= 10 * 60) {
        return _remainBuffetCountdownColorLeft10min;
      } else if (_timerValue.value <= 20 * 60) {
        return _remainBuffetCountdownColorLeft20min;
      } else {
        return CustomTheme.secondaryColor;
      }
    }
    return CustomTheme.secondaryColor;
  }

  Timer? _countTimer;
  Timer? _lockTimer;

  final RxBool isLoading = false.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    updateFromProps(props);
  }

  @override
  void onClose() {
    stopCountTimer();
    stopLockTimer();
    super.onClose();
  }

  void updateFromProps(Desk newProps) {
    try {
      _internalData.value = newProps;
      _timerValue.value = newProps.time;
      _lockTime.value = newProps.lockTime ?? -9999;
      props = newProps;

      startCountTimer();
      startLockTimer();
    } catch (error, stackTrace) {
      _logger.severe('updateFromProps Error:', error, stackTrace);
    }
  }

  void startCountTimer() {
    if (_countTimer != null) stopCountTimer();

    if (isAvailable) return;

    callbacks.registerTimer(props.uuid);

    _timerValue.value = _internalData.value.time;
    _countTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (isAvailable) {
          stopCountTimer();
          return;
        }

        if (isCountDown) {
          if (_timerValue.value <= 0) {
            stopCountTimer();
            return;
          }
          _timerValue.value--;
          return;
        }

        if (isCountUp) {
          _timerValue.value++;
          return;
        }
      },
    );
  }

  void stopCountTimer() {
    _countTimer?.cancel();
    _countTimer = null;

    callbacks.unregisterTimer(props.uuid);
  }

  void startLockTimer() {
    if (_lockTimer != null) stopLockTimer();

    _lockTime.value = _internalData.value.lockTime ?? -9999;
    _lockTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (!isLock) {
          _lockTime.value = -9999;
          stopLockTimer();
          return;
        }

        if (isLock && _lockTime.value >= 0) {
          _lockTime.value++;
          return;
        }
      },
    );
  }

  void stopLockTimer() {
    _lockTimer?.cancel();
    _lockTimer = null;
  }

  void _loadDeskListAndCategory() {
    callbacks.loadDeskList(forceRefresh: true);
    callbacks.loadDeskCategory(forceRefresh: true);
  }

  Future<void> _loadBuffetList() async {
    try {
      final buffetList = await callbacks.deskCallbacks.getBuffetList();
      if (buffetList == null) return;
      this.buffetList.assignAll(buffetList.list);
    } catch (error, stackTrace) {
      _logger.severe('loadBuffetList Error:', error, stackTrace);
    }
  }

  void onTap() async {
    try {
      callbacks.setCurrentActionDeskUuid(props.uuid);
      if (await _refreshData() == null) return;

      // 如果当前台号是空闲的，则发起开桌逻辑
      if (isAvailable) {
        await _onClickAvailable();
        _loadDeskListAndCategory();
        return;
      }

      // 如果当前台号是锁定状态，则提示
      if (isLock) {
        await _onClickLockDesk();
        return;
      }

      // 如果当前台号是待清台状态，则提示
      if (isWait) {
        await _onClickCleanDesk();
        _loadDeskListAndCategory();
        return;
      }

      // 如果当前台号是自助餐状态，则提示
      if (isCountDown) {
        await _onClickBuffetDesk();
        return;
      }

      // 如果当前台号是非自助餐状态，则提示
      if (isCountUp) {
        await _onClickNotBuffetDesk();
        return;
      }
    } catch (error, stackTrace) {
      _logger.severe('onTap Error:', error, stackTrace);
    } finally {
      callbacks.setCurrentActionDeskUuid(0);
    }
  }

  Future<void> _onClickAvailable() async {
    if (isEnableBuffet) await _loadBuffetList();

    // NOTE: 2.1 新增逻辑 - 如果没开启自助餐，且开启了默认人数，则直接开桌
    if (!isEnableBuffet && isOpenDefaultPeopleNum && defaultPeopleNum > 0) {
      final DeskOpenModel deskOpenModel = DeskOpenModel(
        uuid: uuid,
        isBuffet: false,
        selectedBuffetUuids: [],
        buffetCustomers: [],
        notBuffetCustomerCount: defaultPeopleNum,
        remark: '',
      );

      await callbacks.deskCallbacks.onOpenDesk(deskOpenModel);
      return;
    }

    await Get.dialog<bool>(
      DismissKeyboardDialog(
        child: DeskOpenDialog(
          deskUuid: uuid,
          deskNo: deskNo,
          onConfirm: callbacks.deskCallbacks.onOpenDesk,
          isShowRemark: true,
          isBuffetOrNot: isEnableBuffet,
          isBuffetListSelectable: isEnableBuffet,
          isShowIsBuffetOrNotHeader: isEnableBuffet,
          buffetList: buffetList,
          requestBuffetList: callbacks.deskCallbacks.getBuffetList,
          isOpenDefaultPeopleNum: isOpenDefaultPeopleNum,
          defaultPeopleNum: defaultPeopleNum,
        ),
      ),
      barrierDismissible: false,
    );
  }

  Future<void> _onClickLockDesk() async {
    await callbacks.deskCallbacks.onClickLockDesk(_internalData.value);
  }

  Future<void> _onClickCleanDesk() async {
    final bool isConfirm = await DialogManager.showConfirmDialog(
      title: '清台'.tr,
      message: '是否确认清台？'.tr,
    );
    if (!isConfirm) return;
    await callbacks.deskCallbacks.onCleanDesk(_internalData.value);
  }

  Future<void> _onClickBuffetDesk() async {
    await callbacks.deskCallbacks.onClickBuffetDesk(_internalData.value);
  }

  Future<void> _onClickNotBuffetDesk() async {
    await callbacks.deskCallbacks.onClickNotBuffetDesk(_internalData.value);
  }

  void onTapClose() async {
    try {
      callbacks.setCurrentActionDeskUuid(props.uuid);
      if (await _refreshData() == null) return;

      if (!isClosable) return;

      final (bool canClose, BaseList<Product>? products, String reason, bool isDisabled) =
          await callbacks.deskCallbacks.onClickClose(_internalData.value);

      if (isDisabled) {
        DialogManager.showToast(reason);
        return;
      }

      String? requestPassword;

      if (_isActionNeedPassword) {
        await DialogManager.showPasswordDialog(
          onConfirm: ({required String password}) async {
            final isPasswordValid = await callbacks.deskCallbacks.onCheckPassword(password: password);
            if (!isPasswordValid) return false;

            requestPassword = password;
            return true;
          },
        );

        if (requestPassword == null || requestPassword?.isEmpty == true) return;
      }

      if (products != null && products.list.isNotEmpty) {
        await Get.dialog(
          barrierDismissible: false,
          DismissKeyboardDialog(
            child: DeskCancelView(
              products: products.list
                  .map(
                    (product) => DeskCancelModel(
                      name:
                          '${product.localeName.translate} ${(product.localeAttributeName.translate.isNotEmpty ? '（${product.localeAttributeName.translate}）' : '')}',
                      quantity: product.num,
                    ),
                  )
                  .toList(),
              onConfirm: (String value) async {
                if (value.isEmpty) {
                  DialogManager.showToast('请输入取消原因'.tr);
                  return false;
                }

                return await callbacks.deskCallbacks.onCloseDesk(
                  _internalData.value,
                  reason: value,
                  password: requestPassword,
                );
              },
            ),
          ),
        );
      } else {
        await DialogManager.showConfirmDialog(
          message: '是否取消此笔交易？'.tr,
          onConfirm: () async {
            return await callbacks.deskCallbacks.onCloseDesk(
              _internalData.value,
              password: requestPassword,
            );
          },
        );
      }
    } catch (error, stackTrace) {
      _logger.severe('onTapClose Error:', error, stackTrace);
    } finally {
      callbacks.setCurrentActionDeskUuid(0);
      _loadDeskListAndCategory();
    }
  }

  Future<Desk?> _refreshData() async {
    final desk = await callbacks.deskCallbacks.getDeskData(props.uuid);
    if (desk == null) return null;
    _internalData.value = desk;
    return desk;
  }
}
