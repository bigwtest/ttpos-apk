part of '../container.dart';

mixin MixinFilter on GetxController {
  RxList<Desk> get _desks;
  Rx<DeskCategory> get _desksCategory;
  List<DeskRegionItem> get _deskRegions => _desksCategory.value.region.list;
  List<DeskTypeItem> get _deskTypes => _desksCategory.value.type.list;

  RxList<Desk> get _deskListFiltered;
  List<Desk> get deskListFiltered => _deskListFiltered;
  Rx<Extra> get _deskExtraFiltered;

  List<DeskTotalItemModel> get deskExtraFiltered => [
        DeskTotalItemModel(
          label: '全部 (@count)'.trParams({
            'count': '${_deskExtraFiltered.value.totalNum}',
          }),
          enableColor: false,
        ),
        DeskTotalItemModel(
          label: '可用 (@count)'.trParams({
            'count': '${_deskExtraFiltered.value.availableNum}',
          }),
          enableColor: true,
          color: CustomTheme.greenColor,
        ),
        DeskTotalItemModel(
          label: '非自助餐 (@count)'.trParams({
            'count': '${_deskExtraFiltered.value.occupyNotBuffetNum}',
          }),
          enableColor: true,
          color: CustomTheme.primaryColor,
        ),
        DeskTotalItemModel(
          label: '自助餐 (@count)'.trParams({
            'count': '${_deskExtraFiltered.value.occupyBuffetNum}',
          }),
          enableColor: true,
          color: CustomTheme.errorColor,
        ),
        DeskTotalItemModel(
          label: '待清台 (@count)'.trParams({
            'count': '${_deskExtraFiltered.value.occupyWaitNum}',
          }),
          enableColor: true,
          color: const Color(0xFFFF6B00),
        ),
        DeskTotalItemModel(
          label: '锁单 (@count)'.trParams({
            'count': '${_deskExtraFiltered.value.lockNum}',
          }),
          enableColor: true,
          color: const Color(0xFF1180FF),
        ),
      ];

  final RxString _searchKeyword = ''.obs;
  String get searchKeyword => _searchKeyword.value;
  set searchKeyword(String value) => _searchKeyword.value = value;

  final RxInt _selectedRegionId = 0.obs;
  final RxInt _selectedTypeId = 0.obs;

  final RxBool _selectedIsAvailable = false.obs;
  final RxBool _selectedIsOccupied = false.obs;
  final RxBool _selectedIsLock = false.obs;
  final RxBool _selectedIsBuffet = false.obs;
  final RxBool _selectedIsNotBuffet = false.obs;
  final RxBool _selectedIsWait = false.obs;

  final Rx<DeskFilter> _filter = DeskFilter(
    selectedRegionId: 0,
    selectedTypeId: 0,
    searchKeyword: '',
    isAvailable: false,
    isOccupied: false,
    isLock: false,
    isBuffet: false,
    isNotBuffet: false,
    isWait: false,
  ).obs;

  Worker? _everAllFilterWorker;
  Worker? _everAllSelectionWorker;
  Worker? _everAllListFilteredWorker;
  Worker? _debounceExtraFilteredWorker;

  @override
  void onInit() {
    super.onInit();

    _everAllFilterWorker = everAll([
      _searchKeyword,
      _selectedRegionId,
      _selectedTypeId,
      _selectedIsAvailable,
      _selectedIsOccupied,
      _selectedIsLock,
      _selectedIsBuffet,
      _selectedIsNotBuffet,
      _selectedIsWait,
    ], (_) {
      if (_searchKeyword.value.isNotEmpty) {
        reset();
      }

      _filter.value = DeskFilter(
        selectedRegionId: _selectedRegionId.value,
        selectedTypeId: _selectedTypeId.value,
        searchKeyword: _searchKeyword.value,
        isAvailable: _selectedIsAvailable.value,
        isOccupied: _selectedIsOccupied.value,
        isLock: _selectedIsLock.value,
        isBuffet: _selectedIsBuffet.value,
        isNotBuffet: _selectedIsNotBuffet.value,
        isWait: _selectedIsWait.value,
      );
    });

    _everAllSelectionWorker = everAll(
      [
        _selectedAllRegionIds,
        _selectedRegionIds,
        _selectedAllTypeIds,
        _selectedTypeIds,
        _selectedAllStatusIds,
        _selectedStatusIds,
      ],
      (_) => onSelectionChanged(),
    );

    _everAllListFilteredWorker = everAll(
      [_filter, _desks],
      (_) => updateListFiltered(),
      // time: const Duration(milliseconds: 200),
    );

    _debounceExtraFilteredWorker = debounce(
      _deskListFiltered,
      updateExtraFiltered,
      time: const Duration(milliseconds: 200),
    );
  }

  @override
  void onClose() {
    _everAllFilterWorker?.dispose();
    _everAllFilterWorker = null;
    _everAllSelectionWorker?.dispose();
    _everAllSelectionWorker = null;
    _everAllListFilteredWorker?.dispose();
    _everAllListFilteredWorker = null;
    _debounceExtraFilteredWorker?.dispose();
    _debounceExtraFilteredWorker = null;

    reset();
    super.onClose();
  }

  reset() {
    _selectedRegionId.value = 0;
    _selectedTypeId.value = 0;
    _selectedIsAvailable.value = false;
    _selectedIsOccupied.value = false;
    _selectedIsLock.value = false;
    _selectedIsBuffet.value = false;
    _selectedIsNotBuffet.value = false;
    _selectedIsWait.value = false;
  }

  static const defaultRegionId = '0';
  static const defaultTypeId = '0';
  static const defaultStatusId = '0';

  List<DeskCategoryItemModel> get selectAllRegionList => [
        DeskCategoryItemModel(
          value: defaultRegionId,
          label: '全部'.tr,
        ),
      ];
  final RxSet<String> _selectedAllRegionIds = <String>{defaultRegionId}.obs;
  // ignore: invalid_use_of_protected_member
  Set<String> get selectedAllRegionIds => _selectedAllRegionIds.value;
  void onAllRegionSelectionChanged(Set<String> selected) async {
    if (selected.isEmpty) return;
    _selectedRegionIds.clear();
    _selectedAllRegionIds
      ..clear()
      ..add(defaultRegionId);
  }

  List<DeskCategoryItemModel> get selectRegionList => _deskRegions
      .map(
        (e) => DeskCategoryItemModel(
          value: '${e.uuid}',
          label: e.name,
        ),
      )
      .toList();
  final RxSet<String> _selectedRegionIds = <String>{}.obs;
  // ignore: invalid_use_of_protected_member
  Set<String> get selectedRegionIds => _selectedRegionIds.value;
  void onRegionSelectionChanged(Set<String> selected) async {
    if (selected.isEmpty) return;
    _selectedAllRegionIds.clear();
    _selectedRegionIds
      ..clear()
      ..addAll(selected);
  }

  List<DeskCategoryItemModel> get selectAllTypeList => [
        DeskCategoryItemModel(
          value: '0',
          label: '全部'.tr,
        ),
      ];
  final RxSet<String> _selectedAllTypeIds = <String>{'0'}.obs;
  // ignore: invalid_use_of_protected_member
  Set<String> get selectedAllTypeIds => _selectedAllTypeIds.value;
  void onAllTypeSelectionChanged(Set<String> selected) async {
    if (selected.isEmpty) return;
    _selectedTypeIds.clear();
    _selectedAllTypeIds
      ..clear()
      ..add(defaultTypeId);
  }

  List<DeskCategoryItemModel> get selectTypeList => _deskTypes
      .map(
        (e) => DeskCategoryItemModel(
          value: '${e.uuid}',
          label: e.name,
        ),
      )
      .toList();
  final RxSet<String> _selectedTypeIds = <String>{}.obs;
  // ignore: invalid_use_of_protected_member
  Set<String> get selectedTypeIds => _selectedTypeIds.value;
  void onTypeSelectionChanged(Set<String> selected) {
    if (selected.isEmpty) return;
    _selectedAllTypeIds.clear();
    _selectedTypeIds
      ..clear()
      ..addAll(selected);
  }

  List<DeskCategoryItemModel> get selectAllStatusList => [
        DeskCategoryItemModel(
          value: '0',
          label: '全部'.tr,
        ),
      ];
  final RxSet<String> _selectedAllStatusIds = <String>{'0'}.obs;
  // ignore: invalid_use_of_protected_member
  Set<String> get selectedAllStatusIds => _selectedAllStatusIds.value;
  void onAllStatusSelectionChanged(Set<String> selected) async {
    if (selected.isEmpty) return;
    _selectedStatusIds.clear();
    _selectedAllStatusIds
      ..clear()
      ..add(defaultStatusId);
  }

  List<DeskCategoryItemModel> get selectStatusList => [
        DeskCategoryItemModel(
          value: DeskStatusForView.available.asString,
          label: DeskStatusForView.available.label,
        ),
        DeskCategoryItemModel(
          value: DeskStatusForView.occupied.asString,
          label: DeskStatusForView.occupied.label,
        ),
        DeskCategoryItemModel(
          value: DeskStatusForView.lock.asString,
          label: DeskStatusForView.lock.label,
        ),
        DeskCategoryItemModel(
          value: DeskStatusForView.waiting.asString,
          label: DeskStatusForView.waiting.label,
        ),
        DeskCategoryItemModel(
          value: DeskStatusForView.buffet.asString,
          label: DeskStatusForView.buffet.label,
        ),
        DeskCategoryItemModel(
          value: DeskStatusForView.notBuffet.asString,
          label: DeskStatusForView.notBuffet.label,
        ),
      ];
  final RxSet<String> _selectedStatusIds = <String>{}.obs;
  // ignore: invalid_use_of_protected_member
  Set<String> get selectedStatusIds => _selectedStatusIds.value;
  void onStatusSelectionChanged(Set<String> selected) {
    if (selected.isEmpty) return;
    _selectedAllStatusIds.clear();
    _selectedStatusIds
      ..clear()
      ..addAll(selected);
  }

  void onSelectionChanged() {
    _selectedRegionId.value = selectedRegionIds.isNotEmpty ? (int.tryParse(selectedRegionIds.first) ?? 0) : 0;
    _selectedTypeId.value = selectedTypeIds.isNotEmpty ? (int.tryParse(selectedTypeIds.first) ?? 0) : 0;
    _selectedIsAvailable.value = selectedStatusIds.firstOrNull == DeskStatusForView.available.asString;
    _selectedIsOccupied.value = selectedStatusIds.firstOrNull == DeskStatusForView.occupied.asString;
    _selectedIsLock.value = selectedStatusIds.firstOrNull == DeskStatusForView.lock.asString;
    _selectedIsBuffet.value = selectedStatusIds.firstOrNull == DeskStatusForView.buffet.asString;
    _selectedIsNotBuffet.value = selectedStatusIds.firstOrNull == DeskStatusForView.notBuffet.asString;
    _selectedIsWait.value = selectedStatusIds.firstOrNull == DeskStatusForView.waiting.asString;
  }

  void updateListFiltered() {
    // _deskListFiltered.clear();

    _deskListFiltered.assignAll(
      _desks.where((e) {
        if (_filter.value.searchKeyword.isNotEmpty) {
          return e.deskNo.toLowerCase().contains(_filter.value.searchKeyword.toLowerCase());
        }
        if (_filter.value.selectedRegionId != 0 && e.regionUuid != _filter.value.selectedRegionId) {
          return false;
        }
        if (_filter.value.selectedTypeId != 0 && e.typeUuid != _filter.value.selectedTypeId) {
          return false;
        }
        if (_filter.value.isOccupied && !e.isNotAvailable) {
          return false;
        }
        if (_filter.value.isAvailable && !e.isAvailable) {
          return false;
        }
        if (_filter.value.isBuffet && !e.isBuffet) {
          return false;
        }
        if (_filter.value.isNotBuffet && !e.isNotBuffet) {
          return false;
        }
        if (_filter.value.isWait && !e.isWait) {
          return false;
        }
        if (_filter.value.isLock && !e.isLock) {
          return false;
        }
        return true;
      }).toList(),
    );
  }

  void updateExtraFiltered(List<Desk> list) {
    _deskExtraFiltered.value = Extra(
      availableNum: list.where((e) => e.isAvailable).length,
      lockNum: list.where((e) => e.isLock).length,
      occupyBuffetNum: list.where((e) => e.isBuffet).length,
      occupyNotBuffetNum: list.where((e) => e.isNotBuffet).length,
      occupyWaitNum: list.where((e) => e.isWait).length,
      totalNum: list.length,
    );
  }
}

class DeskFilter {
  final int selectedRegionId;
  final int selectedTypeId;
  final String searchKeyword;
  final bool isAvailable;
  final bool isOccupied;
  final bool isLock;
  final bool isBuffet;
  final bool isNotBuffet;
  final bool isWait;

  DeskFilter({
    required this.selectedRegionId,
    required this.selectedTypeId,
    required this.searchKeyword,
    required this.isAvailable,
    required this.isOccupied,
    required this.isLock,
    required this.isBuffet,
    required this.isNotBuffet,
    required this.isWait,
  });

  Map<String, dynamic> toJson() => {
        'selectedRegionId': selectedRegionId,
        'selectedTypeId': selectedTypeId,
        'searchKeyword': searchKeyword,
        'isAvailable': isAvailable,
        'isOccupied': isOccupied,
        'isLock': isLock,
        'isBuffet': isBuffet,
        'isNotBuffet': isNotBuffet,
        'isWait': isWait,
      };
}

enum DeskStatusForView {
  available,
  occupied,
  lock,
  waiting,
  buffet,
  notBuffet,
}

extension DeskStatusForViewExtension on DeskStatusForView {
  String get label {
    switch (this) {
      case DeskStatusForView.available:
        return '可用'.tr;
      case DeskStatusForView.occupied:
        return '占用'.tr;
      case DeskStatusForView.lock:
        return '锁单'.tr;
      case DeskStatusForView.waiting:
        return '待清台'.tr;
      case DeskStatusForView.buffet:
        return '自助餐'.tr;
      case DeskStatusForView.notBuffet:
        return '非自助餐'.tr;
    }
  }

  String get asString {
    switch (this) {
      case DeskStatusForView.available:
        return '100';
      case DeskStatusForView.occupied:
        return '200';
      case DeskStatusForView.lock:
        return '300';
      case DeskStatusForView.waiting:
        return '400';
      case DeskStatusForView.buffet:
        return '500';
      case DeskStatusForView.notBuffet:
        return '600';
    }
  }
}
