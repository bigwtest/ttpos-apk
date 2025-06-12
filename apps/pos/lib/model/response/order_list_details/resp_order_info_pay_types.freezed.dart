// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_order_info_pay_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespOrderInfoPayTypes _$RespOrderInfoPayTypesFromJson(
    Map<String, dynamic> json) {
  return _RespOrderInfoPayTypes.fromJson(json);
}

/// @nodoc
mixin _$RespOrderInfoPayTypes {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_unit")
  String get currencyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_name")
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "source")
  int get source => throw _privateConstructorUsedError;
  @JsonKey(name: "source_text")
  String get sourceText => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  /// Serializes this RespOrderInfoPayTypes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderInfoPayTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderInfoPayTypesCopyWith<RespOrderInfoPayTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderInfoPayTypesCopyWith<$Res> {
  factory $RespOrderInfoPayTypesCopyWith(RespOrderInfoPayTypes value,
          $Res Function(RespOrderInfoPayTypes) then) =
      _$RespOrderInfoPayTypesCopyWithImpl<$Res, RespOrderInfoPayTypes>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_type_name") String paymentTypeName,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "source") int source,
      @JsonKey(name: "source_text") String sourceText,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$RespOrderInfoPayTypesCopyWithImpl<$Res,
        $Val extends RespOrderInfoPayTypes>
    implements $RespOrderInfoPayTypesCopyWith<$Res> {
  _$RespOrderInfoPayTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderInfoPayTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currencyUnit = null,
    Object? paymentAmount = null,
    Object? paymentTypeName = null,
    Object? saleBillUuid = null,
    Object? source = null,
    Object? sourceText = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int,
      sourceText: null == sourceText
          ? _value.sourceText
          : sourceText // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespOrderInfoPayTypesImplCopyWith<$Res>
    implements $RespOrderInfoPayTypesCopyWith<$Res> {
  factory _$$RespOrderInfoPayTypesImplCopyWith(
          _$RespOrderInfoPayTypesImpl value,
          $Res Function(_$RespOrderInfoPayTypesImpl) then) =
      __$$RespOrderInfoPayTypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_type_name") String paymentTypeName,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "source") int source,
      @JsonKey(name: "source_text") String sourceText,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$RespOrderInfoPayTypesImplCopyWithImpl<$Res>
    extends _$RespOrderInfoPayTypesCopyWithImpl<$Res,
        _$RespOrderInfoPayTypesImpl>
    implements _$$RespOrderInfoPayTypesImplCopyWith<$Res> {
  __$$RespOrderInfoPayTypesImplCopyWithImpl(_$RespOrderInfoPayTypesImpl _value,
      $Res Function(_$RespOrderInfoPayTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderInfoPayTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currencyUnit = null,
    Object? paymentAmount = null,
    Object? paymentTypeName = null,
    Object? saleBillUuid = null,
    Object? source = null,
    Object? sourceText = null,
    Object? status = null,
  }) {
    return _then(_$RespOrderInfoPayTypesImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int,
      sourceText: null == sourceText
          ? _value.sourceText
          : sourceText // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderInfoPayTypesImpl implements _RespOrderInfoPayTypes {
  _$RespOrderInfoPayTypesImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "currency_unit") required this.currencyUnit,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_type_name") required this.paymentTypeName,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "source") required this.source,
      @JsonKey(name: "source_text") required this.sourceText,
      @JsonKey(name: "status") required this.status});

  factory _$RespOrderInfoPayTypesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespOrderInfoPayTypesImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "currency_unit")
  final String currencyUnit;
  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_type_name")
  final String paymentTypeName;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "source")
  final int source;
  @override
  @JsonKey(name: "source_text")
  final String sourceText;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'RespOrderInfoPayTypes(code: $code, currencyUnit: $currencyUnit, paymentAmount: $paymentAmount, paymentTypeName: $paymentTypeName, saleBillUuid: $saleBillUuid, source: $source, sourceText: $sourceText, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespOrderInfoPayTypesImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.currencyUnit, currencyUnit) ||
                other.currencyUnit == currencyUnit) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceText, sourceText) ||
                other.sourceText == sourceText) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, currencyUnit,
      paymentAmount, paymentTypeName, saleBillUuid, source, sourceText, status);

  /// Create a copy of RespOrderInfoPayTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderInfoPayTypesImplCopyWith<_$RespOrderInfoPayTypesImpl>
      get copyWith => __$$RespOrderInfoPayTypesImplCopyWithImpl<
          _$RespOrderInfoPayTypesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderInfoPayTypesImplToJson(
      this,
    );
  }
}

abstract class _RespOrderInfoPayTypes implements RespOrderInfoPayTypes {
  factory _RespOrderInfoPayTypes(
      {@JsonKey(name: "code") required final String code,
      @JsonKey(name: "currency_unit") required final String currencyUnit,
      @JsonKey(name: "payment_amount") required final double paymentAmount,
      @JsonKey(name: "payment_type_name") required final String paymentTypeName,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "source") required final int source,
      @JsonKey(name: "source_text") required final String sourceText,
      @JsonKey(name: "status")
      required final int status}) = _$RespOrderInfoPayTypesImpl;

  factory _RespOrderInfoPayTypes.fromJson(Map<String, dynamic> json) =
      _$RespOrderInfoPayTypesImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "currency_unit")
  String get currencyUnit;
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_type_name")
  String get paymentTypeName;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "source")
  int get source;
  @override
  @JsonKey(name: "source_text")
  String get sourceText;
  @override
  @JsonKey(name: "status")
  int get status;

  /// Create a copy of RespOrderInfoPayTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderInfoPayTypesImplCopyWith<_$RespOrderInfoPayTypesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
