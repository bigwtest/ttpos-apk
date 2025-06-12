// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseAcceptDetail _$ResponseAcceptDetailFromJson(Map<String, dynamic> json) {
  return _ResponseAcceptDetail.fromJson(json);
}

/// @nodoc
mixin _$ResponseAcceptDetail {
  @JsonKey(name: "accepted_product")
  BaseList<AcceptProduct> get acceptedProductList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "h5_order_detail")
  AcceptOrderDetail get h5OrderDetail => throw _privateConstructorUsedError;
  @JsonKey(name: "new_product")
  BaseList<AcceptProduct> get newProductList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "operation")
  BaseList<AcceptOperationLog> get operationLogList =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseAcceptDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseAcceptDetailCopyWith<ResponseAcceptDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAcceptDetailCopyWith<$Res> {
  factory $ResponseAcceptDetailCopyWith(ResponseAcceptDetail value,
          $Res Function(ResponseAcceptDetail) then) =
      _$ResponseAcceptDetailCopyWithImpl<$Res, ResponseAcceptDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "accepted_product")
      BaseList<AcceptProduct> acceptedProductList,
      @JsonKey(name: "h5_order_detail") AcceptOrderDetail h5OrderDetail,
      @JsonKey(name: "new_product") BaseList<AcceptProduct> newProductList,
      @JsonKey(name: "operation")
      BaseList<AcceptOperationLog> operationLogList});

  $BaseListCopyWith<AcceptProduct, $Res> get acceptedProductList;
  $AcceptOrderDetailCopyWith<$Res> get h5OrderDetail;
  $BaseListCopyWith<AcceptProduct, $Res> get newProductList;
  $BaseListCopyWith<AcceptOperationLog, $Res> get operationLogList;
}

/// @nodoc
class _$ResponseAcceptDetailCopyWithImpl<$Res,
        $Val extends ResponseAcceptDetail>
    implements $ResponseAcceptDetailCopyWith<$Res> {
  _$ResponseAcceptDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedProductList = null,
    Object? h5OrderDetail = null,
    Object? newProductList = null,
    Object? operationLogList = null,
  }) {
    return _then(_value.copyWith(
      acceptedProductList: null == acceptedProductList
          ? _value.acceptedProductList
          : acceptedProductList // ignore: cast_nullable_to_non_nullable
              as BaseList<AcceptProduct>,
      h5OrderDetail: null == h5OrderDetail
          ? _value.h5OrderDetail
          : h5OrderDetail // ignore: cast_nullable_to_non_nullable
              as AcceptOrderDetail,
      newProductList: null == newProductList
          ? _value.newProductList
          : newProductList // ignore: cast_nullable_to_non_nullable
              as BaseList<AcceptProduct>,
      operationLogList: null == operationLogList
          ? _value.operationLogList
          : operationLogList // ignore: cast_nullable_to_non_nullable
              as BaseList<AcceptOperationLog>,
    ) as $Val);
  }

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<AcceptProduct, $Res> get acceptedProductList {
    return $BaseListCopyWith<AcceptProduct, $Res>(_value.acceptedProductList,
        (value) {
      return _then(_value.copyWith(acceptedProductList: value) as $Val);
    });
  }

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcceptOrderDetailCopyWith<$Res> get h5OrderDetail {
    return $AcceptOrderDetailCopyWith<$Res>(_value.h5OrderDetail, (value) {
      return _then(_value.copyWith(h5OrderDetail: value) as $Val);
    });
  }

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<AcceptProduct, $Res> get newProductList {
    return $BaseListCopyWith<AcceptProduct, $Res>(_value.newProductList,
        (value) {
      return _then(_value.copyWith(newProductList: value) as $Val);
    });
  }

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<AcceptOperationLog, $Res> get operationLogList {
    return $BaseListCopyWith<AcceptOperationLog, $Res>(_value.operationLogList,
        (value) {
      return _then(_value.copyWith(operationLogList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseAcceptDetailImplCopyWith<$Res>
    implements $ResponseAcceptDetailCopyWith<$Res> {
  factory _$$ResponseAcceptDetailImplCopyWith(_$ResponseAcceptDetailImpl value,
          $Res Function(_$ResponseAcceptDetailImpl) then) =
      __$$ResponseAcceptDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "accepted_product")
      BaseList<AcceptProduct> acceptedProductList,
      @JsonKey(name: "h5_order_detail") AcceptOrderDetail h5OrderDetail,
      @JsonKey(name: "new_product") BaseList<AcceptProduct> newProductList,
      @JsonKey(name: "operation")
      BaseList<AcceptOperationLog> operationLogList});

  @override
  $BaseListCopyWith<AcceptProduct, $Res> get acceptedProductList;
  @override
  $AcceptOrderDetailCopyWith<$Res> get h5OrderDetail;
  @override
  $BaseListCopyWith<AcceptProduct, $Res> get newProductList;
  @override
  $BaseListCopyWith<AcceptOperationLog, $Res> get operationLogList;
}

/// @nodoc
class __$$ResponseAcceptDetailImplCopyWithImpl<$Res>
    extends _$ResponseAcceptDetailCopyWithImpl<$Res, _$ResponseAcceptDetailImpl>
    implements _$$ResponseAcceptDetailImplCopyWith<$Res> {
  __$$ResponseAcceptDetailImplCopyWithImpl(_$ResponseAcceptDetailImpl _value,
      $Res Function(_$ResponseAcceptDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptedProductList = null,
    Object? h5OrderDetail = null,
    Object? newProductList = null,
    Object? operationLogList = null,
  }) {
    return _then(_$ResponseAcceptDetailImpl(
      acceptedProductList: null == acceptedProductList
          ? _value.acceptedProductList
          : acceptedProductList // ignore: cast_nullable_to_non_nullable
              as BaseList<AcceptProduct>,
      h5OrderDetail: null == h5OrderDetail
          ? _value.h5OrderDetail
          : h5OrderDetail // ignore: cast_nullable_to_non_nullable
              as AcceptOrderDetail,
      newProductList: null == newProductList
          ? _value.newProductList
          : newProductList // ignore: cast_nullable_to_non_nullable
              as BaseList<AcceptProduct>,
      operationLogList: null == operationLogList
          ? _value.operationLogList
          : operationLogList // ignore: cast_nullable_to_non_nullable
              as BaseList<AcceptOperationLog>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseAcceptDetailImpl implements _ResponseAcceptDetail {
  const _$ResponseAcceptDetailImpl(
      {@JsonKey(name: "accepted_product") required this.acceptedProductList,
      @JsonKey(name: "h5_order_detail") required this.h5OrderDetail,
      @JsonKey(name: "new_product") required this.newProductList,
      @JsonKey(name: "operation") required this.operationLogList});

  factory _$ResponseAcceptDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseAcceptDetailImplFromJson(json);

  @override
  @JsonKey(name: "accepted_product")
  final BaseList<AcceptProduct> acceptedProductList;
  @override
  @JsonKey(name: "h5_order_detail")
  final AcceptOrderDetail h5OrderDetail;
  @override
  @JsonKey(name: "new_product")
  final BaseList<AcceptProduct> newProductList;
  @override
  @JsonKey(name: "operation")
  final BaseList<AcceptOperationLog> operationLogList;

  @override
  String toString() {
    return 'ResponseAcceptDetail(acceptedProductList: $acceptedProductList, h5OrderDetail: $h5OrderDetail, newProductList: $newProductList, operationLogList: $operationLogList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAcceptDetailImpl &&
            (identical(other.acceptedProductList, acceptedProductList) ||
                other.acceptedProductList == acceptedProductList) &&
            (identical(other.h5OrderDetail, h5OrderDetail) ||
                other.h5OrderDetail == h5OrderDetail) &&
            (identical(other.newProductList, newProductList) ||
                other.newProductList == newProductList) &&
            (identical(other.operationLogList, operationLogList) ||
                other.operationLogList == operationLogList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, acceptedProductList,
      h5OrderDetail, newProductList, operationLogList);

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAcceptDetailImplCopyWith<_$ResponseAcceptDetailImpl>
      get copyWith =>
          __$$ResponseAcceptDetailImplCopyWithImpl<_$ResponseAcceptDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAcceptDetailImplToJson(
      this,
    );
  }
}

abstract class _ResponseAcceptDetail implements ResponseAcceptDetail {
  const factory _ResponseAcceptDetail(
          {@JsonKey(name: "accepted_product")
          required final BaseList<AcceptProduct> acceptedProductList,
          @JsonKey(name: "h5_order_detail")
          required final AcceptOrderDetail h5OrderDetail,
          @JsonKey(name: "new_product")
          required final BaseList<AcceptProduct> newProductList,
          @JsonKey(name: "operation")
          required final BaseList<AcceptOperationLog> operationLogList}) =
      _$ResponseAcceptDetailImpl;

  factory _ResponseAcceptDetail.fromJson(Map<String, dynamic> json) =
      _$ResponseAcceptDetailImpl.fromJson;

  @override
  @JsonKey(name: "accepted_product")
  BaseList<AcceptProduct> get acceptedProductList;
  @override
  @JsonKey(name: "h5_order_detail")
  AcceptOrderDetail get h5OrderDetail;
  @override
  @JsonKey(name: "new_product")
  BaseList<AcceptProduct> get newProductList;
  @override
  @JsonKey(name: "operation")
  BaseList<AcceptOperationLog> get operationLogList;

  /// Create a copy of ResponseAcceptDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseAcceptDetailImplCopyWith<_$ResponseAcceptDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
