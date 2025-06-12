import 'package:freezed_annotation/freezed_annotation.dart';

part 'safety_number.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class SafetyNumber with _$SafetyNumber {
  const factory SafetyNumber.string(String value) = StringSafetyNumber;
  const factory SafetyNumber.double(double value) = DoubleSafetyNumber;
  const factory SafetyNumber.int(int value) = IntSafetyNumber;

  // 工厂构造函数，直接处理不同类型的输入
  factory SafetyNumber.fromJson(dynamic value) {
    if (value == null) return SafetyNumber.string('0');

    if (value is String) {
      return SafetyNumber.string(value);
    } else if (value is double) {
      return SafetyNumber.string(value.toString());
    } else if (value is int) {
      return SafetyNumber.string(value.toString());
    } else {
      return SafetyNumber.string('0');
    }
  }

  const SafetyNumber._();

  static const zero = SafetyNumber.string('0');

  String toJson() {
    return when(
      string: (value) => value,
      double: (value) => value.toString(),
      int: (value) => value.toString(),
    );
  }

  double toSafetyDouble() {
    return when(
      string: (value) => double.tryParse(value) ?? 0,
      double: (value) => value,
      int: (value) => value.toDouble(),
    );
  }

  String toSafetyString() {
    return when(
      string: (value) => double.tryParse(value) != null ? value : '',
      double: (value) => value.toString(),
      int: (value) => value.toString(),
    );
  }

  int toSafetyInt() {
    return when(
      string: (value) => int.tryParse(value) ?? 0,
      double: (value) => value.toInt(),
      int: (value) => value,
    );
  }

  @override
  String toString() {
    return toJson();
  }
}

// 添加 SafetyNumber 的转换器
class SafetyNumberConverter implements JsonConverter<SafetyNumber?, dynamic> {
  const SafetyNumberConverter();

  @override
  SafetyNumber fromJson(dynamic json) {
    if (json == null) return SafetyNumber.string('0');
    return SafetyNumber.fromJson(json);
  }

  @override
  String toJson(SafetyNumber? object) {
    if (object == null) return '0';
    return object.toJson();
  }
}
