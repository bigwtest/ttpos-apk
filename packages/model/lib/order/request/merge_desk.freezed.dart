// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merge_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestMergeDesk _$RequestMergeDeskFromJson(Map<String, dynamic> json) {
  return _RequestMergeDesk.fromJson(json);
}

/// @nodoc
mixin _$RequestMergeDesk {
// 桌台UUID列表
  @JsonKey(name: "desk_uuids")
  List<int> get deskUuids => throw _privateConstructorUsedError; // 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestMergeDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestMergeDeskCopyWith<RequestMergeDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMergeDeskCopyWith<$Res> {
  factory $RequestMergeDeskCopyWith(
          RequestMergeDesk value, $Res Function(RequestMergeDesk) then) =
      _$RequestMergeDeskCopyWithImpl<$Res, RequestMergeDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuids") List<int> deskUuids,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});
}

/// @nodoc
class _$RequestMergeDeskCopyWithImpl<$Res, $Val extends RequestMergeDesk>
    implements $RequestMergeDeskCopyWith<$Res> {
  _$RequestMergeDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuids = null,
    Object? saleBillUuid = null,
  }) {
    return _then(_value.copyWith(
      deskUuids: null == deskUuids
          ? _value.deskUuids
          : deskUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestMergeDeskImplCopyWith<$Res>
    implements $RequestMergeDeskCopyWith<$Res> {
  factory _$$RequestMergeDeskImplCopyWith(_$RequestMergeDeskImpl value,
          $Res Function(_$RequestMergeDeskImpl) then) =
      __$$RequestMergeDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuids") List<int> deskUuids,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});
}

/// @nodoc
class __$$RequestMergeDeskImplCopyWithImpl<$Res>
    extends _$RequestMergeDeskCopyWithImpl<$Res, _$RequestMergeDeskImpl>
    implements _$$RequestMergeDeskImplCopyWith<$Res> {
  __$$RequestMergeDeskImplCopyWithImpl(_$RequestMergeDeskImpl _value,
      $Res Function(_$RequestMergeDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuids = null,
    Object? saleBillUuid = null,
  }) {
    return _then(_$RequestMergeDeskImpl(
      deskUuids: null == deskUuids
          ? _value._deskUuids
          : deskUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestMergeDeskImpl implements _RequestMergeDesk {
  _$RequestMergeDeskImpl(
      {@JsonKey(name: "desk_uuids") required final List<int> deskUuids,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid})
      : _deskUuids = deskUuids;

  factory _$RequestMergeDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestMergeDeskImplFromJson(json);

// 桌台UUID列表
  final List<int> _deskUuids;
// 桌台UUID列表
  @override
  @JsonKey(name: "desk_uuids")
  List<int> get deskUuids {
    if (_deskUuids is EqualUnmodifiableListView) return _deskUuids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deskUuids);
  }

// 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;

  @override
  String toString() {
    return 'RequestMergeDesk(deskUuids: $deskUuids, saleBillUuid: $saleBillUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestMergeDeskImpl &&
            const DeepCollectionEquality()
                .equals(other._deskUuids, _deskUuids) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_deskUuids), saleBillUuid);

  /// Create a copy of RequestMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestMergeDeskImplCopyWith<_$RequestMergeDeskImpl> get copyWith =>
      __$$RequestMergeDeskImplCopyWithImpl<_$RequestMergeDeskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestMergeDeskImplToJson(
      this,
    );
  }
}

abstract class _RequestMergeDesk implements RequestMergeDesk {
  factory _RequestMergeDesk(
          {@JsonKey(name: "desk_uuids") required final List<int> deskUuids,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid}) =
      _$RequestMergeDeskImpl;

  factory _RequestMergeDesk.fromJson(Map<String, dynamic> json) =
      _$RequestMergeDeskImpl.fromJson;

// 桌台UUID列表
  @override
  @JsonKey(name: "desk_uuids")
  List<int> get deskUuids; // 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;

  /// Create a copy of RequestMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestMergeDeskImplCopyWith<_$RequestMergeDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
