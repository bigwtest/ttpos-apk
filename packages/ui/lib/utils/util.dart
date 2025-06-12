import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';

class Util {
  // 验证并格式化数字输入
  static String? validateNumberInput(String currentText, String value, {double? maxValue = globalMaxAmount}) {
    String newValue = currentText;

    // 处理小数点
    if (value == '.') {
      if (currentText.isEmpty) {
        return '0.';
      } else if (!currentText.contains('.')) {
        return '$currentText.';
      }
      return currentText;
    }

    // 处理数字
    if (currentText.isEmpty && (value == '0' || value == '00')) {
      return '0';
    } else if (currentText == '0' && (value == '0' || value == '00')) {
      return currentText;
    } else if (currentText == '0' && value != '.') {
      newValue = value;
    } else {
      // 检查是否已经有小数点，且小数点后的位数是否超过2位
      final parts = currentText.split('.');
      if (parts.length > 1 && parts[1].length >= 2) {
        return currentText;
      }
      newValue = currentText + value;
    }

    // 验证新值是否为有效的浮点数
    final doubleValue = double.tryParse(newValue) ?? 0;

    // 检查是否超过最大值限制
    if (maxValue != null && doubleValue > maxValue) {
      return maxValue.toCleanString;
    }

    return newValue;
  }
}
