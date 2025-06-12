import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/payment/request/member.dart';
import 'package:ttpos_model/payment/response/member.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/select_overlay.dart';

class MemberPickController extends GetxController {
  // 搜索事件方法
  final Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) onSearch;
  // 获取会员折扣
  final Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      onGetMemberDiscount;
  // 金额
  final double amount;
  // 销售单UUID
  final int saleBillUuid;
  // 销售订单UUID
  final int saleOrderUuid;

  MemberPickController({
    required this.onSearch,
    required this.onGetMemberDiscount,
    required this.amount,
    required this.saleBillUuid,
    required this.saleOrderUuid,
  });

  final Rx<MemberDiscount?> _currentMemberDiscount = Rx<MemberDiscount?>(null);
  MemberDiscount? get currentMemberDiscount => _currentMemberDiscount.value;
  String get currentMemberDiscountMemberNickname => currentMemberDiscount?.member.nickname ?? '-';
  String get currentMemberDiscountMemberLevelName {
    final cardName = currentMemberDiscount?.member.card.name ?? '-';
    final levelName = currentMemberDiscount?.member.level.name ?? '-';
    return '${cardName.isEmpty ? '-' : cardName}/${levelName.isEmpty ? '-' : levelName}';
  }

  String get currentMemberDiscountMemberBalance => currentMemberDiscount?.member.balance.toSafetyString() ?? '0';
  String get currentMemberDiscountMemberPoints => currentMemberDiscount?.member.points.toSafetyString() ?? '0';

  final RxList<SearchMember> _searchMemberList = <SearchMember>[].obs;
  List<SearchMember> get searchMemberList => _searchMemberList;

  double get discountAmount => (currentMemberDiscount?.discountedPrice.toSafetyDouble() ?? 0.0);

  final Rx<String> _keyword = ''.obs;
  String get keyword => _keyword.value;

  void onKeywordChanged(String? value) {
    _keyword.value = value ?? '';
  }

  final Rx<bool> _isSearchingMember = false.obs;
  bool get isSearchingMember => _isSearchingMember.value;

  // 搜索会员
  Future<void> _searchMember(String keyword) async {
    if (keyword.isEmpty) {
      _searchMemberList.clear();
      return;
    }
    if (isSearchingMember) return;
    try {
      _isSearchingMember.value = true;
      final result = await onSearch(keyword);
      _searchMemberList.value = result?.list ?? [];
    } catch (error, stackTrace) {
      debugPrint('searchMember Error: $error\n$stackTrace');
    } finally {
      _isSearchingMember.value = false;
    }
  }

  // 搜索会员
  Future<void> searchMember(String keyword, {GlobalKey? inputFieldKey}) async {
    _searchMember(keyword);
    _showSelectOverlay(inputFieldKey ?? GlobalKey());
  }

  // 获取会员折扣
  Future<void> _getMemberDiscount(RequestGetMemberDiscount query) async {
    final result = await onGetMemberDiscount(
      query: query,
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );
    _currentMemberDiscount.value = result;
  }

  // 显示会员下拉框
  void _showSelectOverlay(GlobalKey inputFieldKey) async {
    // 获取 overlay 上下文
    final BuildContext? context = Get.overlayContext;
    if (context == null) return;

    // 通过 GlobalKey 获取输入框的 RenderBox
    final RenderBox? inputBox = inputFieldKey.currentContext?.findRenderObject() as RenderBox?;
    if (inputBox == null) return;

    final offset = inputBox.localToGlobal(Offset.zero);
    final size = inputBox.size;

    // 创建一个ValueNotifier来监听位置变化
    final ValueNotifier<Offset> offsetNotifier = ValueNotifier<Offset>(offset);

    // 添加MediaQuery监听器
    void updateOverlayPosition() {
      // 使用microtask确保在布局完成后更新位置
      Future.microtask(() {
        // 添加延迟，确保UI完全渲染
        Future.delayed(Duration(milliseconds: 100), () {
          if (inputFieldKey.currentContext != null) {
            final RenderBox box = inputFieldKey.currentContext!.findRenderObject() as RenderBox;
            offsetNotifier.value = box.localToGlobal(Offset.zero);
          }
        });
      });
    }

    // 创建一个监听器
    final WidgetsBinding binding = WidgetsBinding.instance;
    final observer = _MediaQueryObserver(updateOverlayPosition);
    binding.addObserver(observer);

    // 确保在对话框关闭时清理监听器
    void cleanupObserver() {
      binding.removeObserver(observer);
      offsetNotifier.dispose();
    }

    // 使用 Get.overlay 插入 overlay
    Get.dialog<int>(
      ValueListenableBuilder(
        valueListenable: offsetNotifier,
        builder: (context, currentOffset, child) {
          return Obx(
            () => SelectOverlay(
              offset: currentOffset,
              size: size,
              options: searchMemberList
                  .map((e) => SelectOption(title: '${e.phone} (${e.nickname})', value: e.uuid))
                  .toList(),
              showDeleteButton: false,
              isLoading: isSearchingMember,
              onItemSelected: (selectedOption) {
                _keyword.value =
                    searchMemberList.firstWhereOrNull((item) => item.uuid == selectedOption.value)?.phone ?? '';
                _getMemberDiscount(
                  RequestGetMemberDiscount(
                    saleBillUuid: saleBillUuid,
                    saleOrderUuid: saleOrderUuid,
                    memberUuid: selectedOption.value,
                  ),
                );
              },
              empty: EmptyDataView(),
              onTapOutside: () => Get.back(),
            ),
          );
        },
      ),
      barrierColor: Colors.transparent,
    ).whenComplete(cleanupObserver); // 使用 whenComplete 确保在对话框关闭时清理监听器
  }

  // 获取会员折扣
  Future<void> getMemberDiscount(RequestGetMemberDiscount query) async {
    await _getMemberDiscount(query);
  }

  Future<void> onClearKeywordTap() async {
    _keyword.value = '';
  }

  Future<void> onKeywordNumberTap(String value) async {
    _keyword.value = _keyword.value + value;
  }
}

// 创建一个MediaQuery观察者
class _MediaQueryObserver extends WidgetsBindingObserver {
  final VoidCallback onMetricsChanged;

  _MediaQueryObserver(this.onMetricsChanged);

  @override
  void didChangeMetrics() {
    onMetricsChanged();
  }
}
