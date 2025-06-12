// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// Project imports:
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

// 首先添加一个数据模型来存储列表项的数据
class SelectOption {
  final String? title;
  final dynamic value;
  final String? subtitle;
  final bool isSelected; // 添加选中状态
  final bool obscureText;

  const SelectOption({
    this.title,
    this.subtitle,
    this.value,
    this.isSelected = false, // 默认未选中
    this.obscureText = false,
  });
}

// 枚举类型定义弹出位置
enum OverlayPosition {
  top,
  bottom,
}

// 修改 SelectOverlay 类的参数
class SelectOverlay extends StatelessWidget {
  SelectOverlay({
    super.key,
    required this.offset,
    required this.size,
    this.width,
    this.maxHeight,
    this.padding,
    required this.options,
    required this.onItemSelected,
    required this.onTapOutside,
    this.onDelete, // 添加删除事件回调
    this.position = OverlayPosition.bottom, // 默认显示在下方
    this.showDeleteButton = true, // 添加控制删除按钮显示的参数
    this.showCheckIcon = false, // 添加控制选中图标显示的参数
    this.emptyText = '暂无数据', // 空状态文本
    this.empty,
    this.isLoading = false, // 新增参数
  });

  final Offset offset;
  final Size size;
  final double? width;
  final double? maxHeight;
  final double? padding;
  final List<SelectOption> options; // 修改类型
  final Function(SelectOption) onItemSelected; // 修改参数类型
  final VoidCallback onTapOutside;
  final Function(SelectOption)? onDelete; // 删除事件回调
  final OverlayPosition position; // 添加位置参数
  final bool showDeleteButton; // 新增参数
  final bool showCheckIcon; // 新增参数
  final String emptyText; // 空状态文本
  final Widget? empty;
  final bool isLoading;

  final FontSizeController _fontSizeController = Get.find<FontSizeController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: onTapOutside,
            behavior: HitTestBehavior.translucent,
            child: Container(color: Colors.transparent),
          ),
        ),
        Positioned(
          // 根据 position 参数决定显示位置
          top: position == OverlayPosition.bottom ? offset.dy + size.height + 5 : null,
          bottom: position == OverlayPosition.top ? MediaQuery.of(context).size.height - offset.dy + 5 : null,
          left: _fontSizeController.currentFontSize == 16.0
              ? offset.dx + 1
              : _fontSizeController.currentFontSize == 20.0
                  ? offset.dx - 32
                  : offset.dx - 68,
          width: width?.scaleWidth ?? size.width.scaleWidth,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: maxHeight ?? 140.0.scaleHeight,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 15,
                  spreadRadius: -3,
                  color: Color.fromRGBO(0, 0, 0, 0.10),
                ),
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 6,
                  spreadRadius: -2,
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                ),
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 1,
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                ),
              ],
            ),
            child: ClipRRect(
              // 添加 ClipRRect 来裁剪内容
              borderRadius: BorderRadius.circular(8.0),
              child: Material(
                color: Colors.white,
                child: isLoading
                    ? _buildLoading()
                    : options.isEmpty
                        ? _buildEmpty()
                        : ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: options.length,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                onItemSelected(options[index]);
                                Get.back();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: padding ?? 14.74,
                                ),
                                // 移除这里的背景色，改为使用 InkWell 的 hoverColor
                                color: options[index].isSelected ? CustomTheme.primaryColor.shade50 : Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        spacing: 2.0,
                                        children: [
                                          Text(
                                            options[index].title ?? '',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: CustomTheme.secondaryColor,
                                            ),
                                          ),
                                          if (options[index].subtitle != null) ...[
                                            Text(
                                              options[index].subtitle!,
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: CustomTheme.greyColor,
                                                fontFamily: options[index].obscureText
                                                    ? GoogleFonts.notoSans().fontFamily
                                                    : null,
                                              ),
                                            ),
                                          ],
                                        ],
                                      ),
                                    ),
                                    if (showDeleteButton) // 根据参数控制删除按钮的显示
                                      Container(
                                        width: 16.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          // 根据选中状态改变背景色
                                          color: options[index].isSelected
                                              ? CustomTheme.primaryColor.shade600
                                              : CustomTheme.secondaryColor.shade300,
                                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            onDelete?.call(options[index]);
                                            Get.back();
                                          }, // 调用删除回调
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          icon: Icon(
                                            Iconfont.close,
                                            size: 8.0,
                                            // 根据选中状态改变图标颜色
                                            color: options[index].isSelected ? Colors.white : CustomTheme.greyColor,
                                          ),
                                        ),
                                      ),
                                    if (showCheckIcon && options[index].isSelected)
                                      Icon(
                                        Iconfont.success,
                                        size: 16.0,
                                        color: CustomTheme.primaryColor.shade600,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoading() {
    return Center(
      child: SizedBox(
        width: 16.0,
        height: 16.0,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: CustomTheme.primaryColor.shade600,
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    if (empty != null) {
      return empty!;
    }
    return Center(
      child: Text(
        emptyText,
        style: TextStyle(
          fontSize: 12.0,
          color: CustomTheme.greyColor,
        ),
      ),
    );
  }
}
