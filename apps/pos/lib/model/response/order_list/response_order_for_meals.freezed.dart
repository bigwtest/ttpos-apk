// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_order_for_meals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseOrderForMeals _$ResponseOrderForMealsFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderForMeals.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderForMeals {
  @JsonKey(name: "list")
  List<RespBillLists> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta get meta => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderForMeals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderForMeals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderForMealsCopyWith<ResponseOrderForMeals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderForMealsCopyWith<$Res> {
  factory $ResponseOrderForMealsCopyWith(ResponseOrderForMeals value,
          $Res Function(ResponseOrderForMeals) then) =
      _$ResponseOrderForMealsCopyWithImpl<$Res, ResponseOrderForMeals>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespBillLists> list,
      @JsonKey(name: "meta") Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResponseOrderForMealsCopyWithImpl<$Res,
        $Val extends ResponseOrderForMeals>
    implements $ResponseOrderForMealsCopyWith<$Res> {
  _$ResponseOrderForMealsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderForMeals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespBillLists>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  /// Create a copy of ResponseOrderForMeals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseOrderForMealsImplCopyWith<$Res>
    implements $ResponseOrderForMealsCopyWith<$Res> {
  factory _$$ResponseOrderForMealsImplCopyWith(
          _$ResponseOrderForMealsImpl value,
          $Res Function(_$ResponseOrderForMealsImpl) then) =
      __$$ResponseOrderForMealsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespBillLists> list,
      @JsonKey(name: "meta") Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ResponseOrderForMealsImplCopyWithImpl<$Res>
    extends _$ResponseOrderForMealsCopyWithImpl<$Res,
        _$ResponseOrderForMealsImpl>
    implements _$$ResponseOrderForMealsImplCopyWith<$Res> {
  __$$ResponseOrderForMealsImplCopyWithImpl(_$ResponseOrderForMealsImpl _value,
      $Res Function(_$ResponseOrderForMealsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderForMeals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$ResponseOrderForMealsImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespBillLists>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderForMealsImpl implements _ResponseOrderForMeals {
  _$ResponseOrderForMealsImpl(
      {@JsonKey(name: "list") required final List<RespBillLists> list,
      @JsonKey(name: "meta") required this.meta})
      : _list = list;

  factory _$ResponseOrderForMealsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseOrderForMealsImplFromJson(json);

  final List<RespBillLists> _list;
  @override
  @JsonKey(name: "list")
  List<RespBillLists> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "meta")
  final Meta meta;

  @override
  String toString() {
    return 'ResponseOrderForMeals(list: $list, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderForMealsImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), meta);

  /// Create a copy of ResponseOrderForMeals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderForMealsImplCopyWith<_$ResponseOrderForMealsImpl>
      get copyWith => __$$ResponseOrderForMealsImplCopyWithImpl<
          _$ResponseOrderForMealsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderForMealsImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderForMeals implements ResponseOrderForMeals {
  factory _ResponseOrderForMeals(
          {@JsonKey(name: "list") required final List<RespBillLists> list,
          @JsonKey(name: "meta") required final Meta meta}) =
      _$ResponseOrderForMealsImpl;

  factory _ResponseOrderForMeals.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderForMealsImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespBillLists> get list;
  @override
  @JsonKey(name: "meta")
  Meta get meta;

  /// Create a copy of ResponseOrderForMeals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderForMealsImplCopyWith<_$ResponseOrderForMealsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
