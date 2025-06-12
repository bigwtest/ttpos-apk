// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderMustPlan _$OrderMustPlanFromJson(Map<String, dynamic> json) {
  return _OrderMustPlan.fromJson(json);
}

/// @nodoc
mixin _$OrderMustPlan {
  @JsonKey(name: "can_change_num")
  bool get canChangeNum => throw _privateConstructorUsedError;
  @JsonKey(name: "must_rule")
  int get mustRule => throw _privateConstructorUsedError;
  @JsonKey(name: "must_type")
  int get mustType => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "need_num")
  int get needNum => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  BaseList<MustPlanProductWrapper> get products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "selected_num")
  int get selectedNum => throw _privateConstructorUsedError;

  /// Serializes this OrderMustPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderMustPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderMustPlanCopyWith<OrderMustPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMustPlanCopyWith<$Res> {
  factory $OrderMustPlanCopyWith(
          OrderMustPlan value, $Res Function(OrderMustPlan) then) =
      _$OrderMustPlanCopyWithImpl<$Res, OrderMustPlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "must_rule") int mustRule,
      @JsonKey(name: "must_type") int mustType,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "products") BaseList<MustPlanProductWrapper> products,
      @JsonKey(name: "selected_num") int selectedNum});

  $BaseListCopyWith<MustPlanProductWrapper, $Res> get products;
}

/// @nodoc
class _$OrderMustPlanCopyWithImpl<$Res, $Val extends OrderMustPlan>
    implements $OrderMustPlanCopyWith<$Res> {
  _$OrderMustPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderMustPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canChangeNum = null,
    Object? mustRule = null,
    Object? mustType = null,
    Object? name = null,
    Object? needNum = null,
    Object? products = null,
    Object? selectedNum = null,
  }) {
    return _then(_value.copyWith(
      canChangeNum: null == canChangeNum
          ? _value.canChangeNum
          : canChangeNum // ignore: cast_nullable_to_non_nullable
              as bool,
      mustRule: null == mustRule
          ? _value.mustRule
          : mustRule // ignore: cast_nullable_to_non_nullable
              as int,
      mustType: null == mustType
          ? _value.mustType
          : mustType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      needNum: null == needNum
          ? _value.needNum
          : needNum // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductWrapper>,
      selectedNum: null == selectedNum
          ? _value.selectedNum
          : selectedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of OrderMustPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustPlanProductWrapper, $Res> get products {
    return $BaseListCopyWith<MustPlanProductWrapper, $Res>(_value.products,
        (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderMustPlanImplCopyWith<$Res>
    implements $OrderMustPlanCopyWith<$Res> {
  factory _$$OrderMustPlanImplCopyWith(
          _$OrderMustPlanImpl value, $Res Function(_$OrderMustPlanImpl) then) =
      __$$OrderMustPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "must_rule") int mustRule,
      @JsonKey(name: "must_type") int mustType,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "products") BaseList<MustPlanProductWrapper> products,
      @JsonKey(name: "selected_num") int selectedNum});

  @override
  $BaseListCopyWith<MustPlanProductWrapper, $Res> get products;
}

/// @nodoc
class __$$OrderMustPlanImplCopyWithImpl<$Res>
    extends _$OrderMustPlanCopyWithImpl<$Res, _$OrderMustPlanImpl>
    implements _$$OrderMustPlanImplCopyWith<$Res> {
  __$$OrderMustPlanImplCopyWithImpl(
      _$OrderMustPlanImpl _value, $Res Function(_$OrderMustPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderMustPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canChangeNum = null,
    Object? mustRule = null,
    Object? mustType = null,
    Object? name = null,
    Object? needNum = null,
    Object? products = null,
    Object? selectedNum = null,
  }) {
    return _then(_$OrderMustPlanImpl(
      canChangeNum: null == canChangeNum
          ? _value.canChangeNum
          : canChangeNum // ignore: cast_nullable_to_non_nullable
              as bool,
      mustRule: null == mustRule
          ? _value.mustRule
          : mustRule // ignore: cast_nullable_to_non_nullable
              as int,
      mustType: null == mustType
          ? _value.mustType
          : mustType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      needNum: null == needNum
          ? _value.needNum
          : needNum // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductWrapper>,
      selectedNum: null == selectedNum
          ? _value.selectedNum
          : selectedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderMustPlanImpl implements _OrderMustPlan {
  const _$OrderMustPlanImpl(
      {@JsonKey(name: "can_change_num") required this.canChangeNum,
      @JsonKey(name: "must_rule") required this.mustRule,
      @JsonKey(name: "must_type") required this.mustType,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "need_num") required this.needNum,
      @JsonKey(name: "products") required this.products,
      @JsonKey(name: "selected_num") required this.selectedNum});

  factory _$OrderMustPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderMustPlanImplFromJson(json);

  @override
  @JsonKey(name: "can_change_num")
  final bool canChangeNum;
  @override
  @JsonKey(name: "must_rule")
  final int mustRule;
  @override
  @JsonKey(name: "must_type")
  final int mustType;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "need_num")
  final int needNum;
  @override
  @JsonKey(name: "products")
  final BaseList<MustPlanProductWrapper> products;
  @override
  @JsonKey(name: "selected_num")
  final int selectedNum;

  @override
  String toString() {
    return 'OrderMustPlan(canChangeNum: $canChangeNum, mustRule: $mustRule, mustType: $mustType, name: $name, needNum: $needNum, products: $products, selectedNum: $selectedNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderMustPlanImpl &&
            (identical(other.canChangeNum, canChangeNum) ||
                other.canChangeNum == canChangeNum) &&
            (identical(other.mustRule, mustRule) ||
                other.mustRule == mustRule) &&
            (identical(other.mustType, mustType) ||
                other.mustType == mustType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.needNum, needNum) || other.needNum == needNum) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.selectedNum, selectedNum) ||
                other.selectedNum == selectedNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, canChangeNum, mustRule, mustType,
      name, needNum, products, selectedNum);

  /// Create a copy of OrderMustPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderMustPlanImplCopyWith<_$OrderMustPlanImpl> get copyWith =>
      __$$OrderMustPlanImplCopyWithImpl<_$OrderMustPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderMustPlanImplToJson(
      this,
    );
  }
}

abstract class _OrderMustPlan implements OrderMustPlan {
  const factory _OrderMustPlan(
          {@JsonKey(name: "can_change_num") required final bool canChangeNum,
          @JsonKey(name: "must_rule") required final int mustRule,
          @JsonKey(name: "must_type") required final int mustType,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "need_num") required final int needNum,
          @JsonKey(name: "products")
          required final BaseList<MustPlanProductWrapper> products,
          @JsonKey(name: "selected_num") required final int selectedNum}) =
      _$OrderMustPlanImpl;

  factory _OrderMustPlan.fromJson(Map<String, dynamic> json) =
      _$OrderMustPlanImpl.fromJson;

  @override
  @JsonKey(name: "can_change_num")
  bool get canChangeNum;
  @override
  @JsonKey(name: "must_rule")
  int get mustRule;
  @override
  @JsonKey(name: "must_type")
  int get mustType;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "need_num")
  int get needNum;
  @override
  @JsonKey(name: "products")
  BaseList<MustPlanProductWrapper> get products;
  @override
  @JsonKey(name: "selected_num")
  int get selectedNum;

  /// Create a copy of OrderMustPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderMustPlanImplCopyWith<_$OrderMustPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
