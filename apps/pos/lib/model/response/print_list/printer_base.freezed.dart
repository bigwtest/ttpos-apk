// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrinterBase _$PrinterBaseFromJson(Map<String, dynamic> json) {
  return _PrinterBase.fromJson(json);
}

/// @nodoc
mixin _$PrinterBase {
  @JsonKey(name: "printer_list")
  List<RespPrinterBase> get printerList => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_type_list")
  List<RespPrinterBase> get printerTypeList =>
      throw _privateConstructorUsedError;

  /// Serializes this PrinterBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrinterBaseCopyWith<PrinterBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterBaseCopyWith<$Res> {
  factory $PrinterBaseCopyWith(
          PrinterBase value, $Res Function(PrinterBase) then) =
      _$PrinterBaseCopyWithImpl<$Res, PrinterBase>;
  @useResult
  $Res call(
      {@JsonKey(name: "printer_list") List<RespPrinterBase> printerList,
      @JsonKey(name: "printer_type_list")
      List<RespPrinterBase> printerTypeList});
}

/// @nodoc
class _$PrinterBaseCopyWithImpl<$Res, $Val extends PrinterBase>
    implements $PrinterBaseCopyWith<$Res> {
  _$PrinterBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printerList = null,
    Object? printerTypeList = null,
  }) {
    return _then(_value.copyWith(
      printerList: null == printerList
          ? _value.printerList
          : printerList // ignore: cast_nullable_to_non_nullable
              as List<RespPrinterBase>,
      printerTypeList: null == printerTypeList
          ? _value.printerTypeList
          : printerTypeList // ignore: cast_nullable_to_non_nullable
              as List<RespPrinterBase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrinterBaseImplCopyWith<$Res>
    implements $PrinterBaseCopyWith<$Res> {
  factory _$$PrinterBaseImplCopyWith(
          _$PrinterBaseImpl value, $Res Function(_$PrinterBaseImpl) then) =
      __$$PrinterBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "printer_list") List<RespPrinterBase> printerList,
      @JsonKey(name: "printer_type_list")
      List<RespPrinterBase> printerTypeList});
}

/// @nodoc
class __$$PrinterBaseImplCopyWithImpl<$Res>
    extends _$PrinterBaseCopyWithImpl<$Res, _$PrinterBaseImpl>
    implements _$$PrinterBaseImplCopyWith<$Res> {
  __$$PrinterBaseImplCopyWithImpl(
      _$PrinterBaseImpl _value, $Res Function(_$PrinterBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printerList = null,
    Object? printerTypeList = null,
  }) {
    return _then(_$PrinterBaseImpl(
      printerList: null == printerList
          ? _value._printerList
          : printerList // ignore: cast_nullable_to_non_nullable
              as List<RespPrinterBase>,
      printerTypeList: null == printerTypeList
          ? _value._printerTypeList
          : printerTypeList // ignore: cast_nullable_to_non_nullable
              as List<RespPrinterBase>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrinterBaseImpl implements _PrinterBase {
  _$PrinterBaseImpl(
      {@JsonKey(name: "printer_list")
      required final List<RespPrinterBase> printerList,
      @JsonKey(name: "printer_type_list")
      required final List<RespPrinterBase> printerTypeList})
      : _printerList = printerList,
        _printerTypeList = printerTypeList;

  factory _$PrinterBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrinterBaseImplFromJson(json);

  final List<RespPrinterBase> _printerList;
  @override
  @JsonKey(name: "printer_list")
  List<RespPrinterBase> get printerList {
    if (_printerList is EqualUnmodifiableListView) return _printerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_printerList);
  }

  final List<RespPrinterBase> _printerTypeList;
  @override
  @JsonKey(name: "printer_type_list")
  List<RespPrinterBase> get printerTypeList {
    if (_printerTypeList is EqualUnmodifiableListView) return _printerTypeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_printerTypeList);
  }

  @override
  String toString() {
    return 'PrinterBase(printerList: $printerList, printerTypeList: $printerTypeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterBaseImpl &&
            const DeepCollectionEquality()
                .equals(other._printerList, _printerList) &&
            const DeepCollectionEquality()
                .equals(other._printerTypeList, _printerTypeList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_printerList),
      const DeepCollectionEquality().hash(_printerTypeList));

  /// Create a copy of PrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterBaseImplCopyWith<_$PrinterBaseImpl> get copyWith =>
      __$$PrinterBaseImplCopyWithImpl<_$PrinterBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrinterBaseImplToJson(
      this,
    );
  }
}

abstract class _PrinterBase implements PrinterBase {
  factory _PrinterBase(
          {@JsonKey(name: "printer_list")
          required final List<RespPrinterBase> printerList,
          @JsonKey(name: "printer_type_list")
          required final List<RespPrinterBase> printerTypeList}) =
      _$PrinterBaseImpl;

  factory _PrinterBase.fromJson(Map<String, dynamic> json) =
      _$PrinterBaseImpl.fromJson;

  @override
  @JsonKey(name: "printer_list")
  List<RespPrinterBase> get printerList;
  @override
  @JsonKey(name: "printer_type_list")
  List<RespPrinterBase> get printerTypeList;

  /// Create a copy of PrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrinterBaseImplCopyWith<_$PrinterBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespPrinterBase _$RespPrinterBaseFromJson(Map<String, dynamic> json) {
  return _RespPrinterBase.fromJson(json);
}

/// @nodoc
mixin _$RespPrinterBase {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespPrinterBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPrinterBaseCopyWith<RespPrinterBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPrinterBaseCopyWith<$Res> {
  factory $RespPrinterBaseCopyWith(
          RespPrinterBase value, $Res Function(RespPrinterBase) then) =
      _$RespPrinterBaseCopyWithImpl<$Res, RespPrinterBase>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespPrinterBaseCopyWithImpl<$Res, $Val extends RespPrinterBase>
    implements $RespPrinterBaseCopyWith<$Res> {
  _$RespPrinterBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespPrinterBaseImplCopyWith<$Res>
    implements $RespPrinterBaseCopyWith<$Res> {
  factory _$$RespPrinterBaseImplCopyWith(_$RespPrinterBaseImpl value,
          $Res Function(_$RespPrinterBaseImpl) then) =
      __$$RespPrinterBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespPrinterBaseImplCopyWithImpl<$Res>
    extends _$RespPrinterBaseCopyWithImpl<$Res, _$RespPrinterBaseImpl>
    implements _$$RespPrinterBaseImplCopyWith<$Res> {
  __$$RespPrinterBaseImplCopyWithImpl(
      _$RespPrinterBaseImpl _value, $Res Function(_$RespPrinterBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_$RespPrinterBaseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPrinterBaseImpl implements _RespPrinterBase {
  const _$RespPrinterBaseImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespPrinterBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPrinterBaseImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespPrinterBase(name: $name, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPrinterBaseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid);

  /// Create a copy of RespPrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPrinterBaseImplCopyWith<_$RespPrinterBaseImpl> get copyWith =>
      __$$RespPrinterBaseImplCopyWithImpl<_$RespPrinterBaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPrinterBaseImplToJson(
      this,
    );
  }
}

abstract class _RespPrinterBase implements RespPrinterBase {
  const factory _RespPrinterBase(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "uuid") required final int uuid}) = _$RespPrinterBaseImpl;

  factory _RespPrinterBase.fromJson(Map<String, dynamic> json) =
      _$RespPrinterBaseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespPrinterBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPrinterBaseImplCopyWith<_$RespPrinterBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
