// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_top_up_print.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTopUpPrint _$RequestTopUpPrintFromJson(Map<String, dynamic> json) {
  return _RequestTopUpPrint.fromJson(json);
}

/// @nodoc
mixin _$RequestTopUpPrint {
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  String get printLang => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  set printLang(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestTopUpPrint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestTopUpPrint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestTopUpPrintCopyWith<RequestTopUpPrint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTopUpPrintCopyWith<$Res> {
  factory $RequestTopUpPrintCopyWith(
          RequestTopUpPrint value, $Res Function(RequestTopUpPrint) then) =
      _$RequestTopUpPrintCopyWithImpl<$Res, RequestTopUpPrint>;
  @useResult
  $Res call(
      {@JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid,
      @JsonKey(name: "print_lang") String printLang});
}

/// @nodoc
class _$RequestTopUpPrintCopyWithImpl<$Res, $Val extends RequestTopUpPrint>
    implements $RequestTopUpPrintCopyWith<$Res> {
  _$RequestTopUpPrintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTopUpPrint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rechargeOrderUuid = null,
    Object? printLang = null,
  }) {
    return _then(_value.copyWith(
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      printLang: null == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTopUpPrintImplCopyWith<$Res>
    implements $RequestTopUpPrintCopyWith<$Res> {
  factory _$$RequestTopUpPrintImplCopyWith(_$RequestTopUpPrintImpl value,
          $Res Function(_$RequestTopUpPrintImpl) then) =
      __$$RequestTopUpPrintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid,
      @JsonKey(name: "print_lang") String printLang});
}

/// @nodoc
class __$$RequestTopUpPrintImplCopyWithImpl<$Res>
    extends _$RequestTopUpPrintCopyWithImpl<$Res, _$RequestTopUpPrintImpl>
    implements _$$RequestTopUpPrintImplCopyWith<$Res> {
  __$$RequestTopUpPrintImplCopyWithImpl(_$RequestTopUpPrintImpl _value,
      $Res Function(_$RequestTopUpPrintImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTopUpPrint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rechargeOrderUuid = null,
    Object? printLang = null,
  }) {
    return _then(_$RequestTopUpPrintImpl(
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      printLang: null == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestTopUpPrintImpl implements _RequestTopUpPrint {
  _$RequestTopUpPrintImpl(
      {@JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid,
      @JsonKey(name: "print_lang") required this.printLang});

  factory _$RequestTopUpPrintImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTopUpPrintImplFromJson(json);

  @override
  @JsonKey(name: "recharge_order_uuid")
  int rechargeOrderUuid;
  @override
  @JsonKey(name: "print_lang")
  String printLang;

  @override
  String toString() {
    return 'RequestTopUpPrint(rechargeOrderUuid: $rechargeOrderUuid, printLang: $printLang)';
  }

  /// Create a copy of RequestTopUpPrint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTopUpPrintImplCopyWith<_$RequestTopUpPrintImpl> get copyWith =>
      __$$RequestTopUpPrintImplCopyWithImpl<_$RequestTopUpPrintImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTopUpPrintImplToJson(
      this,
    );
  }
}

abstract class _RequestTopUpPrint implements RequestTopUpPrint {
  factory _RequestTopUpPrint(
          {@JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
          @JsonKey(name: "print_lang") required String printLang}) =
      _$RequestTopUpPrintImpl;

  factory _RequestTopUpPrint.fromJson(Map<String, dynamic> json) =
      _$RequestTopUpPrintImpl.fromJson;

  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value);
  @override
  @JsonKey(name: "print_lang")
  String get printLang;
  @JsonKey(name: "print_lang")
  set printLang(String value);

  /// Create a copy of RequestTopUpPrint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTopUpPrintImplCopyWith<_$RequestTopUpPrintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
