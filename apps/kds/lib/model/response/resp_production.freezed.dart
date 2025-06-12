// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_production.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseProduction _$ResponseProductionFromJson(Map<String, dynamic> json) {
  return _ResponseProductionList.fromJson(json);
}

/// @nodoc
mixin _$ResponseProduction {
  @JsonKey(name: "finished_list")
  FinishedListClass get finishedList => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<RespProductionGroup> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "send_kitchen_num")
  int get sendKitchenNum => throw _privateConstructorUsedError;

  /// Serializes this ResponseProduction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseProduction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseProductionCopyWith<ResponseProduction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseProductionCopyWith<$Res> {
  factory $ResponseProductionCopyWith(
          ResponseProduction value, $Res Function(ResponseProduction) then) =
      _$ResponseProductionCopyWithImpl<$Res, ResponseProduction>;
  @useResult
  $Res call(
      {@JsonKey(name: "finished_list") FinishedListClass finishedList,
      @JsonKey(name: "list") List<RespProductionGroup> list,
      @JsonKey(name: "meta") Meta meta,
      @JsonKey(name: "send_kitchen_num") int sendKitchenNum});

  $FinishedListClassCopyWith<$Res> get finishedList;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResponseProductionCopyWithImpl<$Res, $Val extends ResponseProduction>
    implements $ResponseProductionCopyWith<$Res> {
  _$ResponseProductionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseProduction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishedList = null,
    Object? list = null,
    Object? meta = null,
    Object? sendKitchenNum = null,
  }) {
    return _then(_value.copyWith(
      finishedList: null == finishedList
          ? _value.finishedList
          : finishedList // ignore: cast_nullable_to_non_nullable
              as FinishedListClass,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductionGroup>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      sendKitchenNum: null == sendKitchenNum
          ? _value.sendKitchenNum
          : sendKitchenNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ResponseProduction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinishedListClassCopyWith<$Res> get finishedList {
    return $FinishedListClassCopyWith<$Res>(_value.finishedList, (value) {
      return _then(_value.copyWith(finishedList: value) as $Val);
    });
  }

  /// Create a copy of ResponseProduction
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
abstract class _$$ResponseProductionListImplCopyWith<$Res>
    implements $ResponseProductionCopyWith<$Res> {
  factory _$$ResponseProductionListImplCopyWith(
          _$ResponseProductionListImpl value,
          $Res Function(_$ResponseProductionListImpl) then) =
      __$$ResponseProductionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "finished_list") FinishedListClass finishedList,
      @JsonKey(name: "list") List<RespProductionGroup> list,
      @JsonKey(name: "meta") Meta meta,
      @JsonKey(name: "send_kitchen_num") int sendKitchenNum});

  @override
  $FinishedListClassCopyWith<$Res> get finishedList;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ResponseProductionListImplCopyWithImpl<$Res>
    extends _$ResponseProductionCopyWithImpl<$Res, _$ResponseProductionListImpl>
    implements _$$ResponseProductionListImplCopyWith<$Res> {
  __$$ResponseProductionListImplCopyWithImpl(
      _$ResponseProductionListImpl _value,
      $Res Function(_$ResponseProductionListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseProduction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishedList = null,
    Object? list = null,
    Object? meta = null,
    Object? sendKitchenNum = null,
  }) {
    return _then(_$ResponseProductionListImpl(
      finishedList: null == finishedList
          ? _value.finishedList
          : finishedList // ignore: cast_nullable_to_non_nullable
              as FinishedListClass,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductionGroup>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      sendKitchenNum: null == sendKitchenNum
          ? _value.sendKitchenNum
          : sendKitchenNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseProductionListImpl implements _ResponseProductionList {
  _$ResponseProductionListImpl(
      {@JsonKey(name: "finished_list") required this.finishedList,
      @JsonKey(name: "list") required final List<RespProductionGroup> list,
      @JsonKey(name: "meta") required this.meta,
      @JsonKey(name: "send_kitchen_num") required this.sendKitchenNum})
      : _list = list;

  factory _$ResponseProductionListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseProductionListImplFromJson(json);

  @override
  @JsonKey(name: "finished_list")
  final FinishedListClass finishedList;
  final List<RespProductionGroup> _list;
  @override
  @JsonKey(name: "list")
  List<RespProductionGroup> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "meta")
  final Meta meta;
  @override
  @JsonKey(name: "send_kitchen_num")
  final int sendKitchenNum;

  @override
  String toString() {
    return 'ResponseProduction(finishedList: $finishedList, list: $list, meta: $meta, sendKitchenNum: $sendKitchenNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseProductionListImpl &&
            (identical(other.finishedList, finishedList) ||
                other.finishedList == finishedList) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.sendKitchenNum, sendKitchenNum) ||
                other.sendKitchenNum == sendKitchenNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, finishedList,
      const DeepCollectionEquality().hash(_list), meta, sendKitchenNum);

  /// Create a copy of ResponseProduction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseProductionListImplCopyWith<_$ResponseProductionListImpl>
      get copyWith => __$$ResponseProductionListImplCopyWithImpl<
          _$ResponseProductionListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseProductionListImplToJson(
      this,
    );
  }
}

abstract class _ResponseProductionList implements ResponseProduction {
  factory _ResponseProductionList(
      {@JsonKey(name: "finished_list")
      required final FinishedListClass finishedList,
      @JsonKey(name: "list") required final List<RespProductionGroup> list,
      @JsonKey(name: "meta") required final Meta meta,
      @JsonKey(name: "send_kitchen_num")
      required final int sendKitchenNum}) = _$ResponseProductionListImpl;

  factory _ResponseProductionList.fromJson(Map<String, dynamic> json) =
      _$ResponseProductionListImpl.fromJson;

  @override
  @JsonKey(name: "finished_list")
  FinishedListClass get finishedList;
  @override
  @JsonKey(name: "list")
  List<RespProductionGroup> get list;
  @override
  @JsonKey(name: "meta")
  Meta get meta;
  @override
  @JsonKey(name: "send_kitchen_num")
  int get sendKitchenNum;

  /// Create a copy of ResponseProduction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseProductionListImplCopyWith<_$ResponseProductionListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FinishedListClass _$FinishedListClassFromJson(Map<String, dynamic> json) {
  return _FinishedListClass.fromJson(json);
}

/// @nodoc
mixin _$FinishedListClass {
  @JsonKey(name: "list")
  List<RespProductionItem> get list => throw _privateConstructorUsedError;

  /// Serializes this FinishedListClass to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinishedListClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinishedListClassCopyWith<FinishedListClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedListClassCopyWith<$Res> {
  factory $FinishedListClassCopyWith(
          FinishedListClass value, $Res Function(FinishedListClass) then) =
      _$FinishedListClassCopyWithImpl<$Res, FinishedListClass>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductionItem> list});
}

/// @nodoc
class _$FinishedListClassCopyWithImpl<$Res, $Val extends FinishedListClass>
    implements $FinishedListClassCopyWith<$Res> {
  _$FinishedListClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishedListClass
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
abstract class _$$FinishedListClassImplCopyWith<$Res>
    implements $FinishedListClassCopyWith<$Res> {
  factory _$$FinishedListClassImplCopyWith(_$FinishedListClassImpl value,
          $Res Function(_$FinishedListClassImpl) then) =
      __$$FinishedListClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespProductionItem> list});
}

/// @nodoc
class __$$FinishedListClassImplCopyWithImpl<$Res>
    extends _$FinishedListClassCopyWithImpl<$Res, _$FinishedListClassImpl>
    implements _$$FinishedListClassImplCopyWith<$Res> {
  __$$FinishedListClassImplCopyWithImpl(_$FinishedListClassImpl _value,
      $Res Function(_$FinishedListClassImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishedListClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$FinishedListClassImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespProductionItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinishedListClassImpl implements _FinishedListClass {
  const _$FinishedListClassImpl(
      {@JsonKey(name: "list") required final List<RespProductionItem> list})
      : _list = list;

  factory _$FinishedListClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishedListClassImplFromJson(json);

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
    return 'FinishedListClass(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedListClassImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of FinishedListClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedListClassImplCopyWith<_$FinishedListClassImpl> get copyWith =>
      __$$FinishedListClassImplCopyWithImpl<_$FinishedListClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishedListClassImplToJson(
      this,
    );
  }
}

abstract class _FinishedListClass implements FinishedListClass {
  const factory _FinishedListClass(
      {@JsonKey(name: "list")
      required final List<RespProductionItem> list}) = _$FinishedListClassImpl;

  factory _FinishedListClass.fromJson(Map<String, dynamic> json) =
      _$FinishedListClassImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespProductionItem> get list;

  /// Create a copy of FinishedListClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishedListClassImplCopyWith<_$FinishedListClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespProductionItem _$RespProductionItemFromJson(Map<String, dynamic> json) {
  return _RespProductionItem.fromJson(json);
}

/// @nodoc
mixin _$RespProductionItem {
  @JsonKey(name: "create_time")
  int get createTime => throw _privateConstructorUsedError;
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
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "dining_method")
  int get diningMethod => throw _privateConstructorUsedError;

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
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "product_attribute_names")
      LocaleName productAttributeNames,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "dining_method") int diningMethod});

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
    Object? localeName = null,
    Object? num = null,
    Object? productAttributeNames = null,
    Object? serialNo = null,
    Object? uuid = null,
    Object? remark = null,
    Object? diningMethod = null,
  }) {
    return _then(_value.copyWith(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
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
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "product_attribute_names")
      LocaleName productAttributeNames,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "dining_method") int diningMethod});

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
    Object? localeName = null,
    Object? num = null,
    Object? productAttributeNames = null,
    Object? serialNo = null,
    Object? uuid = null,
    Object? remark = null,
    Object? diningMethod = null,
  }) {
    return _then(_$RespProductionItemImpl(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
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
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespProductionItemImpl implements _RespProductionItem {
  const _$RespProductionItemImpl(
      {@JsonKey(name: "create_time") required this.createTime,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "product_attribute_names")
      required this.productAttributeNames,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "dining_method") required this.diningMethod});

  factory _$RespProductionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespProductionItemImplFromJson(json);

  @override
  @JsonKey(name: "create_time")
  final int createTime;
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
  @JsonKey(name: "remark")
  final String remark;
  @override
  @JsonKey(name: "dining_method")
  final int diningMethod;

  @override
  String toString() {
    return 'RespProductionItem(createTime: $createTime, localeName: $localeName, num: $num, productAttributeNames: $productAttributeNames, serialNo: $serialNo, uuid: $uuid, remark: $remark, diningMethod: $diningMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductionItemImpl &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.productAttributeNames, productAttributeNames) ||
                other.productAttributeNames == productAttributeNames) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.diningMethod, diningMethod) ||
                other.diningMethod == diningMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createTime, localeName, num,
      productAttributeNames, serialNo, uuid, remark, diningMethod);

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
          @JsonKey(name: "locale_name") required final LocaleName localeName,
          @JsonKey(name: "num") required final int num,
          @JsonKey(name: "product_attribute_names")
          required final LocaleName productAttributeNames,
          @JsonKey(name: "serial_no") required final String serialNo,
          @JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "remark") required final String remark,
          @JsonKey(name: "dining_method") required final int diningMethod}) =
      _$RespProductionItemImpl;

  factory _RespProductionItem.fromJson(Map<String, dynamic> json) =
      _$RespProductionItemImpl.fromJson;

  @override
  @JsonKey(name: "create_time")
  int get createTime;
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
  @override
  @JsonKey(name: "remark")
  String get remark;
  @override
  @JsonKey(name: "dining_method")
  int get diningMethod;

  /// Create a copy of RespProductionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductionItemImplCopyWith<_$RespProductionItemImpl> get copyWith =>
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
  FinishedListClass get productList => throw _privateConstructorUsedError;
  @JsonKey(name: "dining_method")
  int get diningMethod => throw _privateConstructorUsedError;

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
      @JsonKey(name: "product_list") FinishedListClass productList,
      @JsonKey(name: "dining_method") int diningMethod});

  $LocaleNameCopyWith<$Res> get localeName;
  $FinishedListClassCopyWith<$Res> get productList;
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
    Object? diningMethod = null,
  }) {
    return _then(_value.copyWith(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as FinishedListClass,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
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
  $FinishedListClassCopyWith<$Res> get productList {
    return $FinishedListClassCopyWith<$Res>(_value.productList, (value) {
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
      @JsonKey(name: "product_list") FinishedListClass productList,
      @JsonKey(name: "dining_method") int diningMethod});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $FinishedListClassCopyWith<$Res> get productList;
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
    Object? diningMethod = null,
  }) {
    return _then(_$RespProductionGroupImpl(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as FinishedListClass,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespProductionGroupImpl implements _RespProductionGroup {
  const _$RespProductionGroupImpl(
      {@JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "product_list") required this.productList,
      @JsonKey(name: "dining_method") required this.diningMethod});

  factory _$RespProductionGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespProductionGroupImplFromJson(json);

  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "product_list")
  final FinishedListClass productList;
  @override
  @JsonKey(name: "dining_method")
  final int diningMethod;

  @override
  String toString() {
    return 'RespProductionGroup(localeName: $localeName, productList: $productList, diningMethod: $diningMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductionGroupImpl &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.productList, productList) ||
                other.productList == productList) &&
            (identical(other.diningMethod, diningMethod) ||
                other.diningMethod == diningMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, localeName, productList, diningMethod);

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
          required final FinishedListClass productList,
          @JsonKey(name: "dining_method") required final int diningMethod}) =
      _$RespProductionGroupImpl;

  factory _RespProductionGroup.fromJson(Map<String, dynamic> json) =
      _$RespProductionGroupImpl.fromJson;

  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "product_list")
  FinishedListClass get productList;
  @override
  @JsonKey(name: "dining_method")
  int get diningMethod;

  /// Create a copy of RespProductionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductionGroupImplCopyWith<_$RespProductionGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "page_no")
  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
    Object? pageSize = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
    Object? pageSize = null,
    Object? total = null,
  }) {
    return _then(_$MetaImpl(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "page_no") required this.pageNo,
      @JsonKey(name: "page_size") required this.pageSize,
      @JsonKey(name: "total") required this.total});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: "page_no")
  final int pageNo;
  @override
  @JsonKey(name: "page_size")
  final int pageSize;
  @override
  @JsonKey(name: "total")
  final int total;

  @override
  String toString() {
    return 'Meta(pageNo: $pageNo, pageSize: $pageSize, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageNo, pageSize, total);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: "page_no") required final int pageNo,
      @JsonKey(name: "page_size") required final int pageSize,
      @JsonKey(name: "total") required final int total}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "page_no")
  int get pageNo;
  @override
  @JsonKey(name: "page_size")
  int get pageSize;
  @override
  @JsonKey(name: "total")
  int get total;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
