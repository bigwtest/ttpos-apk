// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsbPrinter _$UsbPrinterFromJson(Map<String, dynamic> json) {
  return _UsbPrinter.fromJson(json);
}

/// @nodoc
mixin _$UsbPrinter {
  @JsonKey(name: 'vid')
  String get vid => throw _privateConstructorUsedError;
  @JsonKey(name: 'vid')
  set vid(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'pid')
  String get pid => throw _privateConstructorUsedError;
  @JsonKey(name: 'pid')
  set pid(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  String get sn => throw _privateConstructorUsedError;
  @JsonKey(name: 'sn')
  set sn(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_name')
  String get mName => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_name')
  set mName(String value) => throw _privateConstructorUsedError;

  /// Serializes this UsbPrinter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsbPrinter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsbPrinterCopyWith<UsbPrinter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsbPrinterCopyWith<$Res> {
  factory $UsbPrinterCopyWith(
          UsbPrinter value, $Res Function(UsbPrinter) then) =
      _$UsbPrinterCopyWithImpl<$Res, UsbPrinter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vid') String vid,
      @JsonKey(name: 'pid') String pid,
      @JsonKey(name: 'sn') String sn,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'm_name') String mName});
}

/// @nodoc
class _$UsbPrinterCopyWithImpl<$Res, $Val extends UsbPrinter>
    implements $UsbPrinterCopyWith<$Res> {
  _$UsbPrinterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsbPrinter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vid = null,
    Object? pid = null,
    Object? sn = null,
    Object? name = null,
    Object? mName = null,
  }) {
    return _then(_value.copyWith(
      vid: null == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mName: null == mName
          ? _value.mName
          : mName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsbPrinterImplCopyWith<$Res>
    implements $UsbPrinterCopyWith<$Res> {
  factory _$$UsbPrinterImplCopyWith(
          _$UsbPrinterImpl value, $Res Function(_$UsbPrinterImpl) then) =
      __$$UsbPrinterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vid') String vid,
      @JsonKey(name: 'pid') String pid,
      @JsonKey(name: 'sn') String sn,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'm_name') String mName});
}

/// @nodoc
class __$$UsbPrinterImplCopyWithImpl<$Res>
    extends _$UsbPrinterCopyWithImpl<$Res, _$UsbPrinterImpl>
    implements _$$UsbPrinterImplCopyWith<$Res> {
  __$$UsbPrinterImplCopyWithImpl(
      _$UsbPrinterImpl _value, $Res Function(_$UsbPrinterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsbPrinter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vid = null,
    Object? pid = null,
    Object? sn = null,
    Object? name = null,
    Object? mName = null,
  }) {
    return _then(_$UsbPrinterImpl(
      vid: null == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mName: null == mName
          ? _value.mName
          : mName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsbPrinterImpl implements _UsbPrinter {
  _$UsbPrinterImpl(
      {@JsonKey(name: 'vid') required this.vid,
      @JsonKey(name: 'pid') required this.pid,
      @JsonKey(name: 'sn') required this.sn,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'm_name') required this.mName});

  factory _$UsbPrinterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsbPrinterImplFromJson(json);

  @override
  @JsonKey(name: 'vid')
  String vid;
  @override
  @JsonKey(name: 'pid')
  String pid;
  @override
  @JsonKey(name: 'sn')
  String sn;
  @override
  @JsonKey(name: 'name')
  String name;
  @override
  @JsonKey(name: 'm_name')
  String mName;

  @override
  String toString() {
    return 'UsbPrinter(vid: $vid, pid: $pid, sn: $sn, name: $name, mName: $mName)';
  }

  /// Create a copy of UsbPrinter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsbPrinterImplCopyWith<_$UsbPrinterImpl> get copyWith =>
      __$$UsbPrinterImplCopyWithImpl<_$UsbPrinterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsbPrinterImplToJson(
      this,
    );
  }
}

abstract class _UsbPrinter implements UsbPrinter {
  factory _UsbPrinter(
      {@JsonKey(name: 'vid') required String vid,
      @JsonKey(name: 'pid') required String pid,
      @JsonKey(name: 'sn') required String sn,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'm_name') required String mName}) = _$UsbPrinterImpl;

  factory _UsbPrinter.fromJson(Map<String, dynamic> json) =
      _$UsbPrinterImpl.fromJson;

  @override
  @JsonKey(name: 'vid')
  String get vid;
  @JsonKey(name: 'vid')
  set vid(String value);
  @override
  @JsonKey(name: 'pid')
  String get pid;
  @JsonKey(name: 'pid')
  set pid(String value);
  @override
  @JsonKey(name: 'sn')
  String get sn;
  @JsonKey(name: 'sn')
  set sn(String value);
  @override
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'name')
  set name(String value);
  @override
  @JsonKey(name: 'm_name')
  String get mName;
  @JsonKey(name: 'm_name')
  set mName(String value);

  /// Create a copy of UsbPrinter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsbPrinterImplCopyWith<_$UsbPrinterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
