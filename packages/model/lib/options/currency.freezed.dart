// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  @JsonKey(name: "is_open")
  String get isOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "print_unit")
  String get printUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_position")
  String get unitPosition => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_rate")
  String get unitRate => throw _privateConstructorUsedError;
  @JsonKey(name: "vice_unit")
  String get viceUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "vice_unit_position")
  String get viceUnitPosition => throw _privateConstructorUsedError;

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_open") String isOpen,
      @JsonKey(name: "print_unit") String printUnit,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "unit_position") String unitPosition,
      @JsonKey(name: "unit_rate") String unitRate,
      @JsonKey(name: "vice_unit") String viceUnit,
      @JsonKey(name: "vice_unit_position") String viceUnitPosition});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
    Object? printUnit = null,
    Object? unit = null,
    Object? unitPosition = null,
    Object? unitRate = null,
    Object? viceUnit = null,
    Object? viceUnitPosition = null,
  }) {
    return _then(_value.copyWith(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String,
      printUnit: null == printUnit
          ? _value.printUnit
          : printUnit // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPosition: null == unitPosition
          ? _value.unitPosition
          : unitPosition // ignore: cast_nullable_to_non_nullable
              as String,
      unitRate: null == unitRate
          ? _value.unitRate
          : unitRate // ignore: cast_nullable_to_non_nullable
              as String,
      viceUnit: null == viceUnit
          ? _value.viceUnit
          : viceUnit // ignore: cast_nullable_to_non_nullable
              as String,
      viceUnitPosition: null == viceUnitPosition
          ? _value.viceUnitPosition
          : viceUnitPosition // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_open") String isOpen,
      @JsonKey(name: "print_unit") String printUnit,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "unit_position") String unitPosition,
      @JsonKey(name: "unit_rate") String unitRate,
      @JsonKey(name: "vice_unit") String viceUnit,
      @JsonKey(name: "vice_unit_position") String viceUnitPosition});
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
    Object? printUnit = null,
    Object? unit = null,
    Object? unitPosition = null,
    Object? unitRate = null,
    Object? viceUnit = null,
    Object? viceUnitPosition = null,
  }) {
    return _then(_$CurrencyImpl(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String,
      printUnit: null == printUnit
          ? _value.printUnit
          : printUnit // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPosition: null == unitPosition
          ? _value.unitPosition
          : unitPosition // ignore: cast_nullable_to_non_nullable
              as String,
      unitRate: null == unitRate
          ? _value.unitRate
          : unitRate // ignore: cast_nullable_to_non_nullable
              as String,
      viceUnit: null == viceUnit
          ? _value.viceUnit
          : viceUnit // ignore: cast_nullable_to_non_nullable
              as String,
      viceUnitPosition: null == viceUnitPosition
          ? _value.viceUnitPosition
          : viceUnitPosition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyImpl implements _Currency {
  const _$CurrencyImpl(
      {@JsonKey(name: "is_open") required this.isOpen,
      @JsonKey(name: "print_unit") required this.printUnit,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "unit_position") required this.unitPosition,
      @JsonKey(name: "unit_rate") required this.unitRate,
      @JsonKey(name: "vice_unit") required this.viceUnit,
      @JsonKey(name: "vice_unit_position") required this.viceUnitPosition});

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

  @override
  @JsonKey(name: "is_open")
  final String isOpen;
  @override
  @JsonKey(name: "print_unit")
  final String printUnit;
  @override
  @JsonKey(name: "unit")
  final String unit;
  @override
  @JsonKey(name: "unit_position")
  final String unitPosition;
  @override
  @JsonKey(name: "unit_rate")
  final String unitRate;
  @override
  @JsonKey(name: "vice_unit")
  final String viceUnit;
  @override
  @JsonKey(name: "vice_unit_position")
  final String viceUnitPosition;

  @override
  String toString() {
    return 'Currency(isOpen: $isOpen, printUnit: $printUnit, unit: $unit, unitPosition: $unitPosition, unitRate: $unitRate, viceUnit: $viceUnit, viceUnitPosition: $viceUnitPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.printUnit, printUnit) ||
                other.printUnit == printUnit) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPosition, unitPosition) ||
                other.unitPosition == unitPosition) &&
            (identical(other.unitRate, unitRate) ||
                other.unitRate == unitRate) &&
            (identical(other.viceUnit, viceUnit) ||
                other.viceUnit == viceUnit) &&
            (identical(other.viceUnitPosition, viceUnitPosition) ||
                other.viceUnitPosition == viceUnitPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isOpen, printUnit, unit,
      unitPosition, unitRate, viceUnit, viceUnitPosition);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyImplToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {@JsonKey(name: "is_open") required final String isOpen,
      @JsonKey(name: "print_unit") required final String printUnit,
      @JsonKey(name: "unit") required final String unit,
      @JsonKey(name: "unit_position") required final String unitPosition,
      @JsonKey(name: "unit_rate") required final String unitRate,
      @JsonKey(name: "vice_unit") required final String viceUnit,
      @JsonKey(name: "vice_unit_position")
      required final String viceUnitPosition}) = _$CurrencyImpl;

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  @JsonKey(name: "is_open")
  String get isOpen;
  @override
  @JsonKey(name: "print_unit")
  String get printUnit;
  @override
  @JsonKey(name: "unit")
  String get unit;
  @override
  @JsonKey(name: "unit_position")
  String get unitPosition;
  @override
  @JsonKey(name: "unit_rate")
  String get unitRate;
  @override
  @JsonKey(name: "vice_unit")
  String get viceUnit;
  @override
  @JsonKey(name: "vice_unit_position")
  String get viceUnitPosition;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
