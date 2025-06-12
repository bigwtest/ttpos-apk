// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buffet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Buffet _$BuffetFromJson(Map<String, dynamic> json) {
  return _Buffet.fromJson(json);
}

/// @nodoc
mixin _$Buffet {
  @JsonKey(name: "add_clock")
  List<SettingAddClockItem> get addClock => throw _privateConstructorUsedError;
  @JsonKey(name: "is_add_clock")
  String get isAddClock => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet_discount")
  String get isBuffetDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buy_continue")
  String get isBuyContinue => throw _privateConstructorUsedError;
  @JsonKey(name: "is_open")
  String get isOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "is_remain_continue")
  String get isRemainContinue => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_continue_notice_time")
  String get remainContinueNoticeTime => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_continue_time")
  String get remainContinueTime =>
      throw _privateConstructorUsedError; // 平板结束时间提醒（单位：秒）
  @JsonKey(name: "tablet_end_time")
  int get tabletEndTime => throw _privateConstructorUsedError;

  /// Serializes this Buffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuffetCopyWith<Buffet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuffetCopyWith<$Res> {
  factory $BuffetCopyWith(Buffet value, $Res Function(Buffet) then) =
      _$BuffetCopyWithImpl<$Res, Buffet>;
  @useResult
  $Res call(
      {@JsonKey(name: "add_clock") List<SettingAddClockItem> addClock,
      @JsonKey(name: "is_add_clock") String isAddClock,
      @JsonKey(name: "is_buffet_discount") String isBuffetDiscount,
      @JsonKey(name: "is_buy_continue") String isBuyContinue,
      @JsonKey(name: "is_open") String isOpen,
      @JsonKey(name: "is_remain_continue") String isRemainContinue,
      @JsonKey(name: "remain_continue_notice_time")
      String remainContinueNoticeTime,
      @JsonKey(name: "remain_continue_time") String remainContinueTime,
      @JsonKey(name: "tablet_end_time") int tabletEndTime});
}

/// @nodoc
class _$BuffetCopyWithImpl<$Res, $Val extends Buffet>
    implements $BuffetCopyWith<$Res> {
  _$BuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addClock = null,
    Object? isAddClock = null,
    Object? isBuffetDiscount = null,
    Object? isBuyContinue = null,
    Object? isOpen = null,
    Object? isRemainContinue = null,
    Object? remainContinueNoticeTime = null,
    Object? remainContinueTime = null,
    Object? tabletEndTime = null,
  }) {
    return _then(_value.copyWith(
      addClock: null == addClock
          ? _value.addClock
          : addClock // ignore: cast_nullable_to_non_nullable
              as List<SettingAddClockItem>,
      isAddClock: null == isAddClock
          ? _value.isAddClock
          : isAddClock // ignore: cast_nullable_to_non_nullable
              as String,
      isBuffetDiscount: null == isBuffetDiscount
          ? _value.isBuffetDiscount
          : isBuffetDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      isBuyContinue: null == isBuyContinue
          ? _value.isBuyContinue
          : isBuyContinue // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String,
      isRemainContinue: null == isRemainContinue
          ? _value.isRemainContinue
          : isRemainContinue // ignore: cast_nullable_to_non_nullable
              as String,
      remainContinueNoticeTime: null == remainContinueNoticeTime
          ? _value.remainContinueNoticeTime
          : remainContinueNoticeTime // ignore: cast_nullable_to_non_nullable
              as String,
      remainContinueTime: null == remainContinueTime
          ? _value.remainContinueTime
          : remainContinueTime // ignore: cast_nullable_to_non_nullable
              as String,
      tabletEndTime: null == tabletEndTime
          ? _value.tabletEndTime
          : tabletEndTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuffetImplCopyWith<$Res> implements $BuffetCopyWith<$Res> {
  factory _$$BuffetImplCopyWith(
          _$BuffetImpl value, $Res Function(_$BuffetImpl) then) =
      __$$BuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "add_clock") List<SettingAddClockItem> addClock,
      @JsonKey(name: "is_add_clock") String isAddClock,
      @JsonKey(name: "is_buffet_discount") String isBuffetDiscount,
      @JsonKey(name: "is_buy_continue") String isBuyContinue,
      @JsonKey(name: "is_open") String isOpen,
      @JsonKey(name: "is_remain_continue") String isRemainContinue,
      @JsonKey(name: "remain_continue_notice_time")
      String remainContinueNoticeTime,
      @JsonKey(name: "remain_continue_time") String remainContinueTime,
      @JsonKey(name: "tablet_end_time") int tabletEndTime});
}

/// @nodoc
class __$$BuffetImplCopyWithImpl<$Res>
    extends _$BuffetCopyWithImpl<$Res, _$BuffetImpl>
    implements _$$BuffetImplCopyWith<$Res> {
  __$$BuffetImplCopyWithImpl(
      _$BuffetImpl _value, $Res Function(_$BuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addClock = null,
    Object? isAddClock = null,
    Object? isBuffetDiscount = null,
    Object? isBuyContinue = null,
    Object? isOpen = null,
    Object? isRemainContinue = null,
    Object? remainContinueNoticeTime = null,
    Object? remainContinueTime = null,
    Object? tabletEndTime = null,
  }) {
    return _then(_$BuffetImpl(
      addClock: null == addClock
          ? _value._addClock
          : addClock // ignore: cast_nullable_to_non_nullable
              as List<SettingAddClockItem>,
      isAddClock: null == isAddClock
          ? _value.isAddClock
          : isAddClock // ignore: cast_nullable_to_non_nullable
              as String,
      isBuffetDiscount: null == isBuffetDiscount
          ? _value.isBuffetDiscount
          : isBuffetDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      isBuyContinue: null == isBuyContinue
          ? _value.isBuyContinue
          : isBuyContinue // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as String,
      isRemainContinue: null == isRemainContinue
          ? _value.isRemainContinue
          : isRemainContinue // ignore: cast_nullable_to_non_nullable
              as String,
      remainContinueNoticeTime: null == remainContinueNoticeTime
          ? _value.remainContinueNoticeTime
          : remainContinueNoticeTime // ignore: cast_nullable_to_non_nullable
              as String,
      remainContinueTime: null == remainContinueTime
          ? _value.remainContinueTime
          : remainContinueTime // ignore: cast_nullable_to_non_nullable
              as String,
      tabletEndTime: null == tabletEndTime
          ? _value.tabletEndTime
          : tabletEndTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuffetImpl implements _Buffet {
  const _$BuffetImpl(
      {@JsonKey(name: "add_clock")
      required final List<SettingAddClockItem> addClock,
      @JsonKey(name: "is_add_clock") required this.isAddClock,
      @JsonKey(name: "is_buffet_discount") required this.isBuffetDiscount,
      @JsonKey(name: "is_buy_continue") required this.isBuyContinue,
      @JsonKey(name: "is_open") required this.isOpen,
      @JsonKey(name: "is_remain_continue") required this.isRemainContinue,
      @JsonKey(name: "remain_continue_notice_time")
      required this.remainContinueNoticeTime,
      @JsonKey(name: "remain_continue_time") required this.remainContinueTime,
      @JsonKey(name: "tablet_end_time") required this.tabletEndTime})
      : _addClock = addClock;

  factory _$BuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuffetImplFromJson(json);

  final List<SettingAddClockItem> _addClock;
  @override
  @JsonKey(name: "add_clock")
  List<SettingAddClockItem> get addClock {
    if (_addClock is EqualUnmodifiableListView) return _addClock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addClock);
  }

  @override
  @JsonKey(name: "is_add_clock")
  final String isAddClock;
  @override
  @JsonKey(name: "is_buffet_discount")
  final String isBuffetDiscount;
  @override
  @JsonKey(name: "is_buy_continue")
  final String isBuyContinue;
  @override
  @JsonKey(name: "is_open")
  final String isOpen;
  @override
  @JsonKey(name: "is_remain_continue")
  final String isRemainContinue;
  @override
  @JsonKey(name: "remain_continue_notice_time")
  final String remainContinueNoticeTime;
  @override
  @JsonKey(name: "remain_continue_time")
  final String remainContinueTime;
// 平板结束时间提醒（单位：秒）
  @override
  @JsonKey(name: "tablet_end_time")
  final int tabletEndTime;

  @override
  String toString() {
    return 'Buffet(addClock: $addClock, isAddClock: $isAddClock, isBuffetDiscount: $isBuffetDiscount, isBuyContinue: $isBuyContinue, isOpen: $isOpen, isRemainContinue: $isRemainContinue, remainContinueNoticeTime: $remainContinueNoticeTime, remainContinueTime: $remainContinueTime, tabletEndTime: $tabletEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuffetImpl &&
            const DeepCollectionEquality().equals(other._addClock, _addClock) &&
            (identical(other.isAddClock, isAddClock) ||
                other.isAddClock == isAddClock) &&
            (identical(other.isBuffetDiscount, isBuffetDiscount) ||
                other.isBuffetDiscount == isBuffetDiscount) &&
            (identical(other.isBuyContinue, isBuyContinue) ||
                other.isBuyContinue == isBuyContinue) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.isRemainContinue, isRemainContinue) ||
                other.isRemainContinue == isRemainContinue) &&
            (identical(
                    other.remainContinueNoticeTime, remainContinueNoticeTime) ||
                other.remainContinueNoticeTime == remainContinueNoticeTime) &&
            (identical(other.remainContinueTime, remainContinueTime) ||
                other.remainContinueTime == remainContinueTime) &&
            (identical(other.tabletEndTime, tabletEndTime) ||
                other.tabletEndTime == tabletEndTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addClock),
      isAddClock,
      isBuffetDiscount,
      isBuyContinue,
      isOpen,
      isRemainContinue,
      remainContinueNoticeTime,
      remainContinueTime,
      tabletEndTime);

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuffetImplCopyWith<_$BuffetImpl> get copyWith =>
      __$$BuffetImplCopyWithImpl<_$BuffetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuffetImplToJson(
      this,
    );
  }
}

abstract class _Buffet implements Buffet {
  const factory _Buffet(
          {@JsonKey(name: "add_clock")
          required final List<SettingAddClockItem> addClock,
          @JsonKey(name: "is_add_clock") required final String isAddClock,
          @JsonKey(name: "is_buffet_discount")
          required final String isBuffetDiscount,
          @JsonKey(name: "is_buy_continue") required final String isBuyContinue,
          @JsonKey(name: "is_open") required final String isOpen,
          @JsonKey(name: "is_remain_continue")
          required final String isRemainContinue,
          @JsonKey(name: "remain_continue_notice_time")
          required final String remainContinueNoticeTime,
          @JsonKey(name: "remain_continue_time")
          required final String remainContinueTime,
          @JsonKey(name: "tablet_end_time") required final int tabletEndTime}) =
      _$BuffetImpl;

  factory _Buffet.fromJson(Map<String, dynamic> json) = _$BuffetImpl.fromJson;

  @override
  @JsonKey(name: "add_clock")
  List<SettingAddClockItem> get addClock;
  @override
  @JsonKey(name: "is_add_clock")
  String get isAddClock;
  @override
  @JsonKey(name: "is_buffet_discount")
  String get isBuffetDiscount;
  @override
  @JsonKey(name: "is_buy_continue")
  String get isBuyContinue;
  @override
  @JsonKey(name: "is_open")
  String get isOpen;
  @override
  @JsonKey(name: "is_remain_continue")
  String get isRemainContinue;
  @override
  @JsonKey(name: "remain_continue_notice_time")
  String get remainContinueNoticeTime;
  @override
  @JsonKey(name: "remain_continue_time")
  String get remainContinueTime; // 平板结束时间提醒（单位：秒）
  @override
  @JsonKey(name: "tablet_end_time")
  int get tabletEndTime;

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuffetImplCopyWith<_$BuffetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingAddClockItem _$SettingAddClockItemFromJson(Map<String, dynamic> json) {
  return _SettingAddClockItem.fromJson(json);
}

/// @nodoc
mixin _$SettingAddClockItem {
  @JsonKey(name: "action")
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: "delay_time")
  String get delayTime => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;

  /// Serializes this SettingAddClockItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingAddClockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingAddClockItemCopyWith<SettingAddClockItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingAddClockItemCopyWith<$Res> {
  factory $SettingAddClockItemCopyWith(
          SettingAddClockItem value, $Res Function(SettingAddClockItem) then) =
      _$SettingAddClockItemCopyWithImpl<$Res, SettingAddClockItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "action") String action,
      @JsonKey(name: "delay_time") String delayTime,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "price") String price});
}

/// @nodoc
class _$SettingAddClockItemCopyWithImpl<$Res, $Val extends SettingAddClockItem>
    implements $SettingAddClockItemCopyWith<$Res> {
  _$SettingAddClockItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingAddClockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? delayTime = null,
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      delayTime: null == delayTime
          ? _value.delayTime
          : delayTime // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingAddClockItemImplCopyWith<$Res>
    implements $SettingAddClockItemCopyWith<$Res> {
  factory _$$SettingAddClockItemImplCopyWith(_$SettingAddClockItemImpl value,
          $Res Function(_$SettingAddClockItemImpl) then) =
      __$$SettingAddClockItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "action") String action,
      @JsonKey(name: "delay_time") String delayTime,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "price") String price});
}

/// @nodoc
class __$$SettingAddClockItemImplCopyWithImpl<$Res>
    extends _$SettingAddClockItemCopyWithImpl<$Res, _$SettingAddClockItemImpl>
    implements _$$SettingAddClockItemImplCopyWith<$Res> {
  __$$SettingAddClockItemImplCopyWithImpl(_$SettingAddClockItemImpl _value,
      $Res Function(_$SettingAddClockItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingAddClockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? delayTime = null,
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$SettingAddClockItemImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      delayTime: null == delayTime
          ? _value.delayTime
          : delayTime // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingAddClockItemImpl implements _SettingAddClockItem {
  const _$SettingAddClockItemImpl(
      {@JsonKey(name: "action") required this.action,
      @JsonKey(name: "delay_time") required this.delayTime,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "price") required this.price});

  factory _$SettingAddClockItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingAddClockItemImplFromJson(json);

  @override
  @JsonKey(name: "action")
  final String action;
  @override
  @JsonKey(name: "delay_time")
  final String delayTime;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "price")
  final String price;

  @override
  String toString() {
    return 'SettingAddClockItem(action: $action, delayTime: $delayTime, id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingAddClockItemImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.delayTime, delayTime) ||
                other.delayTime == delayTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, action, delayTime, id, name, price);

  /// Create a copy of SettingAddClockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingAddClockItemImplCopyWith<_$SettingAddClockItemImpl> get copyWith =>
      __$$SettingAddClockItemImplCopyWithImpl<_$SettingAddClockItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingAddClockItemImplToJson(
      this,
    );
  }
}

abstract class _SettingAddClockItem implements SettingAddClockItem {
  const factory _SettingAddClockItem(
          {@JsonKey(name: "action") required final String action,
          @JsonKey(name: "delay_time") required final String delayTime,
          @JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "price") required final String price}) =
      _$SettingAddClockItemImpl;

  factory _SettingAddClockItem.fromJson(Map<String, dynamic> json) =
      _$SettingAddClockItemImpl.fromJson;

  @override
  @JsonKey(name: "action")
  String get action;
  @override
  @JsonKey(name: "delay_time")
  String get delayTime;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "price")
  String get price;

  /// Create a copy of SettingAddClockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingAddClockItemImplCopyWith<_$SettingAddClockItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
