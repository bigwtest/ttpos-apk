// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsCartEditProducts _$GoodsCartEditProductsFromJson(
    Map<String, dynamic> json) {
  return _GoodsCartEditProducts.fromJson(json);
}

/// @nodoc
mixin _$GoodsCartEditProducts {
// 商品ID
  @JsonKey(name: 'uuid')
  int get uuid => throw _privateConstructorUsedError; // 商品数量
  @JsonKey(name: 'num')
  int get num => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_checked')
  bool get isChecked => throw _privateConstructorUsedError;

  /// Serializes this GoodsCartEditProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsCartEditProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsCartEditProductsCopyWith<GoodsCartEditProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsCartEditProductsCopyWith<$Res> {
  factory $GoodsCartEditProductsCopyWith(GoodsCartEditProducts value,
          $Res Function(GoodsCartEditProducts) then) =
      _$GoodsCartEditProductsCopyWithImpl<$Res, GoodsCartEditProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'num') int num,
      @JsonKey(name: 'is_checked') bool isChecked});
}

/// @nodoc
class _$GoodsCartEditProductsCopyWithImpl<$Res,
        $Val extends GoodsCartEditProducts>
    implements $GoodsCartEditProductsCopyWith<$Res> {
  _$GoodsCartEditProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsCartEditProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? num = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsCartEditProductsImplCopyWith<$Res>
    implements $GoodsCartEditProductsCopyWith<$Res> {
  factory _$$GoodsCartEditProductsImplCopyWith(
          _$GoodsCartEditProductsImpl value,
          $Res Function(_$GoodsCartEditProductsImpl) then) =
      __$$GoodsCartEditProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'num') int num,
      @JsonKey(name: 'is_checked') bool isChecked});
}

/// @nodoc
class __$$GoodsCartEditProductsImplCopyWithImpl<$Res>
    extends _$GoodsCartEditProductsCopyWithImpl<$Res,
        _$GoodsCartEditProductsImpl>
    implements _$$GoodsCartEditProductsImplCopyWith<$Res> {
  __$$GoodsCartEditProductsImplCopyWithImpl(_$GoodsCartEditProductsImpl _value,
      $Res Function(_$GoodsCartEditProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsCartEditProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? num = null,
    Object? isChecked = null,
  }) {
    return _then(_$GoodsCartEditProductsImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsCartEditProductsImpl implements _GoodsCartEditProducts {
  _$GoodsCartEditProductsImpl(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'num') required this.num,
      @JsonKey(name: 'is_checked') required this.isChecked});

  factory _$GoodsCartEditProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsCartEditProductsImplFromJson(json);

// 商品ID
  @override
  @JsonKey(name: 'uuid')
  final int uuid;
// 商品数量
  @override
  @JsonKey(name: 'num')
  final int num;
//
  @override
  @JsonKey(name: 'is_checked')
  final bool isChecked;

  @override
  String toString() {
    return 'GoodsCartEditProducts(uuid: $uuid, num: $num, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsCartEditProductsImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, num, isChecked);

  /// Create a copy of GoodsCartEditProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsCartEditProductsImplCopyWith<_$GoodsCartEditProductsImpl>
      get copyWith => __$$GoodsCartEditProductsImplCopyWithImpl<
          _$GoodsCartEditProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsCartEditProductsImplToJson(
      this,
    );
  }
}

abstract class _GoodsCartEditProducts implements GoodsCartEditProducts {
  factory _GoodsCartEditProducts(
          {@JsonKey(name: 'uuid') required final int uuid,
          @JsonKey(name: 'num') required final int num,
          @JsonKey(name: 'is_checked') required final bool isChecked}) =
      _$GoodsCartEditProductsImpl;

  factory _GoodsCartEditProducts.fromJson(Map<String, dynamic> json) =
      _$GoodsCartEditProductsImpl.fromJson;

// 商品ID
  @override
  @JsonKey(name: 'uuid')
  int get uuid; // 商品数量
  @override
  @JsonKey(name: 'num')
  int get num; //
  @override
  @JsonKey(name: 'is_checked')
  bool get isChecked;

  /// Create a copy of GoodsCartEditProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsCartEditProductsImplCopyWith<_$GoodsCartEditProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
