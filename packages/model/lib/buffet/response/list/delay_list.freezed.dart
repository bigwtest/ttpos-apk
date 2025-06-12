// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delay_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BuffetDelayList _$BuffetDelayListFromJson(Map<String, dynamic> json) {
  return _BuffetDelayList.fromJson(json);
}

/// @nodoc
mixin _$BuffetDelayList {
  @JsonKey(name: "list")
  List<BuffetDelay> get list => throw _privateConstructorUsedError;

  /// Serializes this BuffetDelayList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuffetDelayList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuffetDelayListCopyWith<BuffetDelayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuffetDelayListCopyWith<$Res> {
  factory $BuffetDelayListCopyWith(
          BuffetDelayList value, $Res Function(BuffetDelayList) then) =
      _$BuffetDelayListCopyWithImpl<$Res, BuffetDelayList>;
  @useResult
  $Res call({@JsonKey(name: "list") List<BuffetDelay> list});
}

/// @nodoc
class _$BuffetDelayListCopyWithImpl<$Res, $Val extends BuffetDelayList>
    implements $BuffetDelayListCopyWith<$Res> {
  _$BuffetDelayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuffetDelayList
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
              as List<BuffetDelay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuffetDelayListImplCopyWith<$Res>
    implements $BuffetDelayListCopyWith<$Res> {
  factory _$$BuffetDelayListImplCopyWith(_$BuffetDelayListImpl value,
          $Res Function(_$BuffetDelayListImpl) then) =
      __$$BuffetDelayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<BuffetDelay> list});
}

/// @nodoc
class __$$BuffetDelayListImplCopyWithImpl<$Res>
    extends _$BuffetDelayListCopyWithImpl<$Res, _$BuffetDelayListImpl>
    implements _$$BuffetDelayListImplCopyWith<$Res> {
  __$$BuffetDelayListImplCopyWithImpl(
      _$BuffetDelayListImpl _value, $Res Function(_$BuffetDelayListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuffetDelayList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$BuffetDelayListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BuffetDelay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuffetDelayListImpl implements _BuffetDelayList {
  _$BuffetDelayListImpl(
      {@JsonKey(name: "list") required final List<BuffetDelay> list})
      : _list = list;

  factory _$BuffetDelayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuffetDelayListImplFromJson(json);

  final List<BuffetDelay> _list;
  @override
  @JsonKey(name: "list")
  List<BuffetDelay> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'BuffetDelayList(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuffetDelayListImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of BuffetDelayList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuffetDelayListImplCopyWith<_$BuffetDelayListImpl> get copyWith =>
      __$$BuffetDelayListImplCopyWithImpl<_$BuffetDelayListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuffetDelayListImplToJson(
      this,
    );
  }
}

abstract class _BuffetDelayList implements BuffetDelayList {
  factory _BuffetDelayList(
          {@JsonKey(name: "list") required final List<BuffetDelay> list}) =
      _$BuffetDelayListImpl;

  factory _BuffetDelayList.fromJson(Map<String, dynamic> json) =
      _$BuffetDelayListImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<BuffetDelay> get list;

  /// Create a copy of BuffetDelayList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuffetDelayListImplCopyWith<_$BuffetDelayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuffetDelay _$BuffetDelayFromJson(Map<String, dynamic> json) {
  return _BuffetDelay.fromJson(json);
}

/// @nodoc
mixin _$BuffetDelay {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  SafetyNumber get price => throw _privateConstructorUsedError;

  /// Serializes this BuffetDelay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuffetDelay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuffetDelayCopyWith<BuffetDelay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuffetDelayCopyWith<$Res> {
  factory $BuffetDelayCopyWith(
          BuffetDelay value, $Res Function(BuffetDelay) then) =
      _$BuffetDelayCopyWithImpl<$Res, BuffetDelay>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "price") SafetyNumber price});

  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class _$BuffetDelayCopyWithImpl<$Res, $Val extends BuffetDelay>
    implements $BuffetDelayCopyWith<$Res> {
  _$BuffetDelayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuffetDelay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of BuffetDelay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get price {
    return $SafetyNumberCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuffetDelayImplCopyWith<$Res>
    implements $BuffetDelayCopyWith<$Res> {
  factory _$$BuffetDelayImplCopyWith(
          _$BuffetDelayImpl value, $Res Function(_$BuffetDelayImpl) then) =
      __$$BuffetDelayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "price") SafetyNumber price});

  @override
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class __$$BuffetDelayImplCopyWithImpl<$Res>
    extends _$BuffetDelayCopyWithImpl<$Res, _$BuffetDelayImpl>
    implements _$$BuffetDelayImplCopyWith<$Res> {
  __$$BuffetDelayImplCopyWithImpl(
      _$BuffetDelayImpl _value, $Res Function(_$BuffetDelayImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuffetDelay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$BuffetDelayImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuffetDelayImpl implements _BuffetDelay {
  _$BuffetDelayImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "price") required this.price});

  factory _$BuffetDelayImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuffetDelayImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "price")
  final SafetyNumber price;

  @override
  String toString() {
    return 'BuffetDelay(uuid: $uuid, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuffetDelayImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, name, price);

  /// Create a copy of BuffetDelay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuffetDelayImplCopyWith<_$BuffetDelayImpl> get copyWith =>
      __$$BuffetDelayImplCopyWithImpl<_$BuffetDelayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuffetDelayImplToJson(
      this,
    );
  }
}

abstract class _BuffetDelay implements BuffetDelay {
  factory _BuffetDelay(
          {@JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "price") required final SafetyNumber price}) =
      _$BuffetDelayImpl;

  factory _BuffetDelay.fromJson(Map<String, dynamic> json) =
      _$BuffetDelayImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "price")
  SafetyNumber get price;

  /// Create a copy of BuffetDelay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuffetDelayImplCopyWith<_$BuffetDelayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
