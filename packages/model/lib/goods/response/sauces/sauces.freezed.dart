// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sauces.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsSauces _$GoodsSaucesFromJson(Map<String, dynamic> json) {
  return _GoodsSauces.fromJson(json);
}

/// @nodoc
mixin _$GoodsSauces {
// 是否默认选中
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected => throw _privateConstructorUsedError; // 是否默认选中
  @JsonKey(name: "is_default_selected")
  set isDefaultSelected(bool value) =>
      throw _privateConstructorUsedError; // 商品小料名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 商品小料名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value) =>
      throw _privateConstructorUsedError; // 商品小料价格
  @JsonKey(name: "price")
  SafetyNumber get price => throw _privateConstructorUsedError; // 商品小料价格
  @JsonKey(name: "price")
  set price(SafetyNumber value) =>
      throw _privateConstructorUsedError; // 商品小料UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 商品小料UUID
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError; // 商品库存数量
  @JsonKey(name: "stock_num")
  int get stockNum => throw _privateConstructorUsedError; // 商品库存数量
  @JsonKey(name: "stock_num")
  set stockNum(int value) => throw _privateConstructorUsedError;

  /// Serializes this GoodsSauces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsSauces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsSaucesCopyWith<GoodsSauces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsSaucesCopyWith<$Res> {
  factory $GoodsSaucesCopyWith(
          GoodsSauces value, $Res Function(GoodsSauces) then) =
      _$GoodsSaucesCopyWithImpl<$Res, GoodsSauces>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "stock_num") int stockNum});

  $LocaleNameCopyWith<$Res> get localeName;
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class _$GoodsSaucesCopyWithImpl<$Res, $Val extends GoodsSauces>
    implements $GoodsSaucesCopyWith<$Res> {
  _$GoodsSaucesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsSauces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? price = null,
    Object? uuid = null,
    Object? stockNum = null,
  }) {
    return _then(_value.copyWith(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of GoodsSauces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of GoodsSauces
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
abstract class _$$GoodsSaucesImplCopyWith<$Res>
    implements $GoodsSaucesCopyWith<$Res> {
  factory _$$GoodsSaucesImplCopyWith(
          _$GoodsSaucesImpl value, $Res Function(_$GoodsSaucesImpl) then) =
      __$$GoodsSaucesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "stock_num") int stockNum});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class __$$GoodsSaucesImplCopyWithImpl<$Res>
    extends _$GoodsSaucesCopyWithImpl<$Res, _$GoodsSaucesImpl>
    implements _$$GoodsSaucesImplCopyWith<$Res> {
  __$$GoodsSaucesImplCopyWithImpl(
      _$GoodsSaucesImpl _value, $Res Function(_$GoodsSaucesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsSauces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? price = null,
    Object? uuid = null,
    Object? stockNum = null,
  }) {
    return _then(_$GoodsSaucesImpl(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsSaucesImpl implements _GoodsSauces {
  _$GoodsSaucesImpl(
      {@JsonKey(name: "is_default_selected") required this.isDefaultSelected,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "stock_num") required this.stockNum});

  factory _$GoodsSaucesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsSaucesImplFromJson(json);

// 是否默认选中
  @override
  @JsonKey(name: "is_default_selected")
  bool isDefaultSelected;
// 商品小料名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName localeName;
// 商品小料价格
  @override
  @JsonKey(name: "price")
  SafetyNumber price;
// 商品小料UUID
  @override
  @JsonKey(name: "uuid")
  int uuid;
// 商品库存数量
  @override
  @JsonKey(name: "stock_num")
  int stockNum;

  @override
  String toString() {
    return 'GoodsSauces(isDefaultSelected: $isDefaultSelected, localeName: $localeName, price: $price, uuid: $uuid, stockNum: $stockNum)';
  }

  /// Create a copy of GoodsSauces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsSaucesImplCopyWith<_$GoodsSaucesImpl> get copyWith =>
      __$$GoodsSaucesImplCopyWithImpl<_$GoodsSaucesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsSaucesImplToJson(
      this,
    );
  }
}

abstract class _GoodsSauces implements GoodsSauces {
  factory _GoodsSauces(
      {@JsonKey(name: "is_default_selected") required bool isDefaultSelected,
      @JsonKey(name: "locale_name") required LocaleName localeName,
      @JsonKey(name: "price") required SafetyNumber price,
      @JsonKey(name: "uuid") required int uuid,
      @JsonKey(name: "stock_num") required int stockNum}) = _$GoodsSaucesImpl;

  factory _GoodsSauces.fromJson(Map<String, dynamic> json) =
      _$GoodsSaucesImpl.fromJson;

// 是否默认选中
  @override
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected; // 是否默认选中
  @JsonKey(name: "is_default_selected")
  set isDefaultSelected(bool value); // 商品小料名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 商品小料名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value); // 商品小料价格
  @override
  @JsonKey(name: "price")
  SafetyNumber get price; // 商品小料价格
  @JsonKey(name: "price")
  set price(SafetyNumber value); // 商品小料UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 商品小料UUID
  @JsonKey(name: "uuid")
  set uuid(int value); // 商品库存数量
  @override
  @JsonKey(name: "stock_num")
  int get stockNum; // 商品库存数量
  @JsonKey(name: "stock_num")
  set stockNum(int value);

  /// Create a copy of GoodsSauces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsSaucesImplCopyWith<_$GoodsSaucesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoodsSaucesList _$GoodsSaucesListFromJson(Map<String, dynamic> json) {
  return _GoodsSaucesList.fromJson(json);
}

/// @nodoc
mixin _$GoodsSaucesList {
// 是否必选小料
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError; // 小料列表
  @JsonKey(name: "list")
  List<GoodsSauces> get list => throw _privateConstructorUsedError; // 小料最大可选数量
  @JsonKey(name: "max_select")
  int get maxSelect => throw _privateConstructorUsedError;

  /// Serializes this GoodsSaucesList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsSaucesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsSaucesListCopyWith<GoodsSaucesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsSaucesListCopyWith<$Res> {
  factory $GoodsSaucesListCopyWith(
          GoodsSaucesList value, $Res Function(GoodsSaucesList) then) =
      _$GoodsSaucesListCopyWithImpl<$Res, GoodsSaucesList>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "list") List<GoodsSauces> list,
      @JsonKey(name: "max_select") int maxSelect});
}

/// @nodoc
class _$GoodsSaucesListCopyWithImpl<$Res, $Val extends GoodsSaucesList>
    implements $GoodsSaucesListCopyWith<$Res> {
  _$GoodsSaucesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsSaucesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMust = null,
    Object? list = null,
    Object? maxSelect = null,
  }) {
    return _then(_value.copyWith(
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GoodsSauces>,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsSaucesListImplCopyWith<$Res>
    implements $GoodsSaucesListCopyWith<$Res> {
  factory _$$GoodsSaucesListImplCopyWith(_$GoodsSaucesListImpl value,
          $Res Function(_$GoodsSaucesListImpl) then) =
      __$$GoodsSaucesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "list") List<GoodsSauces> list,
      @JsonKey(name: "max_select") int maxSelect});
}

/// @nodoc
class __$$GoodsSaucesListImplCopyWithImpl<$Res>
    extends _$GoodsSaucesListCopyWithImpl<$Res, _$GoodsSaucesListImpl>
    implements _$$GoodsSaucesListImplCopyWith<$Res> {
  __$$GoodsSaucesListImplCopyWithImpl(
      _$GoodsSaucesListImpl _value, $Res Function(_$GoodsSaucesListImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsSaucesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMust = null,
    Object? list = null,
    Object? maxSelect = null,
  }) {
    return _then(_$GoodsSaucesListImpl(
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GoodsSauces>,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsSaucesListImpl implements _GoodsSaucesList {
  const _$GoodsSaucesListImpl(
      {@JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: "list") required final List<GoodsSauces> list,
      @JsonKey(name: "max_select") required this.maxSelect})
      : _list = list;

  factory _$GoodsSaucesListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsSaucesListImplFromJson(json);

// 是否必选小料
  @override
  @JsonKey(name: "is_must")
  final bool isMust;
// 小料列表
  final List<GoodsSauces> _list;
// 小料列表
  @override
  @JsonKey(name: "list")
  List<GoodsSauces> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

// 小料最大可选数量
  @override
  @JsonKey(name: "max_select")
  final int maxSelect;

  @override
  String toString() {
    return 'GoodsSaucesList(isMust: $isMust, list: $list, maxSelect: $maxSelect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsSaucesListImpl &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isMust,
      const DeepCollectionEquality().hash(_list), maxSelect);

  /// Create a copy of GoodsSaucesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsSaucesListImplCopyWith<_$GoodsSaucesListImpl> get copyWith =>
      __$$GoodsSaucesListImplCopyWithImpl<_$GoodsSaucesListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsSaucesListImplToJson(
      this,
    );
  }
}

abstract class _GoodsSaucesList implements GoodsSaucesList {
  const factory _GoodsSaucesList(
          {@JsonKey(name: "is_must") required final bool isMust,
          @JsonKey(name: "list") required final List<GoodsSauces> list,
          @JsonKey(name: "max_select") required final int maxSelect}) =
      _$GoodsSaucesListImpl;

  factory _GoodsSaucesList.fromJson(Map<String, dynamic> json) =
      _$GoodsSaucesListImpl.fromJson;

// 是否必选小料
  @override
  @JsonKey(name: "is_must")
  bool get isMust; // 小料列表
  @override
  @JsonKey(name: "list")
  List<GoodsSauces> get list; // 小料最大可选数量
  @override
  @JsonKey(name: "max_select")
  int get maxSelect;

  /// Create a copy of GoodsSaucesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsSaucesListImplCopyWith<_$GoodsSaucesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
