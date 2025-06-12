import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TtSelect extends StatefulWidget {
  final double width;
  final double height;
  final BoxConstraints constraints;
  final bool isDisabled;
  final String? hintText;
  final FocusNode? focusNode;
  final dynamic value;
  final List<Map<String, dynamic>> selectList;
  final bool clearIcon;
  final Function(Map<String, dynamic>? val)? onChanged;
  final double fontSize;
  const TtSelect({
    super.key,
    this.height = 36.0,
    this.constraints = const BoxConstraints(
      maxHeight: 200.0,
    ),
    this.width = double.infinity,
    this.isDisabled = false,
    this.hintText,
    this.focusNode,
    this.value = '',
    this.selectList = const [],
    this.clearIcon = false,
    this.onChanged,
    this.fontSize = 12.0,
  });

  @override
  State<TtSelect> createState() => _TtSelectState();
}

class _TtSelectState extends State<TtSelect> with WidgetsBindingObserver {
  final FontSizeController _fontSizeController = Get.find<FontSizeController>();
  Map<String, dynamic> _selectedValue = {};
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    _findItem();
    //
    WidgetsBinding.instance.addObserver(this);
    //
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    // 当窗口尺寸变化时调用此方法
    final bottomInset = View.of(context).viewInsets.bottom;
    final newValue = bottomInset > 0.0;

    if (_isKeyboardVisible != newValue) {
      _isKeyboardVisible = newValue;
    }
  }

  @override
  void didUpdateWidget(TtSelect oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.value 或 selectList 发生变化时都更新选中值
    if (_selectedValue['value'] != widget.value || oldWidget.selectList != widget.selectList) {
      _findItem();
    }
  }

  void _findItem() {
    final Map<String, dynamic>? item = widget.selectList.firstWhereOrNull((item) => item['value'] == widget.value);
    if (item != null) {
      setState(() {
        _selectedValue = item;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: DropdownSearch<Map<String, dynamic>>(
        enabled: !widget.isDisabled,
        items: (f, cs) => widget.selectList,
        compareFn: (item1, item2) => item1['value'] == item2['value'],
        onChanged: (item) {
          if (widget.onChanged != null) {
            widget.onChanged!(item);
          }
          setState(() {
            _selectedValue = item ?? {};
          });
        },
        suffixProps: DropdownSuffixProps(
          clearButtonProps: ClearButtonProps(
            icon: Icon(
              Iconfont.clear1,
              size: 24.0.scaleWidth,
            ),
            isVisible: _selectedValue.isNotEmpty && widget.clearIcon,
          ),
          dropdownButtonProps: DropdownButtonProps(
            iconOpened: Transform.rotate(
              angle: 3.14159, // 180度旋转 (π弧度)
              child: Icon(
                Iconfont.arrowDown,
                size: 16.0.scaleWidth,
              ),
            ),
            iconClosed: Icon(
              Iconfont.arrowDown,
              size: 16.0.scaleWidth,
            ),
            isVisible: _selectedValue.isEmpty || !widget.clearIcon ? true : false, //这个可以控制下拉显示隐藏
          ),
        ),
        decoratorProps: DropDownDecoratorProps(
          baseStyle: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 12.0,
          ),
          decoration: InputDecoration(
            filled: true, // Add this
            fillColor: !widget.isDisabled ? Colors.white : Color(0x7BE8EAEB), // Add this
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.0.scalePadding,
              vertical: _fontSizeController.currentFontSize != 24
                  ? 8.0.scalePadding
                  : widget.height == 36.0.scaleHeight
                      ? 10.0.scalePadding
                      : 12.0.scalePadding,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: CustomTheme.secondaryColor.shade700),
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomTheme.primaryColor.shade600,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomTheme.secondaryColor.shade700,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
              borderSide: BorderSide(
                color: CustomTheme.secondaryColor.shade300,
                width: 1,
              ),
            ),
          ),
        ),
        selectedItem: _selectedValue,
        dropdownBuilder: (context, selectedItem) {
          return Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Text(
                  selectedItem == null || selectedItem.isEmpty ? (widget.hintText ?? '请选择'.tr) : selectedItem['label'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: !(selectedItem == null || selectedItem.isEmpty)
                        ? CustomTheme.secondaryColor
                        : CustomTheme.secondaryColor.shade50,
                    fontSize: widget.fontSize,
                  ),
                ),
              ),
            ],
          );
        },
        onBeforePopupOpening: (selectedItem) {
          if (_isKeyboardVisible) {
            // 关闭键盘
            FocusScope.of(context).requestFocus(FocusNode());
            //
            return Future.value(false);
          }
          return Future.value(true);
        },
        popupProps: PopupProps.menu(
          emptyBuilder: (context, searchEntry) {
            return Center(
              child: const TtEmpty(
                imgWidth: 80.0,
              ),
            );
          },
          fit: FlexFit.loose,
          constraints: widget.constraints,
          itemBuilder: (context, item, isDisabled, isSelected) {
            return Container(
              height: widget.height,
              padding: EdgeInsets.symmetric(
                horizontal: 10.0.scalePadding,
              ),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item['label'],
                      style: TextStyle(
                        color: _selectedValue['value'] == item['value']
                            ? CustomTheme.primaryColor
                            : CustomTheme.secondaryColor,
                        fontSize: widget.fontSize,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (_selectedValue['value'] == item['value'])
                    SizedBox(
                      width: 14.0,
                      child: Icon(
                        Iconfont.success,
                        color: CustomTheme.primaryColor,
                        size: 14,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
