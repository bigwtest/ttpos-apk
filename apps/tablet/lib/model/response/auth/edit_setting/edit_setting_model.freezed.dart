// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditSettingModel _$EditSettingModelFromJson(Map<String, dynamic> json) {
  return _EditSettingModel.fromJson(json);
}

/// @nodoc
mixin _$EditSettingModel {
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;

  /// Serializes this EditSettingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditSettingModelCopyWith<EditSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSettingModelCopyWith<$Res> {
  factory $EditSettingModelCopyWith(
          EditSettingModel value, $Res Function(EditSettingModel) then) =
      _$EditSettingModelCopyWithImpl<$Res, EditSettingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "remark") String? remark});
}

/// @nodoc
class _$EditSettingModelCopyWithImpl<$Res, $Val extends EditSettingModel>
    implements $EditSettingModelCopyWith<$Res> {
  _$EditSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? remark = freezed,
  }) {
    return _then(_value.copyWith(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditSettingModelImplCopyWith<$Res>
    implements $EditSettingModelCopyWith<$Res> {
  factory _$$EditSettingModelImplCopyWith(_$EditSettingModelImpl value,
          $Res Function(_$EditSettingModelImpl) then) =
      __$$EditSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "remark") String? remark});
}

/// @nodoc
class __$$EditSettingModelImplCopyWithImpl<$Res>
    extends _$EditSettingModelCopyWithImpl<$Res, _$EditSettingModelImpl>
    implements _$$EditSettingModelImplCopyWith<$Res> {
  __$$EditSettingModelImplCopyWithImpl(_$EditSettingModelImpl _value,
      $Res Function(_$EditSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? remark = freezed,
  }) {
    return _then(_$EditSettingModelImpl(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditSettingModelImpl implements _EditSettingModel {
  const _$EditSettingModelImpl(
      {@JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "remark") this.remark});

  factory _$EditSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditSettingModelImplFromJson(json);

  @override
  @JsonKey(name: "desk_uuid")
  final int deskUuid;
  @override
  @JsonKey(name: "remark")
  final String? remark;

  @override
  String toString() {
    return 'EditSettingModel(deskUuid: $deskUuid, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSettingModelImpl &&
            (identical(other.deskUuid, deskUuid) ||
                other.deskUuid == deskUuid) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deskUuid, remark);

  /// Create a copy of EditSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSettingModelImplCopyWith<_$EditSettingModelImpl> get copyWith =>
      __$$EditSettingModelImplCopyWithImpl<_$EditSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSettingModelImplToJson(
      this,
    );
  }
}

abstract class _EditSettingModel implements EditSettingModel {
  const factory _EditSettingModel(
      {@JsonKey(name: "desk_uuid") required final int deskUuid,
      @JsonKey(name: "remark") final String? remark}) = _$EditSettingModelImpl;

  factory _EditSettingModel.fromJson(Map<String, dynamic> json) =
      _$EditSettingModelImpl.fromJson;

  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid;
  @override
  @JsonKey(name: "remark")
  String? get remark;

  /// Create a copy of EditSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditSettingModelImplCopyWith<_$EditSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
