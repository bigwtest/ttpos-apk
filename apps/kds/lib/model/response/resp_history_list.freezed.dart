// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_history_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseHistoryList _$ResponseHistoryListFromJson(Map<String, dynamic> json) {
  return _ResponseHistoryList.fromJson(json);
}

/// @nodoc
mixin _$ResponseHistoryList {
  @JsonKey(name: "list")
  List<RespProductionGroup> get list => throw _privateConstructorUsedError;

  /// Serializes this ResponseHistoryList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseHistoryListCopyWith<ResponseHistoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseHistoryListCopyWith<$Res> {
  factory $ResponseHistoryListCopyWith(
          ResponseHistoryList value, $Res Function(ResponseHistoryList) then) =
      _$ResponseHistoryListCopyWithImpl<$Res, ResponseHistoryList>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductionGroup> list});
}

/// @nodoc
class _$ResponseHistoryListCopyWithImpl<$Res, $Val extends ResponseHistoryList>
    implements $ResponseHistoryListCopyWith<$Res> {
  _$ResponseHistoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseHistoryList
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
              as List<RespProductionGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseHistoryListImplCopyWith<$Res>
    implements $ResponseHistoryListCopyWith<$Res> {
  factory _$$ResponseHistoryListImplCopyWith(_$ResponseHistoryListImpl value,
          $Res Function(_$ResponseHistoryListImpl) then) =
      __$$ResponseHistoryListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductionGroup> list});
}

/// @nodoc
class __$$ResponseHistoryListImplCopyWithImpl<$Res>
    extends _$ResponseHistoryListCopyWithImpl<$Res, _$ResponseHistoryListImpl>
    implements _$$ResponseHistoryListImplCopyWith<$Res> {
  __$$ResponseHistoryListImplCopyWithImpl(_$ResponseHistoryListImpl _value,
      $Res Function(_$ResponseHistoryListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ResponseHistoryListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductionGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseHistoryListImpl implements _ResponseHistoryList {
  _$ResponseHistoryListImpl(
      {@JsonKey(name: "list") required final List<RespProductionGroup> list})
      : _list = list;

  factory _$ResponseHistoryListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseHistoryListImplFromJson(json);

  final List<RespProductionGroup> _list;
  @override
  @JsonKey(name: "list")
  List<RespProductionGroup> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ResponseHistoryList(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseHistoryListImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of ResponseHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseHistoryListImplCopyWith<_$ResponseHistoryListImpl> get copyWith =>
      __$$ResponseHistoryListImplCopyWithImpl<_$ResponseHistoryListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseHistoryListImplToJson(
      this,
    );
  }
}

abstract class _ResponseHistoryList implements ResponseHistoryList {
  factory _ResponseHistoryList(
          {@JsonKey(name: "list")
          required final List<RespProductionGroup> list}) =
      _$ResponseHistoryListImpl;

  factory _ResponseHistoryList.fromJson(Map<String, dynamic> json) =
      _$ResponseHistoryListImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespProductionGroup> get list;

  /// Create a copy of ResponseHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseHistoryListImplCopyWith<_$ResponseHistoryListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespProductionGroup _$RespProductionGroupFromJson(Map<String, dynamic> json) {
  return _RespProductionGroup.fromJson(json);
}

/// @nodoc
mixin _$RespProductionGroup {
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_list")
  ProductListClass get productList => throw _privateConstructorUsedError;

  /// Serializes this RespProductionGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespProductionGroupCopyWith<RespProductionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespProductionGroupCopyWith<$Res> {
  factory $RespProductionGroupCopyWith(
          RespProductionGroup value, $Res Function(RespProductionGroup) then) =
      _$RespProductionGroupCopyWithImpl<$Res, RespProductionGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "product_list") ProductListClass productList});

  $LocaleNameCopyWith<$Res> get localeName;
  $ProductListClassCopyWith<$Res> get productList;
}

/// @nodoc
class _$RespProductionGroupCopyWithImpl<$Res, $Val extends RespProductionGroup>
    implements $RespProductionGroupCopyWith<$Res> {
  _$RespProductionGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? productList = null,
  }) {
    return _then(_value.copyWith(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductListClass,
    ) as $Val);
  }

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductListClassCopyWith<$Res> get productList {
    return $ProductListClassCopyWith<$Res>(_value.productList, (value) {
      return _then(_value.copyWith(productList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespProductionGroupImplCopyWith<$Res>
    implements $RespProductionGroupCopyWith<$Res> {
  factory _$$RespProductionGroupImplCopyWith(_$RespProductionGroupImpl value,
          $Res Function(_$RespProductionGroupImpl) then) =
      __$$RespProductionGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "product_list") ProductListClass productList});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $ProductListClassCopyWith<$Res> get productList;
}

/// @nodoc
class __$$RespProductionGroupImplCopyWithImpl<$Res>
    extends _$RespProductionGroupCopyWithImpl<$Res, _$RespProductionGroupImpl>
    implements _$$RespProductionGroupImplCopyWith<$Res> {
  __$$RespProductionGroupImplCopyWithImpl(_$RespProductionGroupImpl _value,
      $Res Function(_$RespProductionGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? productList = null,
  }) {
    return _then(_$RespProductionGroupImpl(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductListClass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespProductionGroupImpl implements _RespProductionGroup {
  const _$RespProductionGroupImpl(
      {@JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "product_list") required this.productList});

  factory _$RespProductionGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespProductionGroupImplFromJson(json);

  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "product_list")
  final ProductListClass productList;

  @override
  String toString() {
    return 'RespProductionGroup(localeName: $localeName, productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductionGroupImpl &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.productList, productList) ||
                other.productList == productList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, localeName, productList);

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespProductionGroupImplCopyWith<_$RespProductionGroupImpl> get copyWith =>
      __$$RespProductionGroupImplCopyWithImpl<_$RespProductionGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespProductionGroupImplToJson(
      this,
    );
  }
}

abstract class _RespProductionGroup implements RespProductionGroup {
  const factory _RespProductionGroup(
      {@JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "product_list")
      required final ProductListClass productList}) = _$RespProductionGroupImpl;

  factory _RespProductionGroup.fromJson(Map<String, dynamic> json) =
      _$RespProductionGroupImpl.fromJson;

  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "product_list")
  ProductListClass get productList;

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductionGroupImplCopyWith<_$RespProductionGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListClass _$ProductListClassFromJson(Map<String, dynamic> json) {
  return _ProductListClass.fromJson(json);
}

/// @nodoc
mixin _$ProductListClass {
  @JsonKey(name: "list")
  List<RespProductionItem> get list => throw _privateConstructorUsedError;

  /// Serializes this ProductListClass to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListClassCopyWith<ProductListClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListClassCopyWith<$Res> {
  factory $ProductListClassCopyWith(
          ProductListClass value, $Res Function(ProductListClass) then) =
      _$ProductListClassCopyWithImpl<$Res, ProductListClass>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductionItem> list});
}

/// @nodoc
class _$ProductListClassCopyWithImpl<$Res, $Val extends ProductListClass>
    implements $ProductListClassCopyWith<$Res> {
  _$ProductListClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListClass
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
              as List<RespProductionItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListClassImplCopyWith<$Res>
    implements $ProductListClassCopyWith<$Res> {
  factory _$$ProductListClassImplCopyWith(_$ProductListClassImpl value,
          $Res Function(_$ProductListClassImpl) then) =
      __$$ProductListClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductionItem> list});
}

/// @nodoc
class __$$ProductListClassImplCopyWithImpl<$Res>
    extends _$ProductListClassCopyWithImpl<$Res, _$ProductListClassImpl>
    implements _$$ProductListClassImplCopyWith<$Res> {
  __$$ProductListClassImplCopyWithImpl(_$ProductListClassImpl _value,
      $Res Function(_$ProductListClassImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ProductListClassImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductionItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListClassImpl implements _ProductListClass {
  const _$ProductListClassImpl(
      {@JsonKey(name: "list") required final List<RespProductionItem> list})
      : _list = list;

  factory _$ProductListClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListClassImplFromJson(json);

  final List<RespProductionItem> _list;
  @override
  @JsonKey(name: "list")
  List<RespProductionItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ProductListClass(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListClassImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of ProductListClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListClassImplCopyWith<_$ProductListClassImpl> get copyWith =>
      __$$ProductListClassImplCopyWithImpl<_$ProductListClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListClassImplToJson(
      this,
    );
  }
}

abstract class _ProductListClass implements ProductListClass {
  const factory _ProductListClass(
      {@JsonKey(name: "list")
      required final List<RespProductionItem> list}) = _$ProductListClassImpl;

  factory _ProductListClass.fromJson(Map<String, dynamic> json) =
      _$ProductListClassImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespProductionItem> get list;

  /// Create a copy of ProductListClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListClassImplCopyWith<_$ProductListClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespProductionItem _$RespProductionItemFromJson(Map<String, dynamic> json) {
  return _RespProductionItem.fromJson(json);
}

/// @nodoc
mixin _$RespProductionItem {
  @JsonKey(name: "create_time")
  int get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "finished_time")
  int get finishedTime => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "product_attribute_names")
  LocaleName get productAttributeNames => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespProductionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespProductionItemCopyWith<RespProductionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespProductionItemCopyWith<$Res> {
  factory $RespProductionItemCopyWith(
          RespProductionItem value, $Res Function(RespProductionItem) then) =
      _$RespProductionItemCopyWithImpl<$Res, RespProductionItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "finished_time") int finishedTime,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "product_attribute_names")
      LocaleName productAttributeNames,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "uuid") int uuid});

  $LocaleNameCopyWith<$Res> get localeName;
  $LocaleNameCopyWith<$Res> get productAttributeNames;
}

/// @nodoc
class _$RespProductionItemCopyWithImpl<$Res, $Val extends RespProductionItem>
    implements $RespProductionItemCopyWith<$Res> {
  _$RespProductionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = null,
    Object? finishedTime = null,
    Object? localeName = null,
    Object? num = null,
    Object? productAttributeNames = null,
    Object? serialNo = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      finishedTime: null == finishedTime
          ? _value.finishedTime
          : finishedTime // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      productAttributeNames: null == productAttributeNames
          ? _value.productAttributeNames
          : productAttributeNames // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get productAttributeNames {
    return $LocaleNameCopyWith<$Res>(_value.productAttributeNames, (value) {
      return _then(_value.copyWith(productAttributeNames: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespProductionItemImplCopyWith<$Res>
    implements $RespProductionItemCopyWith<$Res> {
  factory _$$RespProductionItemImplCopyWith(_$RespProductionItemImpl value,
          $Res Function(_$RespProductionItemImpl) then) =
      __$$RespProductionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "finished_time") int finishedTime,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "product_attribute_names")
      LocaleName productAttributeNames,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "uuid") int uuid});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $LocaleNameCopyWith<$Res> get productAttributeNames;
}

/// @nodoc
class __$$RespProductionItemImplCopyWithImpl<$Res>
    extends _$RespProductionItemCopyWithImpl<$Res, _$RespProductionItemImpl>
    implements _$$RespProductionItemImplCopyWith<$Res> {
  __$$RespProductionItemImplCopyWithImpl(_$RespProductionItemImpl _value,
      $Res Function(_$RespProductionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = null,
    Object? finishedTime = null,
    Object? localeName = null,
    Object? num = null,
    Object? productAttributeNames = null,
    Object? serialNo = null,
    Object? uuid = null,
  }) {
    return _then(_$RespProductionItemImpl(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      finishedTime: null == finishedTime
          ? _value.finishedTime
          : finishedTime // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      productAttributeNames: null == productAttributeNames
          ? _value.productAttributeNames
          : productAttributeNames // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
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
class _$RespProductionItemImpl implements _RespProductionItem {
  const _$RespProductionItemImpl(
      {@JsonKey(name: "create_time") required this.createTime,
      @JsonKey(name: "finished_time") required this.finishedTime,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "product_attribute_names")
      required this.productAttributeNames,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespProductionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespProductionItemImplFromJson(json);

  @override
  @JsonKey(name: "create_time")
  final int createTime;
  @override
  @JsonKey(name: "finished_time")
  final int finishedTime;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey(name: "product_attribute_names")
  final LocaleName productAttributeNames;
  @override
  @JsonKey(name: "serial_no")
  final String serialNo;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespProductionItem(createTime: $createTime, finishedTime: $finishedTime, localeName: $localeName, num: $num, productAttributeNames: $productAttributeNames, serialNo: $serialNo, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductionItemImpl &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.finishedTime, finishedTime) ||
                other.finishedTime == finishedTime) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.productAttributeNames, productAttributeNames) ||
                other.productAttributeNames == productAttributeNames) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createTime, finishedTime,
      localeName, num, productAttributeNames, serialNo, uuid);

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespProductionItemImplCopyWith<_$RespProductionItemImpl> get copyWith =>
      __$$RespProductionItemImplCopyWithImpl<_$RespProductionItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespProductionItemImplToJson(
      this,
    );
  }
}

abstract class _RespProductionItem implements RespProductionItem {
  const factory _RespProductionItem(
          {@JsonKey(name: "create_time") required final int createTime,
          @JsonKey(name: "finished_time") required final int finishedTime,
          @JsonKey(name: "locale_name") required final LocaleName localeName,
          @JsonKey(name: "num") required final int num,
          @JsonKey(name: "product_attribute_names")
          required final LocaleName productAttributeNames,
          @JsonKey(name: "serial_no") required final String serialNo,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$RespProductionItemImpl;

  factory _RespProductionItem.fromJson(Map<String, dynamic> json) =
      _$RespProductionItemImpl.fromJson;

  @override
  @JsonKey(name: "create_time")
  int get createTime;
  @override
  @JsonKey(name: "finished_time")
  int get finishedTime;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "num")
  int get num;
  @override
  @JsonKey(name: "product_attribute_names")
  LocaleName get productAttributeNames;
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductionItemImplCopyWith<_$RespProductionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
