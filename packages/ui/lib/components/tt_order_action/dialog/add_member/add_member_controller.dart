import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/member/request/add_member.dart';
import 'package:ttpos_model/member/response/member_level.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class AddMemberController extends GetxController {
  final Future<List<ResponseMemberLevel>> Function()? fetchMemberLevelList;
  final Future<bool> Function(RequestAddMember data)? fetchConfirm;
  AddMemberController({
    this.fetchMemberLevelList,
    this.fetchConfirm,
  });
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  //
  final RxList<ResponseMemberLevel> _memberLevelList = <ResponseMemberLevel>[].obs;
  List<ResponseMemberLevel> get memberLevelList => _memberLevelList;
  set memberLevelList(List<ResponseMemberLevel> value) {
    _memberLevelList.assignAll(value);
    // 缓存
    _cachedMemberLevelList = value;
  }

  // 缓存列表
  static List<ResponseMemberLevel> _cachedMemberLevelList = [];

  //
  final Rx<RequestAddMember> formData = RequestAddMember.empty().obs;

  @override
  void onInit() {
    // 如果有缓存数据，直接使用
    if (_cachedMemberLevelList.isNotEmpty) {
      memberLevelList = _cachedMemberLevelList;
    }
    //
    loadMemberLevelList();
    //
    super.onInit();
  }

  // @override
  // void onClose() {
  //   //
  //   super.onClose();
  // }

  void handleConfirm() async {
    if (isLoading) return;
    try {
      _isLoading.value = true;
      if (formData.value.nickname.isEmpty) {
        DialogManager.showToast('请输入昵称'.tr);
        return;
      }
      if (formData.value.phone.isEmpty) {
        DialogManager.showToast('请输入手机号'.tr);
        return;
      }
      // if (formData.value.password.isEmpty) {
      //   DialogManager.showToast('请输入密码'.tr);
      //   return;
      // }
      if (formData.value.levelUuid == 0) {
        DialogManager.showToast('请选择会员等级'.tr);
        return;
      }
      //
      final res = await fetchConfirm?.call(formData.value);
      if (res == null || !res) return;
      //
      Get.back();
    } catch (error, stackTrace) {
      _logger.severe('handleConfirm Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  // 加载接口
  Future<void> loadMemberLevelList() async {
    try {
      final list = await fetchMemberLevelList?.call();
      if (list != null && list.isNotEmpty) {
        formData.update((val) {
          val?.levelUuid = list[0].uuid ?? 0;
        });
      }
      // 赋值
      memberLevelList = list ?? [];
    } catch (error, stackTrace) {
      _logger.severe('loadMemberLevelList Error:', error, stackTrace);
    }
  }
}
