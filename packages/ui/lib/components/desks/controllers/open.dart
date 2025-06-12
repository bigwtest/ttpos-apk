import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_model/buffet/response/list/list.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';

class DeskOpenDialogProps {
  // 桌台UUID
  final int? deskUuid;
  // 是否自助餐
  final bool isBuffetOrNot;
  // 选中的自助餐UUID列表
  final List<int> selectedBuffetUuids;
  // (自助餐)顾客类型数量
  final Map<int, int> customerTypeCounts;
  // (非自助餐)总人数
  final int totalCustomerCount;
  // 是否显示备注
  final bool isShowRemark;
  // 自助餐列表
  final List<Buffet>? buffetList;
  // 请求自助餐列表
  final Future<BuffetList?> Function()? requestBuffetList;
  // 是否开启默认人数
  final bool isOpenDefaultPeopleNum;
  // 默认人数
  final int defaultPeopleNum;
  // 确认开桌
  final void Function(DeskOpenModel)? onConfirmOpen;

  DeskOpenDialogProps({
    this.deskUuid,
    this.isBuffetOrNot = false,
    this.buffetList,
    this.selectedBuffetUuids = const [],
    this.customerTypeCounts = const {},
    this.totalCustomerCount = 0,
    this.isShowRemark = true,
    this.requestBuffetList,
    this.isOpenDefaultPeopleNum = false,
    this.defaultPeopleNum = 0,
    this.onConfirmOpen,
  });
}

class DeskOpenController extends GetxController {
  DeskOpenController({this.props});

  final DeskOpenDialogProps? props;

  Logger get _logger {
    try {
      return Get.isRegistered<LoggerController>(tag: 'DeskOpenController')
          ? Get.find<LoggerController>(tag: 'DeskOpenController').logger
          : Get.put(
              LoggerController(appName: 'DeskOpenController'),
              tag: 'DeskOpenController',
            ).logger;
    } catch (e) {
      return Get.put(
        LoggerController(appName: 'DeskOpenController'),
        tag: 'DeskOpenController',
      ).logger;
    }
  }

  // 当前桌台
  final Rx<int?> _deskUuid = Rx<int?>(null);

  // final RxString _deskNo = ''.obs;
  // String get deskNo => _deskNo.value;

  final RxList<Buffet> _buffetList = RxList<Buffet>();
  List<Buffet> get buffetList => _buffetList.toList();

  // 是否为自助餐
  final RxBool _isBuffetOrNot = false.obs;
  bool get isBuffetOrNot => _isBuffetOrNot.value;

  // 备注
  final RxString _openRemark = ''.obs;
  String get openRemark => _openRemark.value;
  set openRemark(String value) => _openRemark.value = value;

  // 选中的自助餐
  final RxList<Buffet> _selectedBuffets = RxList<Buffet>();
  List<Buffet> get selectedBuffets => _selectedBuffets.toList();
  List<int> get selectedBuffetUuids => _selectedBuffets.map((e) => e.uuid).toList();

  // 去重后的顾客类型列表
  final RxList<BuffetCustomerType> _uniqueCustomerTypes = RxList<BuffetCustomerType>();
  List<BuffetCustomerType> get uniqueCustomerTypes => _uniqueCustomerTypes.toList();

  // 顾客类型数量控制器映射
  final RxMap<int, RxInt> _customerTypeCounts = RxMap<int, RxInt>();
  Map<int, int> get customerTypeCounts => _customerTypeCounts.map((key, value) => MapEntry(key, value.value));

  // 总人数
  final RxInt _totalCustomerCount = 0.obs;
  int get totalCustomerCount => _totalCustomerCount.value;
  set totalCustomerCount(int value) => _totalCustomerCount.value = value;

  // 当前选中的顾客类型UUID
  final Rx<int?> _selectedCustomerTypeUuid = Rx<int?>(null);
  int? get selectedCustomerTypeUuid => _selectedCustomerTypeUuid.value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  void _updateFromProps({
    int? deskUuid,
    bool isBuffetOrNot = false,
    List<Buffet>? buffetList,
    List<int> selectedBuffetUuids = const [],
    Map<int, int> customerTypeCounts = const {},
    int totalCustomerCount = 0,
    bool isShowRemark = false,
    Future<BuffetList?> Function()? requestBuffetList,
  }) async {
    _deskUuid.value = deskUuid;
    _isBuffetOrNot.value = isBuffetOrNot;

    if (buffetList != null && buffetList.isNotEmpty) _buffetList.assignAll(buffetList);

    if (isBuffetOrNot) {
      if (_buffetList.isEmpty && requestBuffetList != null) {
        final result = await requestBuffetList.call();
        if (result != null) {
          _buffetList.assignAll(result.list);
        }
      }

      // 如果传入了选中的自助餐列表，则更新控制器数据
      if (selectedBuffetUuids.isNotEmpty) {
        for (final buffetUuid in selectedBuffetUuids) {
          // 如果自助餐列表中不存在该自助餐，则跳过
          if (!_buffetList.any((e) => e.uuid == buffetUuid)) continue;
          toggleSelectedBuffet(buffetUuid);
        }
      }

      // 设置顾客类型数量
      if (customerTypeCounts.isNotEmpty) {
        customerTypeCounts.forEach((typeUuid, count) {
          setCustomerCount(typeUuid, count);
        });
      } else {
        // 如果没有传入数量，则默认设置为 1
        for (final buffetUuid in selectedBuffetUuids) {
          // 查找对应的自助餐，如果找不到则跳过
          final buffet = _buffetList.where((e) => e.uuid == buffetUuid).toList();
          if (buffet.isEmpty) continue;

          for (final type in buffet.first.buffetCustomerType.list) {
            setCustomerCount(type.uuid, 1);
          }
        }
      }
    } else {
      _totalCustomerCount.value = totalCustomerCount;
    }
  }

  // 更新去重后的顾客类型列表
  void _updateUniqueCustomerTypes() {
    final Set<int> uniqueTypeIds = {};
    final List<BuffetCustomerType> uniqueTypes = [];

    // 记录当前所有的顾客类型ID
    final Set<int> currentTypeIds = _customerTypeCounts.keys.toSet();

    for (final buffet in _selectedBuffets) {
      for (final type in buffet.buffetCustomerType.list) {
        if (!uniqueTypeIds.contains(type.uuid)) {
          uniqueTypeIds.add(type.uuid);
          uniqueTypes.add(type);
          // 确保每种类型都有对应的计数器
          if (!_customerTypeCounts.containsKey(type.uuid)) {
            _customerTypeCounts[type.uuid] = 0.obs;
          }
        }
      }
    }

    // 处理不再存在的顾客类型
    final Set<int> removedTypeIds = currentTypeIds.difference(uniqueTypeIds);
    for (final typeId in removedTypeIds) {
      // 如果当前选中的是被移除的类型，取消选中
      if (_selectedCustomerTypeUuid.value == typeId) {
        _selectedCustomerTypeUuid.value = null;
      }
      // 移除不再存在的顾客类型的计数器
      _customerTypeCounts.remove(typeId);
    }

    _uniqueCustomerTypes.value = uniqueTypes;

    // 更新总人数
    _updateTotalCount();
  }

  // 增加特定类型的顾客数量
  void incrementCustomerCount(int typeUuid) {
    if (_customerTypeCounts.containsKey(typeUuid)) {
      _customerTypeCounts[typeUuid]!.value++;
      _updateTotalCount();
    }
  }

  // 减少特定类型的顾客数量
  void decrementCustomerCount(int typeUuid) {
    if (_customerTypeCounts.containsKey(typeUuid) && _customerTypeCounts[typeUuid]!.value > 0) {
      _customerTypeCounts[typeUuid]!.value--;
      _updateTotalCount();
    }
  }

  // 设置特定类型的顾客数量
  void setCustomerCount(int typeUuid, int count) {
    if (_customerTypeCounts.containsKey(typeUuid)) {
      _customerTypeCounts[typeUuid]!.value = count;
      _updateTotalCount();
    }
  }

  // 更新总人数
  void _updateTotalCount() {
    int total = 0;
    for (final count in _customerTypeCounts.values) {
      total += count.value;
    }
    _totalCustomerCount.value = total;
  }

  // 清空所有顾客数量
  void clearAllCustomerCounts() {
    for (final key in _customerTypeCounts.keys) {
      _customerTypeCounts[key]!.value = 0;
    }
    _totalCustomerCount.value = 0;
  }

  // 是否可选择自助餐
  bool isBuffetSelectable(int buffetUuid) {
    if (_selectedBuffets.any((e) => e.uuid == buffetUuid)) return true;
    if (_selectedBuffets.length >= 2) return false;
    if (_selectedBuffets.length == 1) {
      // 查找对应的自助餐，如果找不到则返回 false
      final buffets = _buffetList.where((e) => e.uuid == buffetUuid).toList();
      if (buffets.isEmpty) return false;

      final realBuffet = buffets.first;
      return (_selectedBuffets.first.canCombined && realBuffet.canCombined) ||
          (!_selectedBuffets.first.canCombined && !realBuffet.canCombined);
    }
    return _selectedBuffets.isEmpty;
  }

  // 生成开桌模型
  Future<DeskOpenModel?> generateOpenModel() async {
    try {
      final isValid = validateOpenModel();
      if (!isValid) return null;

      return DeskOpenModel(
        uuid: _deskUuid.value,
        isBuffet: isBuffetOrNot,
        selectedBuffetUuids: _selectedBuffets.map((e) => e.uuid).toList(),
        buffetCustomers: [
          for (final type in _uniqueCustomerTypes)
            DeskOpenBuffetCustomerModel(
              uuid: type.uuid,
              count: _customerTypeCounts[type.uuid]!.value,
            ),
        ],
        notBuffetCustomerCount: _totalCustomerCount.value,
        remark: _openRemark.value,
      );
    } catch (error, stackTrace) {
      _logger.severe('openDialog Error:', error, stackTrace);
      return null;
    }
  }

  // 切换自助餐或非自助餐
  void toggleBuffetOrNot() {
    // 取消当前选中的顾客类型
    _selectedCustomerTypeUuid.value = null;
    reset();
    _isBuffetOrNot.value = !_isBuffetOrNot.value;

    if (!isBuffetOrNot) {
      if ((props?.isOpenDefaultPeopleNum ?? false) == true && (props?.defaultPeopleNum ?? 0) > 0) {
        Future.microtask(() async {
          totalCustomerCount = props!.defaultPeopleNum;

          final openModel = await generateOpenModel();
          if (openModel == null) return;

          Get.back(result: true);

          props?.onConfirmOpen?.call(openModel);
        });

        return;
      }
      customerCountFocusNode.requestFocus();
    }
  }

  // 切换选中的自助餐套餐
  void toggleSelectedBuffet(int buffetUuid) {
    debugPrint('toggleSelectedBuffet: $buffetUuid');
    // 取消当前选中的顾客类型
    _selectedCustomerTypeUuid.value = null;

    if (_selectedBuffets.any((selected) => selected.uuid == buffetUuid)) {
      _selectedBuffets.removeWhere((selected) => selected.uuid == buffetUuid);
    } else {
      // 查找对应的自助餐，如果找不到则返回
      final buffets = _buffetList.where((e) => e.uuid == buffetUuid).toList();
      if (buffets.isEmpty) return;

      final realBuffet = buffets.first;
      // 如果新选择的自助餐不可组合，先移除所有已选择的自助餐
      if (!realBuffet.canCombined) {
        _selectedBuffets.clear();
      }
      // 如果已经选择了不可组合的自助餐，先移除它们
      else if (_selectedBuffets.any((selected) => !selected.canCombined)) {
        _selectedBuffets.removeWhere((selected) => !selected.canCombined);
      }

      _selectedBuffets.add(realBuffet);
    }

    // 更新去重后的顾客类型列表
    _updateUniqueCustomerTypes();
  }

  // 重置
  void reset() {
    _selectedBuffets.clear();
    _uniqueCustomerTypes.clear();
    _selectedCustomerTypeUuid.value = null;
    clearAllCustomerCounts();
    _openRemark.value = '';
    _totalCustomerCount.value = 0;
  }

  // 关闭对话框
  void closeDialog() {
    reset();
    _isBuffetOrNot.value = false;
  }

  // 选择顾客类型
  void selectCustomerType(int typeUuid) {
    _selectedCustomerTypeUuid.value = typeUuid;
  }

  // 通过自定义键盘输入数字
  void inputNumberByKeyboard(String value) {
    if (_selectedCustomerTypeUuid.value == null) return;

    final typeUuid = _selectedCustomerTypeUuid.value!;
    if (!_customerTypeCounts.containsKey(typeUuid)) return;

    final currentCount = _customerTypeCounts[typeUuid]!.value;

    switch (value) {
      case '清空':
        _customerTypeCounts[typeUuid]!.value = 0;
        break;
      case '退出':
        _selectedCustomerTypeUuid.value = null;
        break;
      case '确定':
        _selectedCustomerTypeUuid.value = null;
        break;
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        // 如果当前值为0，则替换；否则追加
        if (currentCount == 0) {
          _customerTypeCounts[typeUuid]!.value = int.tryParse(value) ?? 0;
        } else {
          // 限制最大位数为3位
          if (currentCount.toString().length < 3) {
            final newValue = int.tryParse('$currentCount$value') ?? 0;
            _customerTypeCounts[typeUuid]!.value = newValue;
          }
        }
        break;
      case '00':
        // 如果当前值为0，则保持0；否则追加00
        if (currentCount == 0) {
          _customerTypeCounts[typeUuid]!.value = 0;
        } else {
          // 限制最大位数为3位
          if (currentCount.toString().length < 2) {
            final newValue = int.tryParse('${currentCount}00') ?? 0;
            _customerTypeCounts[typeUuid]!.value = newValue > 999 ? 999 : newValue;
          }
        }
        break;
    }

    _updateTotalCount();
  }

  bool validateOpenModel() {
    if (isBuffetOrNot) {
      if (_selectedBuffets.isEmpty) {
        DialogManager.showToast('请选择自助餐套餐'.tr);
        return false;
      }

      if (_selectedBuffets.length > 2) {
        DialogManager.showToast('最多只能选择2种自助餐'.tr);
        return false;
      }

      if (_selectedBuffets.length == 2) {
        if (_selectedBuffets.any((e) => !e.canCombined)) {
          DialogManager.showToast('请选择可组合的自助餐'.tr);
          return false;
        }
      }
    }

    if (_totalCustomerCount.value < 1 || _totalCustomerCount.value > 999) {
      DialogManager.showToast('用餐人数支持1-999'.tr);
      return false;
    }

    return true;
  }

  void onChangeSelectedCustomerTypeUuid(int? uuid) {
    _selectedCustomerTypeUuid.value = uuid;
  }

  final FocusNode customerCountFocusNode = FocusNode();
  final FocusNode remarkFocusNode = FocusNode();

  final RxBool _isRemarkFocused = false.obs;
  bool get isRemarkFocused => _isRemarkFocused.value;
  set isRemarkFocused(bool value) => _isRemarkFocused.value = value;

  @override
  void onInit() {
    super.onInit();
    customerCountFocusNode.addListener(() {
      if (customerCountFocusNode.hasFocus) {
        remarkFocusNode.unfocus();
        _isRemarkFocused.value = false;
      }
    });

    remarkFocusNode.addListener(() {
      if (remarkFocusNode.hasFocus) {
        customerCountFocusNode.unfocus();
        _isRemarkFocused.value = true;
      } else {
        _isRemarkFocused.value = false;
      }
    });

    if (props != null) {
      _updateFromProps(
        deskUuid: props?.deskUuid,
        isBuffetOrNot: props?.isBuffetOrNot ?? false,
        buffetList: props?.buffetList,
        selectedBuffetUuids: props?.selectedBuffetUuids ?? [],
        customerTypeCounts: props?.customerTypeCounts ?? {},
        totalCustomerCount: props?.totalCustomerCount ?? 0,
        isShowRemark: props?.isShowRemark ?? true,
        requestBuffetList: props?.requestBuffetList,
      );

      if (!isBuffetOrNot) {
        customerCountFocusNode.requestFocus();
      }
    }
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    customerCountFocusNode.dispose();
    remarkFocusNode.dispose();
    super.onClose();
  }
}
