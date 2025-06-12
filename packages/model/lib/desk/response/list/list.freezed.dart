// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeskList _$DeskListFromJson(Map<String, dynamic> json) {
  return _DeskList.fromJson(json);
}

/// @nodoc
mixin _$DeskList {
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<Desk> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  BaseListMeta get meta => throw _privateConstructorUsedError;

  /// Serializes this DeskList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeskListCopyWith<DeskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskListCopyWith<$Res> {
  factory $DeskListCopyWith(DeskList value, $Res Function(DeskList) then) =
      _$DeskListCopyWithImpl<$Res, DeskList>;
  @useResult
  $Res call(
      {@JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "list") List<Desk> list,
      @JsonKey(name: "meta") BaseListMeta meta});

  $ExtraCopyWith<$Res> get extra;
  $BaseListMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$DeskListCopyWithImpl<$Res, $Val extends DeskList>
    implements $DeskListCopyWith<$Res> {
  _$DeskListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extra = null,
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Desk>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta,
    ) as $Val);
  }

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListMetaCopyWith<$Res> get meta {
    return $BaseListMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeskListImplCopyWith<$Res>
    implements $DeskListCopyWith<$Res> {
  factory _$$DeskListImplCopyWith(
          _$DeskListImpl value, $Res Function(_$DeskListImpl) then) =
      __$$DeskListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "list") List<Desk> list,
      @JsonKey(name: "meta") BaseListMeta meta});

  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $BaseListMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$DeskListImplCopyWithImpl<$Res>
    extends _$DeskListCopyWithImpl<$Res, _$DeskListImpl>
    implements _$$DeskListImplCopyWith<$Res> {
  __$$DeskListImplCopyWithImpl(
      _$DeskListImpl _value, $Res Function(_$DeskListImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extra = null,
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$DeskListImpl(
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Desk>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeskListImpl implements _DeskList {
  _$DeskListImpl(
      {@JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "list") required final List<Desk> list,
      @JsonKey(name: "meta") required this.meta})
      : _list = list;

  factory _$DeskListImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskListImplFromJson(json);

  @override
  @JsonKey(name: "extra")
  final Extra extra;
  final List<Desk> _list;
  @override
  @JsonKey(name: "list")
  List<Desk> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "meta")
  final BaseListMeta meta;

  @override
  String toString() {
    return 'DeskList(extra: $extra, list: $list, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeskListImpl &&
            (identical(other.extra, extra) || other.extra == extra) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, extra, const DeepCollectionEquality().hash(_list), meta);

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskListImplCopyWith<_$DeskListImpl> get copyWith =>
      __$$DeskListImplCopyWithImpl<_$DeskListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskListImplToJson(
      this,
    );
  }
}

abstract class _DeskList implements DeskList {
  factory _DeskList(
          {@JsonKey(name: "extra") required final Extra extra,
          @JsonKey(name: "list") required final List<Desk> list,
          @JsonKey(name: "meta") required final BaseListMeta meta}) =
      _$DeskListImpl;

  factory _DeskList.fromJson(Map<String, dynamic> json) =
      _$DeskListImpl.fromJson;

  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @override
  @JsonKey(name: "list")
  List<Desk> get list;
  @override
  @JsonKey(name: "meta")
  BaseListMeta get meta;

  /// Create a copy of DeskList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeskListImplCopyWith<_$DeskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return _Extra.fromJson(json);
}

/// @nodoc
mixin _$Extra {
  @JsonKey(name: "available_num")
  int get availableNum => throw _privateConstructorUsedError;
  @JsonKey(name: "available_num")
  set availableNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "lock_num")
  int get lockNum => throw _privateConstructorUsedError;
  @JsonKey(name: "lock_num")
  set lockNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "occupy_buffet_num")
  int get occupyBuffetNum => throw _privateConstructorUsedError;
  @JsonKey(name: "occupy_buffet_num")
  set occupyBuffetNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "occupy_not_buffet_num")
  int get occupyNotBuffetNum => throw _privateConstructorUsedError;
  @JsonKey(name: "occupy_not_buffet_num")
  set occupyNotBuffetNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "occupy_wait_num")
  int get occupyWaitNum => throw _privateConstructorUsedError;
  @JsonKey(name: "occupy_wait_num")
  set occupyWaitNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "total_num")
  int get totalNum => throw _privateConstructorUsedError;
  @JsonKey(name: "total_num")
  set totalNum(int value) => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  int? get updateTime => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  set updateTime(int? value) => throw _privateConstructorUsedError;

  /// Serializes this Extra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraCopyWith<Extra> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraCopyWith<$Res> {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) then) =
      _$ExtraCopyWithImpl<$Res, Extra>;
  @useResult
  $Res call(
      {@JsonKey(name: "available_num") int availableNum,
      @JsonKey(name: "lock_num") int lockNum,
      @JsonKey(name: "occupy_buffet_num") int occupyBuffetNum,
      @JsonKey(name: "occupy_not_buffet_num") int occupyNotBuffetNum,
      @JsonKey(name: "occupy_wait_num") int occupyWaitNum,
      @JsonKey(name: "total_num") int totalNum,
      @JsonKey(name: "update_time") int? updateTime});
}

/// @nodoc
class _$ExtraCopyWithImpl<$Res, $Val extends Extra>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableNum = null,
    Object? lockNum = null,
    Object? occupyBuffetNum = null,
    Object? occupyNotBuffetNum = null,
    Object? occupyWaitNum = null,
    Object? totalNum = null,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      availableNum: null == availableNum
          ? _value.availableNum
          : availableNum // ignore: cast_nullable_to_non_nullable
              as int,
      lockNum: null == lockNum
          ? _value.lockNum
          : lockNum // ignore: cast_nullable_to_non_nullable
              as int,
      occupyBuffetNum: null == occupyBuffetNum
          ? _value.occupyBuffetNum
          : occupyBuffetNum // ignore: cast_nullable_to_non_nullable
              as int,
      occupyNotBuffetNum: null == occupyNotBuffetNum
          ? _value.occupyNotBuffetNum
          : occupyNotBuffetNum // ignore: cast_nullable_to_non_nullable
              as int,
      occupyWaitNum: null == occupyWaitNum
          ? _value.occupyWaitNum
          : occupyWaitNum // ignore: cast_nullable_to_non_nullable
              as int,
      totalNum: null == totalNum
          ? _value.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraImplCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$$ExtraImplCopyWith(
          _$ExtraImpl value, $Res Function(_$ExtraImpl) then) =
      __$$ExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "available_num") int availableNum,
      @JsonKey(name: "lock_num") int lockNum,
      @JsonKey(name: "occupy_buffet_num") int occupyBuffetNum,
      @JsonKey(name: "occupy_not_buffet_num") int occupyNotBuffetNum,
      @JsonKey(name: "occupy_wait_num") int occupyWaitNum,
      @JsonKey(name: "total_num") int totalNum,
      @JsonKey(name: "update_time") int? updateTime});
}

/// @nodoc
class __$$ExtraImplCopyWithImpl<$Res>
    extends _$ExtraCopyWithImpl<$Res, _$ExtraImpl>
    implements _$$ExtraImplCopyWith<$Res> {
  __$$ExtraImplCopyWithImpl(
      _$ExtraImpl _value, $Res Function(_$ExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableNum = null,
    Object? lockNum = null,
    Object? occupyBuffetNum = null,
    Object? occupyNotBuffetNum = null,
    Object? occupyWaitNum = null,
    Object? totalNum = null,
    Object? updateTime = freezed,
  }) {
    return _then(_$ExtraImpl(
      availableNum: null == availableNum
          ? _value.availableNum
          : availableNum // ignore: cast_nullable_to_non_nullable
              as int,
      lockNum: null == lockNum
          ? _value.lockNum
          : lockNum // ignore: cast_nullable_to_non_nullable
              as int,
      occupyBuffetNum: null == occupyBuffetNum
          ? _value.occupyBuffetNum
          : occupyBuffetNum // ignore: cast_nullable_to_non_nullable
              as int,
      occupyNotBuffetNum: null == occupyNotBuffetNum
          ? _value.occupyNotBuffetNum
          : occupyNotBuffetNum // ignore: cast_nullable_to_non_nullable
              as int,
      occupyWaitNum: null == occupyWaitNum
          ? _value.occupyWaitNum
          : occupyWaitNum // ignore: cast_nullable_to_non_nullable
              as int,
      totalNum: null == totalNum
          ? _value.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraImpl implements _Extra {
  _$ExtraImpl(
      {@JsonKey(name: "available_num") required this.availableNum,
      @JsonKey(name: "lock_num") required this.lockNum,
      @JsonKey(name: "occupy_buffet_num") required this.occupyBuffetNum,
      @JsonKey(name: "occupy_not_buffet_num") required this.occupyNotBuffetNum,
      @JsonKey(name: "occupy_wait_num") required this.occupyWaitNum,
      @JsonKey(name: "total_num") required this.totalNum,
      @JsonKey(name: "update_time") this.updateTime = 0});

  factory _$ExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraImplFromJson(json);

  @override
  @JsonKey(name: "available_num")
  int availableNum;
  @override
  @JsonKey(name: "lock_num")
  int lockNum;
  @override
  @JsonKey(name: "occupy_buffet_num")
  int occupyBuffetNum;
  @override
  @JsonKey(name: "occupy_not_buffet_num")
  int occupyNotBuffetNum;
  @override
  @JsonKey(name: "occupy_wait_num")
  int occupyWaitNum;
  @override
  @JsonKey(name: "total_num")
  int totalNum;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? updateTime;

  @override
  String toString() {
    return 'Extra(availableNum: $availableNum, lockNum: $lockNum, occupyBuffetNum: $occupyBuffetNum, occupyNotBuffetNum: $occupyNotBuffetNum, occupyWaitNum: $occupyWaitNum, totalNum: $totalNum, updateTime: $updateTime)';
  }

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      __$$ExtraImplCopyWithImpl<_$ExtraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraImplToJson(
      this,
    );
  }
}

abstract class _Extra implements Extra {
  factory _Extra(
      {@JsonKey(name: "available_num") required int availableNum,
      @JsonKey(name: "lock_num") required int lockNum,
      @JsonKey(name: "occupy_buffet_num") required int occupyBuffetNum,
      @JsonKey(name: "occupy_not_buffet_num") required int occupyNotBuffetNum,
      @JsonKey(name: "occupy_wait_num") required int occupyWaitNum,
      @JsonKey(name: "total_num") required int totalNum,
      @JsonKey(name: "update_time") int? updateTime}) = _$ExtraImpl;

  factory _Extra.fromJson(Map<String, dynamic> json) = _$ExtraImpl.fromJson;

  @override
  @JsonKey(name: "available_num")
  int get availableNum;
  @JsonKey(name: "available_num")
  set availableNum(int value);
  @override
  @JsonKey(name: "lock_num")
  int get lockNum;
  @JsonKey(name: "lock_num")
  set lockNum(int value);
  @override
  @JsonKey(name: "occupy_buffet_num")
  int get occupyBuffetNum;
  @JsonKey(name: "occupy_buffet_num")
  set occupyBuffetNum(int value);
  @override
  @JsonKey(name: "occupy_not_buffet_num")
  int get occupyNotBuffetNum;
  @JsonKey(name: "occupy_not_buffet_num")
  set occupyNotBuffetNum(int value);
  @override
  @JsonKey(name: "occupy_wait_num")
  int get occupyWaitNum;
  @JsonKey(name: "occupy_wait_num")
  set occupyWaitNum(int value);
  @override
  @JsonKey(name: "total_num")
  int get totalNum;
  @JsonKey(name: "total_num")
  set totalNum(int value);

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? get updateTime;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  set updateTime(int? value);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
