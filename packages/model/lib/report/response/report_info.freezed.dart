// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespCashierReportInfo _$RespCashierReportInfoFromJson(
    Map<String, dynamic> json) {
  return _RespCashierReportInfo.fromJson(json);
}

/// @nodoc
mixin _$RespCashierReportInfo {
  @JsonKey(name: "previous_shift_cash")
  double get previousShiftCash => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_data")
  RespPrinterData get printerData => throw _privateConstructorUsedError;

  /// Serializes this RespCashierReportInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespCashierReportInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespCashierReportInfoCopyWith<RespCashierReportInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespCashierReportInfoCopyWith<$Res> {
  factory $RespCashierReportInfoCopyWith(RespCashierReportInfo value,
          $Res Function(RespCashierReportInfo) then) =
      _$RespCashierReportInfoCopyWithImpl<$Res, RespCashierReportInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "previous_shift_cash") double previousShiftCash,
      @JsonKey(name: "printer_data") RespPrinterData printerData});

  $RespPrinterDataCopyWith<$Res> get printerData;
}

/// @nodoc
class _$RespCashierReportInfoCopyWithImpl<$Res,
        $Val extends RespCashierReportInfo>
    implements $RespCashierReportInfoCopyWith<$Res> {
  _$RespCashierReportInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespCashierReportInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousShiftCash = null,
    Object? printerData = null,
  }) {
    return _then(_value.copyWith(
      previousShiftCash: null == previousShiftCash
          ? _value.previousShiftCash
          : previousShiftCash // ignore: cast_nullable_to_non_nullable
              as double,
      printerData: null == printerData
          ? _value.printerData
          : printerData // ignore: cast_nullable_to_non_nullable
              as RespPrinterData,
    ) as $Val);
  }

  /// Create a copy of RespCashierReportInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RespPrinterDataCopyWith<$Res> get printerData {
    return $RespPrinterDataCopyWith<$Res>(_value.printerData, (value) {
      return _then(_value.copyWith(printerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespCashierReportInfoImplCopyWith<$Res>
    implements $RespCashierReportInfoCopyWith<$Res> {
  factory _$$RespCashierReportInfoImplCopyWith(
          _$RespCashierReportInfoImpl value,
          $Res Function(_$RespCashierReportInfoImpl) then) =
      __$$RespCashierReportInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "previous_shift_cash") double previousShiftCash,
      @JsonKey(name: "printer_data") RespPrinterData printerData});

  @override
  $RespPrinterDataCopyWith<$Res> get printerData;
}

/// @nodoc
class __$$RespCashierReportInfoImplCopyWithImpl<$Res>
    extends _$RespCashierReportInfoCopyWithImpl<$Res,
        _$RespCashierReportInfoImpl>
    implements _$$RespCashierReportInfoImplCopyWith<$Res> {
  __$$RespCashierReportInfoImplCopyWithImpl(_$RespCashierReportInfoImpl _value,
      $Res Function(_$RespCashierReportInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespCashierReportInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousShiftCash = null,
    Object? printerData = null,
  }) {
    return _then(_$RespCashierReportInfoImpl(
      previousShiftCash: null == previousShiftCash
          ? _value.previousShiftCash
          : previousShiftCash // ignore: cast_nullable_to_non_nullable
              as double,
      printerData: null == printerData
          ? _value.printerData
          : printerData // ignore: cast_nullable_to_non_nullable
              as RespPrinterData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespCashierReportInfoImpl implements _RespCashierReportInfo {
  const _$RespCashierReportInfoImpl(
      {@JsonKey(name: "previous_shift_cash") required this.previousShiftCash,
      @JsonKey(name: "printer_data") required this.printerData});

  factory _$RespCashierReportInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespCashierReportInfoImplFromJson(json);

  @override
  @JsonKey(name: "previous_shift_cash")
  final double previousShiftCash;
  @override
  @JsonKey(name: "printer_data")
  final RespPrinterData printerData;

  @override
  String toString() {
    return 'RespCashierReportInfo(previousShiftCash: $previousShiftCash, printerData: $printerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespCashierReportInfoImpl &&
            (identical(other.previousShiftCash, previousShiftCash) ||
                other.previousShiftCash == previousShiftCash) &&
            (identical(other.printerData, printerData) ||
                other.printerData == printerData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, previousShiftCash, printerData);

  /// Create a copy of RespCashierReportInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespCashierReportInfoImplCopyWith<_$RespCashierReportInfoImpl>
      get copyWith => __$$RespCashierReportInfoImplCopyWithImpl<
          _$RespCashierReportInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespCashierReportInfoImplToJson(
      this,
    );
  }
}

abstract class _RespCashierReportInfo implements RespCashierReportInfo {
  const factory _RespCashierReportInfo(
          {@JsonKey(name: "previous_shift_cash")
          required final double previousShiftCash,
          @JsonKey(name: "printer_data")
          required final RespPrinterData printerData}) =
      _$RespCashierReportInfoImpl;

  factory _RespCashierReportInfo.fromJson(Map<String, dynamic> json) =
      _$RespCashierReportInfoImpl.fromJson;

  @override
  @JsonKey(name: "previous_shift_cash")
  double get previousShiftCash;
  @override
  @JsonKey(name: "printer_data")
  RespPrinterData get printerData;

  /// Create a copy of RespCashierReportInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespCashierReportInfoImplCopyWith<_$RespCashierReportInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
