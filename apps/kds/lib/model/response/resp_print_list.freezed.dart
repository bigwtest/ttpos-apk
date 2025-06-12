// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_print_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespPrintList _$RespPrintListFromJson(Map<String, dynamic> json) {
  return _RespPrintList.fromJson(json);
}

/// @nodoc
mixin _$RespPrintList {
  @JsonKey(name: "list")
  List<RespProductPrinter> get list => throw _privateConstructorUsedError;

  /// Serializes this RespPrintList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPrintList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPrintListCopyWith<RespPrintList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPrintListCopyWith<$Res> {
  factory $RespPrintListCopyWith(
          RespPrintList value, $Res Function(RespPrintList) then) =
      _$RespPrintListCopyWithImpl<$Res, RespPrintList>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductPrinter> list});
}

/// @nodoc
class _$RespPrintListCopyWithImpl<$Res, $Val extends RespPrintList>
    implements $RespPrintListCopyWith<$Res> {
  _$RespPrintListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPrintList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductPrinter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespPrintListImplCopyWith<$Res>
    implements $RespPrintListCopyWith<$Res> {
  factory _$$RespPrintListImplCopyWith(
          _$RespPrintListImpl value, $Res Function(_$RespPrintListImpl) then) =
      __$$RespPrintListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductPrinter> list});
}

/// @nodoc
class __$$RespPrintListImplCopyWithImpl<$Res>
    extends _$RespPrintListCopyWithImpl<$Res, _$RespPrintListImpl>
    implements _$$RespPrintListImplCopyWith<$Res> {
  __$$RespPrintListImplCopyWithImpl(
      _$RespPrintListImpl _value, $Res Function(_$RespPrintListImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPrintList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$RespPrintListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductPrinter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPrintListImpl implements _RespPrintList {
  _$RespPrintListImpl(
      {@JsonKey(name: "list") required final List<RespProductPrinter> list})
      : _list = list;

  factory _$RespPrintListImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPrintListImplFromJson(json);

  final List<RespProductPrinter> _list;
  @override
  @JsonKey(name: "list")
  List<RespProductPrinter> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'RespPrintList(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPrintListImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of RespPrintList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPrintListImplCopyWith<_$RespPrintListImpl> get copyWith =>
      __$$RespPrintListImplCopyWithImpl<_$RespPrintListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPrintListImplToJson(
      this,
    );
  }
}

abstract class _RespPrintList implements RespPrintList {
  factory _RespPrintList(
      {@JsonKey(name: "list")
      required final List<RespProductPrinter> list}) = _$RespPrintListImpl;

  factory _RespPrintList.fromJson(Map<String, dynamic> json) =
      _$RespPrintListImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespProductPrinter> get list;

  /// Create a copy of RespPrintList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPrintListImplCopyWith<_$RespPrintListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespProductPrinter _$RespProductPrinterFromJson(Map<String, dynamic> json) {
  return _RespProductPrinter.fromJson(json);
}

/// @nodoc
mixin _$RespProductPrinter {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespProductPrinter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespProductPrinter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespProductPrinterCopyWith<RespProductPrinter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespProductPrinterCopyWith<$Res> {
  factory $RespProductPrinterCopyWith(
          RespProductPrinter value, $Res Function(RespProductPrinter) then) =
      _$RespProductPrinterCopyWithImpl<$Res, RespProductPrinter>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespProductPrinterCopyWithImpl<$Res, $Val extends RespProductPrinter>
    implements $RespProductPrinterCopyWith<$Res> {
  _$RespProductPrinterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespProductPrinter
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
abstract class _$$RespProductPrinterImplCopyWith<$Res>
    implements $RespProductPrinterCopyWith<$Res> {
  factory _$$RespProductPrinterImplCopyWith(_$RespProductPrinterImpl value,
          $Res Function(_$RespProductPrinterImpl) then) =
      __$$RespProductPrinterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespProductPrinterImplCopyWithImpl<$Res>
    extends _$RespProductPrinterCopyWithImpl<$Res, _$RespProductPrinterImpl>
    implements _$$RespProductPrinterImplCopyWith<$Res> {
  __$$RespProductPrinterImplCopyWithImpl(_$RespProductPrinterImpl _value,
      $Res Function(_$RespProductPrinterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespProductPrinter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_$RespProductPrinterImpl(
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
class _$RespProductPrinterImpl implements _RespProductPrinter {
  const _$RespProductPrinterImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespProductPrinterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespProductPrinterImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespProductPrinter(name: $name, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductPrinterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid);

  /// Create a copy of RespProductPrinter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespProductPrinterImplCopyWith<_$RespProductPrinterImpl> get copyWith =>
      __$$RespProductPrinterImplCopyWithImpl<_$RespProductPrinterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespProductPrinterImplToJson(
      this,
    );
  }
}

abstract class _RespProductPrinter implements RespProductPrinter {
  const factory _RespProductPrinter(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$RespProductPrinterImpl;

  factory _RespProductPrinter.fromJson(Map<String, dynamic> json) =
      _$RespProductPrinterImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespProductPrinter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductPrinterImplCopyWith<_$RespProductPrinterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
