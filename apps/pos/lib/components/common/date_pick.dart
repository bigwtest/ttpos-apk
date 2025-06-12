// Flutter imports:
// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DatePick extends StatefulWidget {
  final double? width;
  final List<DateTime?> dialogCalendarPickerValue;
  final void Function(List<int>, List<DateTime?>)? onDateChanged;
  const DatePick({
    super.key,
    this.width = 235.0,
    required this.dialogCalendarPickerValue,
    this.onDateChanged,
  });

  @override
  State<DatePick> createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  // 记录选择的日期，用于初始化数据
  List<DateTime> _selectList = [];
  @override
  void initState() {
    super.initState();
    _selectList = widget.dialogCalendarPickerValue.whereType<DateTime>().toList();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: <Widget>[
        _buildCalendarDialogButton(context),
      ],
    );
  }

  // 选择日期
  Future<List<DateTime>?> _selectDateTime(BuildContext context, String type) async {
    final currentDateTime = DateTime.now();
    //
    return await showOmniDateTimeRangePicker(
      constraints: BoxConstraints(
        maxWidth: 480.0.scaleWidth,
        // maxHeight: 500.0.scaleHeight,
      ),
      context: context,
      is24HourMode: true,
      isShowSeconds: true,
      startInitialDate: _selectList.isNotEmpty ? _selectList[0] : currentDateTime,
      startLastDate: currentDateTime.subtract(Duration(minutes: 1)),
      endInitialDate: _selectList.isNotEmpty ? _selectList[1] : currentDateTime,
      endLastDate: currentDateTime,
      isForceEndDateAfterStartDate: true,
      defaultTab: widget.dialogCalendarPickerValue.isNotEmpty && type == 'end' ? DefaultTab.end : DefaultTab.start,
      onStartDateAfterEndDateError: () {
        DialogManager.showToast('开始时间不能大于结束时间'.tr);
      },
      theme: Theme.of(context).copyWith(
        textTheme: TextTheme(
          // 覆盖时间数值字体大小
          bodyLarge: TextStyle(fontSize: 18.0),
        ),
        colorScheme: ColorScheme.light(
          surface: Colors.white,
          primary: CustomTheme.primaryColor,
          secondary: CustomTheme.secondaryColor,
        ),
        tabBarTheme: TabBarTheme(
          dividerColor: CustomTheme.greyColor.shade300,
        ),
        dividerTheme: DividerThemeData(
          color: CustomTheme.secondaryColor.shade300,
        ),
      ),
    );
  }

  String? _removeZero(String? value) {
    if (value == null || value.isEmpty) return '';
    // 使用正则表达式匹配并替换秒后面的小数部分
    // 匹配格式如: 2025-04-24 17:48:37.297950
    final regex = RegExp(r'(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2})(\.\d+)?');
    final match = regex.firstMatch(value);
    if (match != null) {
      // 只返回不带小数部分的日期时间
      return match.group(1) ?? value;
    }
    return value;
  }

  List<int>? _timeChanged(List<DateTime?> timeValue) {
    List<int>? result = [0, 0];
    if (timeValue.length == 2) {
      // 时间范围：分别设置开始和结束时间
      result[0] = DateTime.parse(timeValue[0].toString()).millisecondsSinceEpoch ~/ 1000;
      result[1] = DateTime.parse(timeValue[1].toString()).millisecondsSinceEpoch ~/ 1000;
    } else {
      // 未选择时间：重置为0
      result = [0, 0];
    }
    return result;
  }

  _buildCalendarDialogButton(BuildContext context) {
    return Container(
      width: widget.width?.scaleWidth,
      height: 36.0.scaleHeight,
      padding: EdgeInsets.fromLTRB(12.0.scalePadding, 0, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: CustomTheme.secondaryColor.shade700,
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final dateTimeList = await _selectDateTime(context, 'start');
                        if (dateTimeList != null) {
                          _selectList = dateTimeList;
                          widget.onDateChanged!(_timeChanged(dateTimeList)!, dateTimeList);
                        }
                      },
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        widget.dialogCalendarPickerValue.isEmpty
                            ? '开始时间'.tr
                            : _removeZero(
                                widget.dialogCalendarPickerValue[0].toString(),
                              ).toString(),
                        style: TextStyle(
                          color: widget.dialogCalendarPickerValue.isNotEmpty
                              ? CustomTheme.secondaryColor
                              : CustomTheme.secondaryColor.shade50,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 24.0.scaleWidth,
                    height: 1,
                    color: CustomTheme.secondaryColor.shade700,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final dateTimeList = await _selectDateTime(context, 'end');
                        if (dateTimeList != null) {
                          _selectList = dateTimeList;
                          widget.onDateChanged!(_timeChanged(dateTimeList)!, dateTimeList);
                        }
                      },
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        widget.dialogCalendarPickerValue.isEmpty
                            ? '结束时间'.tr
                            : widget.dialogCalendarPickerValue.length > 1
                                ? _removeZero(
                                    widget.dialogCalendarPickerValue[1].toString(),
                                  ).toString()
                                : _removeZero(
                                    widget.dialogCalendarPickerValue[0].toString(),
                                  ).toString(),
                        style: TextStyle(
                          color: widget.dialogCalendarPickerValue.isNotEmpty
                              ? CustomTheme.secondaryColor
                              : CustomTheme.secondaryColor.shade50,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (widget.dialogCalendarPickerValue.isNotEmpty)
              IconButton(
                padding: EdgeInsets.zero,
                iconSize: 14.0.scaleWidth,
                icon: Icon(
                  Iconfont.clear1,
                  size: 14.0.scaleWidth,
                  color: CustomTheme.secondaryColor.shade600,
                ),
                onPressed: () {
                  _selectList = [];
                  widget.onDateChanged!([0, 0], []);
                },
              ),
            if (widget.dialogCalendarPickerValue.isEmpty)
              IconButton(
                padding: EdgeInsets.zero,
                iconSize: 14.0.scaleWidth,
                icon: Icon(
                  Iconfont.calendar,
                  size: 14.0.scaleWidth,
                  color: CustomTheme.secondaryColor.shade600,
                ),
                onPressed: () async {
                  final values = await _selectDateTime(context, 'end');
                  if (values != null) {
                    _selectList = values;
                    widget.onDateChanged!(_timeChanged(values)!, values);
                  }
                },
              ),
          ],
        ),
      ),
    );
  }
}
