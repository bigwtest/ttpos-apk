// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  @JsonKey(name: "checkout_zeroing_method")
  String get checkoutZeroingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "checkout_zeroing_method_list")
  List<SettingCheckoutZeroingMethodItem> get checkoutZeroingMethodList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "discount_method")
  String get discountMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "dish_card_style")
  String get dishCardStyle => throw _privateConstructorUsedError;
  @JsonKey(name: "dish_card_style_time")
  String get dishCardStyleTime => throw _privateConstructorUsedError;
  @JsonKey(name: "free_method")
  String get freeMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "free_method_list")
  List<SettingFreeMethodItem> get freeMethodList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "gift_method")
  String get giftMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_method_list")
  List<SettingGiftMethodItem> get giftMethodList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoice")
  String get isInvoice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_need_password")
  String get isNeedPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "no_clear_table")
  String get noClearTable => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code")
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(name: "zeroing_method")
  String get zeroingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "zeroing_method_list")
  List<SettingZeroingMethodItem> get zeroingMethodList =>
      throw _privateConstructorUsedError;

  /// Serializes this Business to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call(
      {@JsonKey(name: "checkout_zeroing_method") String checkoutZeroingMethod,
      @JsonKey(name: "checkout_zeroing_method_list")
      List<SettingCheckoutZeroingMethodItem> checkoutZeroingMethodList,
      @JsonKey(name: "discount_method") String discountMethod,
      @JsonKey(name: "dish_card_style") String dishCardStyle,
      @JsonKey(name: "dish_card_style_time") String dishCardStyleTime,
      @JsonKey(name: "free_method") String freeMethod,
      @JsonKey(name: "free_method_list")
      List<SettingFreeMethodItem> freeMethodList,
      @JsonKey(name: "gift_method") String giftMethod,
      @JsonKey(name: "gift_method_list")
      List<SettingGiftMethodItem> giftMethodList,
      @JsonKey(name: "is_invoice") String isInvoice,
      @JsonKey(name: "is_need_password") String isNeedPassword,
      @JsonKey(name: "no_clear_table") String noClearTable,
      @JsonKey(name: "qr_code") String qrCode,
      @JsonKey(name: "zeroing_method") String zeroingMethod,
      @JsonKey(name: "zeroing_method_list")
      List<SettingZeroingMethodItem> zeroingMethodList});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkoutZeroingMethod = null,
    Object? checkoutZeroingMethodList = null,
    Object? discountMethod = null,
    Object? dishCardStyle = null,
    Object? dishCardStyleTime = null,
    Object? freeMethod = null,
    Object? freeMethodList = null,
    Object? giftMethod = null,
    Object? giftMethodList = null,
    Object? isInvoice = null,
    Object? isNeedPassword = null,
    Object? noClearTable = null,
    Object? qrCode = null,
    Object? zeroingMethod = null,
    Object? zeroingMethodList = null,
  }) {
    return _then(_value.copyWith(
      checkoutZeroingMethod: null == checkoutZeroingMethod
          ? _value.checkoutZeroingMethod
          : checkoutZeroingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      checkoutZeroingMethodList: null == checkoutZeroingMethodList
          ? _value.checkoutZeroingMethodList
          : checkoutZeroingMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingCheckoutZeroingMethodItem>,
      discountMethod: null == discountMethod
          ? _value.discountMethod
          : discountMethod // ignore: cast_nullable_to_non_nullable
              as String,
      dishCardStyle: null == dishCardStyle
          ? _value.dishCardStyle
          : dishCardStyle // ignore: cast_nullable_to_non_nullable
              as String,
      dishCardStyleTime: null == dishCardStyleTime
          ? _value.dishCardStyleTime
          : dishCardStyleTime // ignore: cast_nullable_to_non_nullable
              as String,
      freeMethod: null == freeMethod
          ? _value.freeMethod
          : freeMethod // ignore: cast_nullable_to_non_nullable
              as String,
      freeMethodList: null == freeMethodList
          ? _value.freeMethodList
          : freeMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingFreeMethodItem>,
      giftMethod: null == giftMethod
          ? _value.giftMethod
          : giftMethod // ignore: cast_nullable_to_non_nullable
              as String,
      giftMethodList: null == giftMethodList
          ? _value.giftMethodList
          : giftMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingGiftMethodItem>,
      isInvoice: null == isInvoice
          ? _value.isInvoice
          : isInvoice // ignore: cast_nullable_to_non_nullable
              as String,
      isNeedPassword: null == isNeedPassword
          ? _value.isNeedPassword
          : isNeedPassword // ignore: cast_nullable_to_non_nullable
              as String,
      noClearTable: null == noClearTable
          ? _value.noClearTable
          : noClearTable // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      zeroingMethod: null == zeroingMethod
          ? _value.zeroingMethod
          : zeroingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      zeroingMethodList: null == zeroingMethodList
          ? _value.zeroingMethodList
          : zeroingMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingZeroingMethodItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessImplCopyWith<$Res>
    implements $BusinessCopyWith<$Res> {
  factory _$$BusinessImplCopyWith(
          _$BusinessImpl value, $Res Function(_$BusinessImpl) then) =
      __$$BusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "checkout_zeroing_method") String checkoutZeroingMethod,
      @JsonKey(name: "checkout_zeroing_method_list")
      List<SettingCheckoutZeroingMethodItem> checkoutZeroingMethodList,
      @JsonKey(name: "discount_method") String discountMethod,
      @JsonKey(name: "dish_card_style") String dishCardStyle,
      @JsonKey(name: "dish_card_style_time") String dishCardStyleTime,
      @JsonKey(name: "free_method") String freeMethod,
      @JsonKey(name: "free_method_list")
      List<SettingFreeMethodItem> freeMethodList,
      @JsonKey(name: "gift_method") String giftMethod,
      @JsonKey(name: "gift_method_list")
      List<SettingGiftMethodItem> giftMethodList,
      @JsonKey(name: "is_invoice") String isInvoice,
      @JsonKey(name: "is_need_password") String isNeedPassword,
      @JsonKey(name: "no_clear_table") String noClearTable,
      @JsonKey(name: "qr_code") String qrCode,
      @JsonKey(name: "zeroing_method") String zeroingMethod,
      @JsonKey(name: "zeroing_method_list")
      List<SettingZeroingMethodItem> zeroingMethodList});
}

/// @nodoc
class __$$BusinessImplCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$BusinessImpl>
    implements _$$BusinessImplCopyWith<$Res> {
  __$$BusinessImplCopyWithImpl(
      _$BusinessImpl _value, $Res Function(_$BusinessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkoutZeroingMethod = null,
    Object? checkoutZeroingMethodList = null,
    Object? discountMethod = null,
    Object? dishCardStyle = null,
    Object? dishCardStyleTime = null,
    Object? freeMethod = null,
    Object? freeMethodList = null,
    Object? giftMethod = null,
    Object? giftMethodList = null,
    Object? isInvoice = null,
    Object? isNeedPassword = null,
    Object? noClearTable = null,
    Object? qrCode = null,
    Object? zeroingMethod = null,
    Object? zeroingMethodList = null,
  }) {
    return _then(_$BusinessImpl(
      checkoutZeroingMethod: null == checkoutZeroingMethod
          ? _value.checkoutZeroingMethod
          : checkoutZeroingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      checkoutZeroingMethodList: null == checkoutZeroingMethodList
          ? _value._checkoutZeroingMethodList
          : checkoutZeroingMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingCheckoutZeroingMethodItem>,
      discountMethod: null == discountMethod
          ? _value.discountMethod
          : discountMethod // ignore: cast_nullable_to_non_nullable
              as String,
      dishCardStyle: null == dishCardStyle
          ? _value.dishCardStyle
          : dishCardStyle // ignore: cast_nullable_to_non_nullable
              as String,
      dishCardStyleTime: null == dishCardStyleTime
          ? _value.dishCardStyleTime
          : dishCardStyleTime // ignore: cast_nullable_to_non_nullable
              as String,
      freeMethod: null == freeMethod
          ? _value.freeMethod
          : freeMethod // ignore: cast_nullable_to_non_nullable
              as String,
      freeMethodList: null == freeMethodList
          ? _value._freeMethodList
          : freeMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingFreeMethodItem>,
      giftMethod: null == giftMethod
          ? _value.giftMethod
          : giftMethod // ignore: cast_nullable_to_non_nullable
              as String,
      giftMethodList: null == giftMethodList
          ? _value._giftMethodList
          : giftMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingGiftMethodItem>,
      isInvoice: null == isInvoice
          ? _value.isInvoice
          : isInvoice // ignore: cast_nullable_to_non_nullable
              as String,
      isNeedPassword: null == isNeedPassword
          ? _value.isNeedPassword
          : isNeedPassword // ignore: cast_nullable_to_non_nullable
              as String,
      noClearTable: null == noClearTable
          ? _value.noClearTable
          : noClearTable // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      zeroingMethod: null == zeroingMethod
          ? _value.zeroingMethod
          : zeroingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      zeroingMethodList: null == zeroingMethodList
          ? _value._zeroingMethodList
          : zeroingMethodList // ignore: cast_nullable_to_non_nullable
              as List<SettingZeroingMethodItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessImpl implements _Business {
  const _$BusinessImpl(
      {@JsonKey(name: "checkout_zeroing_method")
      required this.checkoutZeroingMethod,
      @JsonKey(name: "checkout_zeroing_method_list")
      required final List<SettingCheckoutZeroingMethodItem>
          checkoutZeroingMethodList,
      @JsonKey(name: "discount_method") required this.discountMethod,
      @JsonKey(name: "dish_card_style") required this.dishCardStyle,
      @JsonKey(name: "dish_card_style_time") required this.dishCardStyleTime,
      @JsonKey(name: "free_method") required this.freeMethod,
      @JsonKey(name: "free_method_list")
      required final List<SettingFreeMethodItem> freeMethodList,
      @JsonKey(name: "gift_method") required this.giftMethod,
      @JsonKey(name: "gift_method_list")
      required final List<SettingGiftMethodItem> giftMethodList,
      @JsonKey(name: "is_invoice") required this.isInvoice,
      @JsonKey(name: "is_need_password") required this.isNeedPassword,
      @JsonKey(name: "no_clear_table") required this.noClearTable,
      @JsonKey(name: "qr_code") required this.qrCode,
      @JsonKey(name: "zeroing_method") required this.zeroingMethod,
      @JsonKey(name: "zeroing_method_list")
      required final List<SettingZeroingMethodItem> zeroingMethodList})
      : _checkoutZeroingMethodList = checkoutZeroingMethodList,
        _freeMethodList = freeMethodList,
        _giftMethodList = giftMethodList,
        _zeroingMethodList = zeroingMethodList;

  factory _$BusinessImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessImplFromJson(json);

  @override
  @JsonKey(name: "checkout_zeroing_method")
  final String checkoutZeroingMethod;
  final List<SettingCheckoutZeroingMethodItem> _checkoutZeroingMethodList;
  @override
  @JsonKey(name: "checkout_zeroing_method_list")
  List<SettingCheckoutZeroingMethodItem> get checkoutZeroingMethodList {
    if (_checkoutZeroingMethodList is EqualUnmodifiableListView)
      return _checkoutZeroingMethodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkoutZeroingMethodList);
  }

  @override
  @JsonKey(name: "discount_method")
  final String discountMethod;
  @override
  @JsonKey(name: "dish_card_style")
  final String dishCardStyle;
  @override
  @JsonKey(name: "dish_card_style_time")
  final String dishCardStyleTime;
  @override
  @JsonKey(name: "free_method")
  final String freeMethod;
  final List<SettingFreeMethodItem> _freeMethodList;
  @override
  @JsonKey(name: "free_method_list")
  List<SettingFreeMethodItem> get freeMethodList {
    if (_freeMethodList is EqualUnmodifiableListView) return _freeMethodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_freeMethodList);
  }

  @override
  @JsonKey(name: "gift_method")
  final String giftMethod;
  final List<SettingGiftMethodItem> _giftMethodList;
  @override
  @JsonKey(name: "gift_method_list")
  List<SettingGiftMethodItem> get giftMethodList {
    if (_giftMethodList is EqualUnmodifiableListView) return _giftMethodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftMethodList);
  }

  @override
  @JsonKey(name: "is_invoice")
  final String isInvoice;
  @override
  @JsonKey(name: "is_need_password")
  final String isNeedPassword;
  @override
  @JsonKey(name: "no_clear_table")
  final String noClearTable;
  @override
  @JsonKey(name: "qr_code")
  final String qrCode;
  @override
  @JsonKey(name: "zeroing_method")
  final String zeroingMethod;
  final List<SettingZeroingMethodItem> _zeroingMethodList;
  @override
  @JsonKey(name: "zeroing_method_list")
  List<SettingZeroingMethodItem> get zeroingMethodList {
    if (_zeroingMethodList is EqualUnmodifiableListView)
      return _zeroingMethodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zeroingMethodList);
  }

  @override
  String toString() {
    return 'Business(checkoutZeroingMethod: $checkoutZeroingMethod, checkoutZeroingMethodList: $checkoutZeroingMethodList, discountMethod: $discountMethod, dishCardStyle: $dishCardStyle, dishCardStyleTime: $dishCardStyleTime, freeMethod: $freeMethod, freeMethodList: $freeMethodList, giftMethod: $giftMethod, giftMethodList: $giftMethodList, isInvoice: $isInvoice, isNeedPassword: $isNeedPassword, noClearTable: $noClearTable, qrCode: $qrCode, zeroingMethod: $zeroingMethod, zeroingMethodList: $zeroingMethodList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessImpl &&
            (identical(other.checkoutZeroingMethod, checkoutZeroingMethod) ||
                other.checkoutZeroingMethod == checkoutZeroingMethod) &&
            const DeepCollectionEquality().equals(
                other._checkoutZeroingMethodList, _checkoutZeroingMethodList) &&
            (identical(other.discountMethod, discountMethod) ||
                other.discountMethod == discountMethod) &&
            (identical(other.dishCardStyle, dishCardStyle) ||
                other.dishCardStyle == dishCardStyle) &&
            (identical(other.dishCardStyleTime, dishCardStyleTime) ||
                other.dishCardStyleTime == dishCardStyleTime) &&
            (identical(other.freeMethod, freeMethod) ||
                other.freeMethod == freeMethod) &&
            const DeepCollectionEquality()
                .equals(other._freeMethodList, _freeMethodList) &&
            (identical(other.giftMethod, giftMethod) ||
                other.giftMethod == giftMethod) &&
            const DeepCollectionEquality()
                .equals(other._giftMethodList, _giftMethodList) &&
            (identical(other.isInvoice, isInvoice) ||
                other.isInvoice == isInvoice) &&
            (identical(other.isNeedPassword, isNeedPassword) ||
                other.isNeedPassword == isNeedPassword) &&
            (identical(other.noClearTable, noClearTable) ||
                other.noClearTable == noClearTable) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.zeroingMethod, zeroingMethod) ||
                other.zeroingMethod == zeroingMethod) &&
            const DeepCollectionEquality()
                .equals(other._zeroingMethodList, _zeroingMethodList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkoutZeroingMethod,
      const DeepCollectionEquality().hash(_checkoutZeroingMethodList),
      discountMethod,
      dishCardStyle,
      dishCardStyleTime,
      freeMethod,
      const DeepCollectionEquality().hash(_freeMethodList),
      giftMethod,
      const DeepCollectionEquality().hash(_giftMethodList),
      isInvoice,
      isNeedPassword,
      noClearTable,
      qrCode,
      zeroingMethod,
      const DeepCollectionEquality().hash(_zeroingMethodList));

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      __$$BusinessImplCopyWithImpl<_$BusinessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessImplToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
      {@JsonKey(name: "checkout_zeroing_method")
      required final String checkoutZeroingMethod,
      @JsonKey(name: "checkout_zeroing_method_list")
      required final List<SettingCheckoutZeroingMethodItem>
          checkoutZeroingMethodList,
      @JsonKey(name: "discount_method") required final String discountMethod,
      @JsonKey(name: "dish_card_style") required final String dishCardStyle,
      @JsonKey(name: "dish_card_style_time")
      required final String dishCardStyleTime,
      @JsonKey(name: "free_method") required final String freeMethod,
      @JsonKey(name: "free_method_list")
      required final List<SettingFreeMethodItem> freeMethodList,
      @JsonKey(name: "gift_method") required final String giftMethod,
      @JsonKey(name: "gift_method_list")
      required final List<SettingGiftMethodItem> giftMethodList,
      @JsonKey(name: "is_invoice") required final String isInvoice,
      @JsonKey(name: "is_need_password") required final String isNeedPassword,
      @JsonKey(name: "no_clear_table") required final String noClearTable,
      @JsonKey(name: "qr_code") required final String qrCode,
      @JsonKey(name: "zeroing_method") required final String zeroingMethod,
      @JsonKey(name: "zeroing_method_list")
      required final List<SettingZeroingMethodItem>
          zeroingMethodList}) = _$BusinessImpl;

  factory _Business.fromJson(Map<String, dynamic> json) =
      _$BusinessImpl.fromJson;

  @override
  @JsonKey(name: "checkout_zeroing_method")
  String get checkoutZeroingMethod;
  @override
  @JsonKey(name: "checkout_zeroing_method_list")
  List<SettingCheckoutZeroingMethodItem> get checkoutZeroingMethodList;
  @override
  @JsonKey(name: "discount_method")
  String get discountMethod;
  @override
  @JsonKey(name: "dish_card_style")
  String get dishCardStyle;
  @override
  @JsonKey(name: "dish_card_style_time")
  String get dishCardStyleTime;
  @override
  @JsonKey(name: "free_method")
  String get freeMethod;
  @override
  @JsonKey(name: "free_method_list")
  List<SettingFreeMethodItem> get freeMethodList;
  @override
  @JsonKey(name: "gift_method")
  String get giftMethod;
  @override
  @JsonKey(name: "gift_method_list")
  List<SettingGiftMethodItem> get giftMethodList;
  @override
  @JsonKey(name: "is_invoice")
  String get isInvoice;
  @override
  @JsonKey(name: "is_need_password")
  String get isNeedPassword;
  @override
  @JsonKey(name: "no_clear_table")
  String get noClearTable;
  @override
  @JsonKey(name: "qr_code")
  String get qrCode;
  @override
  @JsonKey(name: "zeroing_method")
  String get zeroingMethod;
  @override
  @JsonKey(name: "zeroing_method_list")
  List<SettingZeroingMethodItem> get zeroingMethodList;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingCheckoutZeroingMethodItem _$SettingCheckoutZeroingMethodItemFromJson(
    Map<String, dynamic> json) {
  return _SettingCheckoutZeroingMethodItem.fromJson(json);
}

/// @nodoc
mixin _$SettingCheckoutZeroingMethodItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SettingCheckoutZeroingMethodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingCheckoutZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingCheckoutZeroingMethodItemCopyWith<SettingCheckoutZeroingMethodItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCheckoutZeroingMethodItemCopyWith<$Res> {
  factory $SettingCheckoutZeroingMethodItemCopyWith(
          SettingCheckoutZeroingMethodItem value,
          $Res Function(SettingCheckoutZeroingMethodItem) then) =
      _$SettingCheckoutZeroingMethodItemCopyWithImpl<$Res,
          SettingCheckoutZeroingMethodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SettingCheckoutZeroingMethodItemCopyWithImpl<$Res,
        $Val extends SettingCheckoutZeroingMethodItem>
    implements $SettingCheckoutZeroingMethodItemCopyWith<$Res> {
  _$SettingCheckoutZeroingMethodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingCheckoutZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingCheckoutZeroingMethodItemImplCopyWith<$Res>
    implements $SettingCheckoutZeroingMethodItemCopyWith<$Res> {
  factory _$$SettingCheckoutZeroingMethodItemImplCopyWith(
          _$SettingCheckoutZeroingMethodItemImpl value,
          $Res Function(_$SettingCheckoutZeroingMethodItemImpl) then) =
      __$$SettingCheckoutZeroingMethodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SettingCheckoutZeroingMethodItemImplCopyWithImpl<$Res>
    extends _$SettingCheckoutZeroingMethodItemCopyWithImpl<$Res,
        _$SettingCheckoutZeroingMethodItemImpl>
    implements _$$SettingCheckoutZeroingMethodItemImplCopyWith<$Res> {
  __$$SettingCheckoutZeroingMethodItemImplCopyWithImpl(
      _$SettingCheckoutZeroingMethodItemImpl _value,
      $Res Function(_$SettingCheckoutZeroingMethodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingCheckoutZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$SettingCheckoutZeroingMethodItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingCheckoutZeroingMethodItemImpl
    implements _SettingCheckoutZeroingMethodItem {
  const _$SettingCheckoutZeroingMethodItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "name") required this.name});

  factory _$SettingCheckoutZeroingMethodItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SettingCheckoutZeroingMethodItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SettingCheckoutZeroingMethodItem(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingCheckoutZeroingMethodItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of SettingCheckoutZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingCheckoutZeroingMethodItemImplCopyWith<
          _$SettingCheckoutZeroingMethodItemImpl>
      get copyWith => __$$SettingCheckoutZeroingMethodItemImplCopyWithImpl<
          _$SettingCheckoutZeroingMethodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingCheckoutZeroingMethodItemImplToJson(
      this,
    );
  }
}

abstract class _SettingCheckoutZeroingMethodItem
    implements SettingCheckoutZeroingMethodItem {
  const factory _SettingCheckoutZeroingMethodItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "name") required final String name}) =
      _$SettingCheckoutZeroingMethodItemImpl;

  factory _SettingCheckoutZeroingMethodItem.fromJson(
          Map<String, dynamic> json) =
      _$SettingCheckoutZeroingMethodItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of SettingCheckoutZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingCheckoutZeroingMethodItemImplCopyWith<
          _$SettingCheckoutZeroingMethodItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SettingFreeMethodItem _$SettingFreeMethodItemFromJson(
    Map<String, dynamic> json) {
  return _SettingFreeMethodItem.fromJson(json);
}

/// @nodoc
mixin _$SettingFreeMethodItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SettingFreeMethodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingFreeMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingFreeMethodItemCopyWith<SettingFreeMethodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingFreeMethodItemCopyWith<$Res> {
  factory $SettingFreeMethodItemCopyWith(SettingFreeMethodItem value,
          $Res Function(SettingFreeMethodItem) then) =
      _$SettingFreeMethodItemCopyWithImpl<$Res, SettingFreeMethodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SettingFreeMethodItemCopyWithImpl<$Res,
        $Val extends SettingFreeMethodItem>
    implements $SettingFreeMethodItemCopyWith<$Res> {
  _$SettingFreeMethodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingFreeMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingFreeMethodItemImplCopyWith<$Res>
    implements $SettingFreeMethodItemCopyWith<$Res> {
  factory _$$SettingFreeMethodItemImplCopyWith(
          _$SettingFreeMethodItemImpl value,
          $Res Function(_$SettingFreeMethodItemImpl) then) =
      __$$SettingFreeMethodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SettingFreeMethodItemImplCopyWithImpl<$Res>
    extends _$SettingFreeMethodItemCopyWithImpl<$Res,
        _$SettingFreeMethodItemImpl>
    implements _$$SettingFreeMethodItemImplCopyWith<$Res> {
  __$$SettingFreeMethodItemImplCopyWithImpl(_$SettingFreeMethodItemImpl _value,
      $Res Function(_$SettingFreeMethodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingFreeMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$SettingFreeMethodItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingFreeMethodItemImpl implements _SettingFreeMethodItem {
  const _$SettingFreeMethodItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "name") required this.name});

  factory _$SettingFreeMethodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingFreeMethodItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SettingFreeMethodItem(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingFreeMethodItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of SettingFreeMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingFreeMethodItemImplCopyWith<_$SettingFreeMethodItemImpl>
      get copyWith => __$$SettingFreeMethodItemImplCopyWithImpl<
          _$SettingFreeMethodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingFreeMethodItemImplToJson(
      this,
    );
  }
}

abstract class _SettingFreeMethodItem implements SettingFreeMethodItem {
  const factory _SettingFreeMethodItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "name") required final String name}) =
      _$SettingFreeMethodItemImpl;

  factory _SettingFreeMethodItem.fromJson(Map<String, dynamic> json) =
      _$SettingFreeMethodItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of SettingFreeMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingFreeMethodItemImplCopyWith<_$SettingFreeMethodItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SettingGiftMethodItem _$SettingGiftMethodItemFromJson(
    Map<String, dynamic> json) {
  return _SettingGiftMethodItem.fromJson(json);
}

/// @nodoc
mixin _$SettingGiftMethodItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SettingGiftMethodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingGiftMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingGiftMethodItemCopyWith<SettingGiftMethodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingGiftMethodItemCopyWith<$Res> {
  factory $SettingGiftMethodItemCopyWith(SettingGiftMethodItem value,
          $Res Function(SettingGiftMethodItem) then) =
      _$SettingGiftMethodItemCopyWithImpl<$Res, SettingGiftMethodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SettingGiftMethodItemCopyWithImpl<$Res,
        $Val extends SettingGiftMethodItem>
    implements $SettingGiftMethodItemCopyWith<$Res> {
  _$SettingGiftMethodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingGiftMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingGiftMethodItemImplCopyWith<$Res>
    implements $SettingGiftMethodItemCopyWith<$Res> {
  factory _$$SettingGiftMethodItemImplCopyWith(
          _$SettingGiftMethodItemImpl value,
          $Res Function(_$SettingGiftMethodItemImpl) then) =
      __$$SettingGiftMethodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SettingGiftMethodItemImplCopyWithImpl<$Res>
    extends _$SettingGiftMethodItemCopyWithImpl<$Res,
        _$SettingGiftMethodItemImpl>
    implements _$$SettingGiftMethodItemImplCopyWith<$Res> {
  __$$SettingGiftMethodItemImplCopyWithImpl(_$SettingGiftMethodItemImpl _value,
      $Res Function(_$SettingGiftMethodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingGiftMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$SettingGiftMethodItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingGiftMethodItemImpl implements _SettingGiftMethodItem {
  const _$SettingGiftMethodItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "name") required this.name});

  factory _$SettingGiftMethodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingGiftMethodItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SettingGiftMethodItem(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingGiftMethodItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of SettingGiftMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingGiftMethodItemImplCopyWith<_$SettingGiftMethodItemImpl>
      get copyWith => __$$SettingGiftMethodItemImplCopyWithImpl<
          _$SettingGiftMethodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingGiftMethodItemImplToJson(
      this,
    );
  }
}

abstract class _SettingGiftMethodItem implements SettingGiftMethodItem {
  const factory _SettingGiftMethodItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "name") required final String name}) =
      _$SettingGiftMethodItemImpl;

  factory _SettingGiftMethodItem.fromJson(Map<String, dynamic> json) =
      _$SettingGiftMethodItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of SettingGiftMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingGiftMethodItemImplCopyWith<_$SettingGiftMethodItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SettingZeroingMethodItem _$SettingZeroingMethodItemFromJson(
    Map<String, dynamic> json) {
  return _SettingZeroingMethodItem.fromJson(json);
}

/// @nodoc
mixin _$SettingZeroingMethodItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SettingZeroingMethodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingZeroingMethodItemCopyWith<SettingZeroingMethodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingZeroingMethodItemCopyWith<$Res> {
  factory $SettingZeroingMethodItemCopyWith(SettingZeroingMethodItem value,
          $Res Function(SettingZeroingMethodItem) then) =
      _$SettingZeroingMethodItemCopyWithImpl<$Res, SettingZeroingMethodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SettingZeroingMethodItemCopyWithImpl<$Res,
        $Val extends SettingZeroingMethodItem>
    implements $SettingZeroingMethodItemCopyWith<$Res> {
  _$SettingZeroingMethodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingZeroingMethodItemImplCopyWith<$Res>
    implements $SettingZeroingMethodItemCopyWith<$Res> {
  factory _$$SettingZeroingMethodItemImplCopyWith(
          _$SettingZeroingMethodItemImpl value,
          $Res Function(_$SettingZeroingMethodItemImpl) then) =
      __$$SettingZeroingMethodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SettingZeroingMethodItemImplCopyWithImpl<$Res>
    extends _$SettingZeroingMethodItemCopyWithImpl<$Res,
        _$SettingZeroingMethodItemImpl>
    implements _$$SettingZeroingMethodItemImplCopyWith<$Res> {
  __$$SettingZeroingMethodItemImplCopyWithImpl(
      _$SettingZeroingMethodItemImpl _value,
      $Res Function(_$SettingZeroingMethodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$SettingZeroingMethodItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingZeroingMethodItemImpl implements _SettingZeroingMethodItem {
  const _$SettingZeroingMethodItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "name") required this.name});

  factory _$SettingZeroingMethodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingZeroingMethodItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SettingZeroingMethodItem(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingZeroingMethodItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of SettingZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingZeroingMethodItemImplCopyWith<_$SettingZeroingMethodItemImpl>
      get copyWith => __$$SettingZeroingMethodItemImplCopyWithImpl<
          _$SettingZeroingMethodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingZeroingMethodItemImplToJson(
      this,
    );
  }
}

abstract class _SettingZeroingMethodItem implements SettingZeroingMethodItem {
  const factory _SettingZeroingMethodItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "name") required final String name}) =
      _$SettingZeroingMethodItemImpl;

  factory _SettingZeroingMethodItem.fromJson(Map<String, dynamic> json) =
      _$SettingZeroingMethodItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of SettingZeroingMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingZeroingMethodItemImplCopyWith<_$SettingZeroingMethodItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
