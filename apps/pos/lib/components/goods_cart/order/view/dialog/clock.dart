// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/buffet/buffet_delay_api.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

/// 价格项模型
class ClockPriceItem {
  /// 构造函数
  ClockPriceItem({
    required this.id,
    required this.text,
    required this.price,
  });

  /// ID
  final int id;

  /// 显示文本
  final String text;

  /// 价格
  final String price;
}

/// 加钟对话框组件
class ClockDialogView extends StatefulWidget {
  final Future<bool> Function(List<int> ids)? onConfirm;

  const ClockDialogView({
    super.key,
    this.onConfirm,
    required this.priceItems,
  });

  /// 价格项列表
  final List<ClockPriceItem>? priceItems;

  @override
  State<ClockDialogView> createState() => _ClockDialogViewState();
}

class _ClockDialogViewState extends State<ClockDialogView> {
  final TextEditingController _countController = TextEditingController(text: '1');
  final RxBool _isLoading = false.obs;
  final RxList<int> _selectedIds = <int>[].obs;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0.scaleWidth,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 标题
          Text(
            '加钟'.tr,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),

          // 价格项列表
          if (widget.priceItems != null && widget.priceItems!.isNotEmpty) ...[
            // 使用固定高度的容器包裹滑动视图
            Container(
              constraints: BoxConstraints(
                maxHeight: 5 * 60.0, // 假设每个项目大约60像素高
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: widget.priceItems!.map((item) {
                    return Column(
                      children: [
                        _buildPriceItem(item),
                        if (item != widget.priceItems!.last) const SizedBox(height: 10),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ] else ...[
            // 无数据提示
            Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '暂无加钟数据'.tr,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],

          // 按钮区域
          Row(
            children: [
              // 取消按钮
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Get.back(),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: CustomTheme.greyColor.shade400,
                      width: 0.8,
                    ), // 添加边框
                    minimumSize: Size(
                      double.infinity,
                      40.0.scaleHeight,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                  ),
                  child: Text(
                    '取消'.tr,
                    style: TextStyle(
                      color: CustomTheme.greyColor.shade900,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // 确定按钮
              Expanded(
                child: Obx(
                  () => ElevatedButton(
                    onPressed: (_isLoading.value || widget.onConfirm == null || _selectedIds.isEmpty)
                        ? null // 禁用按钮
                        : () async {
                            _isLoading.value = true;
                            try {
                              final result = await widget.onConfirm!(_selectedIds);
                              if (result) {
                                Get.back();
                              }
                            } finally {
                              _isLoading.value = false;
                            }
                          },
                    style: TextButton.styleFrom(
                      backgroundColor: _selectedIds.isEmpty
                          ? Colors.grey.shade600 // 未选择时显示灰色
                          : CustomTheme.primaryColor,
                      minimumSize: Size(
                        double.infinity,
                        40.0.scaleHeight,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                      // 禁用时的样式
                      disabledBackgroundColor: Colors.grey.shade300,
                      disabledForegroundColor: Colors.grey.shade900,
                    ),
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (_isLoading.value)
                            Padding(
                              padding: EdgeInsets.only(right: 6.0.scalePadding),
                              child: SizedBox(
                                width: 14.0.scaleWidth,
                                height: 14.0.scaleHeight,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    CustomTheme.greyColor.shade300,
                                  ),
                                ),
                              ),
                            ),
                          Text(
                            '确定'.tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 构建价格项
  Widget _buildPriceItem(ClockPriceItem item) {
    // 将item.id转换为int
    final itemId = item.id;
    return InkWell(
      onTap: () {
        if (_selectedIds.contains(itemId)) {
          _selectedIds.remove(itemId);
        } else {
          _selectedIds.add(itemId);
        }
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: _selectedIds.contains(itemId) ? CustomTheme.primaryColor.shade300 : Colors.white, // 黄色背景
            border: Border.all(
              color: _selectedIds.contains(itemId) ? CustomTheme.primaryColor.shade300 : Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // 确保左右对齐
            children: [
              // 左侧文本
              Expanded(
                child: Text(
                  item.text,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8), // 添加间距
              // 右侧价格 - 不使用Expanded确保不会被压缩
              Container(
                constraints: const BoxConstraints(minWidth: 40), // 设置最小宽度
                child: Row(
                  mainAxisSize: MainAxisSize.min, // 使用最小宽度
                  mainAxisAlignment: MainAxisAlignment.end, // 右对齐
                  children: [
                    Text(
                      item.price.primaryCurrency,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      item.price.secondaryCurrency,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 显示加钟对话框
Future<void> showClockDialog({
  required Future<bool> Function(List<int> ids)? onConfirm,
}) async {
  final delayList = await BuffetDelayAPI().getBuffetDelayList(
    options: ExtraRequestOptions(
      showGlobalLoading: true,
      showFailToast: true,
    ),
  );
  if (delayList == null) {
    return;
  }
  // 将 delayList 转换为 priceItems
  final priceItems = delayList.list.map((delay) {
    return ClockPriceItem(
      id: delay.uuid,
      text: delay.name,
      price: delay.price.value.toString(),
    );
  }).toList();

  await Get.dialog(
    DismissKeyboardDialog(
      child: ClockDialogView(
        onConfirm: onConfirm,
        priceItems: priceItems,
      ),
    ),
    barrierDismissible: false,
  );
}
