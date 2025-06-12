import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/desk/response/list/list.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class DeskSelectUuidController extends GetxController {
  final bool multiple; // 是否多选
  final int? hideUuid; // 需要隐藏那个桌台ID
  final Future<DeskList?> Function({MetaRequest? meta})? fetchDeskList; // 请求桌台列表接口
  final Future<bool> Function(List<int> data, {Desk? desk})? fetchConfirm; // 确认按钮接口

  final bool isAllowEmpty; // 是否允许空选

  DeskSelectUuidController({
    this.multiple = true,
    this.hideUuid,
    this.fetchDeskList,
    this.fetchConfirm,
    this.isAllowEmpty = false,
  });

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 加载桌台列表状态
  final RxBool _isDeskLoading = false.obs;
  bool get isDeskLoading => _isDeskLoading.value;

  // 桌台列表
  final RxList<Desk> _deskList = <Desk>[].obs;
  List<Desk> get deskList => _deskList;
  set deskList(List<Desk> value) {
    _deskList.assignAll(value);
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 选中的ID
  final RxList<int> _uuids = <int>[].obs;
  List<int> get uuids => _uuids;
  set uuids(List<int> value) {
    _uuids.assignAll(value);
  }

  @override
  void onInit() {
    loadDeskList();
    super.onInit();
  }

  // 加载接口
  Future<void> loadDeskList() async {
    try {
      _isDeskLoading.value = true;
      final res = await fetchDeskList?.call(meta: MetaRequest(pageNo: 1, pageSize: 1000));
      // 赋值，查询排除某个桌台ID
      if (hideUuid != null) {
        deskList = (res?.list ?? []).where((item) => item.uuid != hideUuid).toList();
      } else {
        deskList = res?.list ?? [];
      }
    } catch (error, stackTrace) {
      _logger.severe('loadDeskList Error:', error, stackTrace);
    } finally {
      _isDeskLoading.value = false;
    }
  }

  void handleConfirm() async {
    if (isLoading) return;
    try {
      _isLoading.value = true;
      if (uuids.isEmpty) {
        if (isAllowEmpty) {
          //根据uuid获取desk
          final res = await fetchConfirm?.call(uuids);
          if (res == null || !res) return;
          //
          Get.back();
          return;
        }

        DialogManager.showToast('请选择桌台'.tr);
        return;
      }
      //
      final desk = deskList.firstWhere((item) => item.uuid == uuids.first);

      final res = await fetchConfirm?.call(uuids, desk: desk);
      if (res == null || !res) return;
      //
      Get.back();
    } catch (error, stackTrace) {
      _logger.severe('handleConfirm Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  void handleSelectUuid(int uuid) {
    final index = _uuids.indexWhere((item) => item == uuid);
    if (multiple) {
      // 多选模式
      if (index != -1) {
        _uuids.removeAt(index);
      } else {
        _uuids.add(uuid);
      }
    } else {
      // 单选模式
      if (_uuids.isNotEmpty && _uuids[0] == uuid) {
        return;
      }
      // 覆盖模式
      _uuids.assignAll([uuid]);
    }
  }

  void reset() {
    uuids.clear();
  }
}
