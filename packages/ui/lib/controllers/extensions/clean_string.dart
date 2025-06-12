extension CleanStringExtension on double {
  /// 将 double 转换为干净的字符串表示，去除不必要的小数点和尾随零
  String get toCleanString {
    // 处理特殊情况
    if (isNaN) return 'NaN';
    if (isInfinite) return isNegative ? '-∞' : '∞';

    // 先转换为固定两位小数的字符串
    String result = toStringAsFixed(2);

    // 如果不包含小数点，直接返回
    if (!result.contains('.')) {
      return result;
    }

    // 使用正则表达式一次性去除尾随零和小数点
    return result.replaceAll(RegExp(r'\.?0*$'), '');
  }
}

/// 为 int 类型添加 toCleanString 扩展
extension CleanStringIntExtension on int {
  /// 将 int 转换为字符串表示
  String get toCleanString => toString();
}

/// 为 String 类型添加 toCleanString 扩展
extension CleanStringStringExtension on String {
  /// 尝试将字符串转换为数字并应用 toCleanString，
  /// 如果无法转换则返回原字符串
  String get toCleanString {
    // 尝试解析为 double
    double? doubleValue = double.tryParse(this);
    if (doubleValue != null) {
      return doubleValue.toCleanString;
    }

    // 尝试解析为 int
    int? intValue = int.tryParse(this);
    if (intValue != null) {
      return intValue.toString();
    }

    // 无法解析为数字，返回原字符串
    return this;
  }
}

/// 通用的 toCleanString 函数，可以处理 int、double 和 String 类型
String toCleanString(dynamic value) {
  if (value is double) {
    return value.toCleanString;
  } else if (value is int) {
    return value.toCleanString;
  } else if (value is String) {
    return value.toCleanString;
  }
  return value?.toString() ?? '';
}
