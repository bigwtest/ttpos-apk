// Flutter imports:
// Package imports:
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SelectComponents extends StatefulWidget {
  final String? hintText;
  final double width;
  final double height;
  final List<int> initialValue;
  final List<Map<String, dynamic>> selectList;
  final Function(List<int>)? onChanged;

  const SelectComponents({
    super.key,
    this.hintText = '请选择',
    this.width = 110.0,
    this.height = 36.0,
    required this.initialValue,
    this.selectList = const [],
    this.onChanged,
  });

  @override
  State<SelectComponents> createState() => _SelectComponentsState();
}

class _SelectComponentsState extends State<SelectComponents> {
  late List<int> value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  void didUpdateWidget(SelectComponents oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      value = widget.initialValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width.scaleWidth,
      height: widget.height.scaleHeight,
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
      ),
      child: Center(
        child: DropdownSearch<Map<String, dynamic>>(
          items: (f, cs) => widget.selectList,
          compareFn: (item1, item2) => item1['value'] == item2['value'],
          onChanged: (newValue) {
            setState(() {
              if (value.contains(newValue?['value']) && value.length > 1) {
                value.remove(newValue?['value']);
              } else if (!value.contains(newValue?['value'])) {
                value.add(newValue?['value']);
              }
            });
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          // selectedItem: selectedValue[0]['label'] ?? 1,
          suffixProps: DropdownSuffixProps(
            dropdownButtonProps: DropdownButtonProps(
              iconOpened: Icon(
                Iconfont.arrowDown,
                size: 16.0.scaleWidth,
              ),
              iconClosed: Icon(
                Iconfont.arrowDown,
                size: 16.0.scaleWidth,
              ),
              isVisible: true, //这个可以控制下拉显示隐藏
            ),
          ),
          decoratorProps: DropDownDecoratorProps(
            baseStyle: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 12.0,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 12.0.scalePadding,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
            ),
          ),
          dropdownBuilder: (context, selectedItem) {
            return Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: Text(
                    value.length == 1
                        ? widget.selectList
                            .where((item) => value.contains(item['value']))
                            .map((item) => item['label'])
                            .join(', ')
                        : widget.selectList[0]['label'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            );
          },
          popupProps: PopupProps.menu(
            fit: FlexFit.loose,
            itemBuilder: (context, item, isDisabled, isSelected) {
              return ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                minTileHeight: 42.0.scaleHeight,
                title: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        item['label'] ?? '',
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (value.contains(item['value']))
                      SizedBox(
                        width: 14.0.scaleWidth,
                        child: Icon(
                          Iconfont.success,
                          color: CustomTheme.primaryColor.shade600,
                          size: 14.0.scaleWidth,
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
