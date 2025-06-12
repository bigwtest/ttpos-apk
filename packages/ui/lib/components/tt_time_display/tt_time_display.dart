import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:ttpos_ui/theme/theme.dart';

class TtTimeDisplay extends StatefulWidget {
  final Color fontColor;
  final String countryCode;
  final String timeZone;
  const TtTimeDisplay({
    super.key,
    this.fontColor = CustomTheme.secondaryColor, // 默认灰色
    this.countryCode = 'en_US', // 默认英文
    this.timeZone = 'Asia/Shanghai', // 默认上海时区
  });

  @override
  State<TtTimeDisplay> createState() => _TtTimeDisplayState();
}

class _TtTimeDisplayState extends State<TtTimeDisplay> {
  //
  String _time = '';
  String _date = '';
  String _weekday = '';
  Timer? _timer;

  @override
  void initState() {
    _initTimeZone();
    _initDateFormat();
    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTime());
    //
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    //
    super.dispose();
  }

  Future<void> _initTimeZone() async {
    try {
      tz.initializeTimeZones();
    } catch (error, stackTrace) {
      debugPrint('初始化时区失败: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<void> _initDateFormat() async {
    try {
      await initializeDateFormatting(
        widget.countryCode,
        '',
      );
    } catch (error, stackTrace) {
      debugPrint('初始化日期格式化失败: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  void _updateTime() {
    try {
      final now = DateTime.now();
      final location = tz.getLocation(widget.timeZone);
      final tzNow = tz.TZDateTime.from(now, location);

      setState(() {
        _time = DateFormat('HH:mm', widget.countryCode).format(tzNow);
        _date = DateFormat('MM-dd', widget.countryCode).format(tzNow);
        _weekday = _getWeekDay(tzNow.weekday);
      });
    } catch (error, stackTrace) {
      debugPrint('更新时间失败: timeZone:${widget.timeZone} countryCode:${widget.countryCode} $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  String _getWeekDay(int day) {
    const weeks = ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];
    // 英文星期
    // const weeks = [
    //   'Monday',
    //   'Tuesday',
    //   'Wednesday',
    //   'Thursday',
    //   'Friday',
    //   'Saturday',
    //   'Sunday'
    // ];
    return weeks[day - 1].tr;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.0,
      children: [
        Text(
          _time,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: widget.fontColor,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _date,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
                color: widget.fontColor,
              ),
            ),
            Text(
              _weekday,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
                color: widget.fontColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
