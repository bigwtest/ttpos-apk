// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'h5.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

H5 _$H5FromJson(Map<String, dynamic> json) {
  return _H5.fromJson(json);
}

/// @nodoc
mixin _$H5 {
  @JsonKey(name: "default_language")
  String get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet_order_limit")
  SafetyNumber get isBuffetOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "is_call_service")
  SafetyNumber get isCallService => throw _privateConstructorUsedError;
  @JsonKey(name: "is_customer_order")
  SafetyNumber get isCustomerOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "is_order_limit")
  SafetyNumber get isOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show_scan_sold_out")
  SafetyNumber get isShowSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "is_voice_remind")
  SafetyNumber get isVoiceRemind => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  List<String> get language => throw _privateConstructorUsedError;
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList => throw _privateConstructorUsedError;
  @JsonKey(name: "order_limit")
  OrderLimit? get orderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "buffet_order_limit")
  OrderLimit? get buffetOrderLimit => throw _privateConstructorUsedError;

  /// Serializes this H5 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $H5CopyWith<H5> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $H5CopyWith<$Res> {
  factory $H5CopyWith(H5 value, $Res Function(H5) then) =
      _$H5CopyWithImpl<$Res, H5>;
  @useResult
  $Res call(
      {@JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_buffet_order_limit") SafetyNumber isBuffetOrderLimit,
      @JsonKey(name: "is_call_service") SafetyNumber isCallService,
      @JsonKey(name: "is_customer_order") SafetyNumber isCustomerOrder,
      @JsonKey(name: "is_order_limit") SafetyNumber isOrderLimit,
      @JsonKey(name: "is_show_scan_sold_out") SafetyNumber isShowSoldOut,
      @JsonKey(name: "is_voice_remind") SafetyNumber isVoiceRemind,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "order_limit") OrderLimit? orderLimit,
      @JsonKey(name: "buffet_order_limit") OrderLimit? buffetOrderLimit});

  $SafetyNumberCopyWith<$Res> get isBuffetOrderLimit;
  $SafetyNumberCopyWith<$Res> get isCallService;
  $SafetyNumberCopyWith<$Res> get isCustomerOrder;
  $SafetyNumberCopyWith<$Res> get isOrderLimit;
  $SafetyNumberCopyWith<$Res> get isShowSoldOut;
  $SafetyNumberCopyWith<$Res> get isVoiceRemind;
  $OrderLimitCopyWith<$Res>? get orderLimit;
  $OrderLimitCopyWith<$Res>? get buffetOrderLimit;
}

/// @nodoc
class _$H5CopyWithImpl<$Res, $Val extends H5> implements $H5CopyWith<$Res> {
  _$H5CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguage = null,
    Object? isBuffetOrderLimit = null,
    Object? isCallService = null,
    Object? isCustomerOrder = null,
    Object? isOrderLimit = null,
    Object? isShowSoldOut = null,
    Object? isVoiceRemind = null,
    Object? language = null,
    Object? languageList = null,
    Object? orderLimit = freezed,
    Object? buffetOrderLimit = freezed,
  }) {
    return _then(_value.copyWith(
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isBuffetOrderLimit: null == isBuffetOrderLimit
          ? _value.isBuffetOrderLimit
          : isBuffetOrderLimit // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isCallService: null == isCallService
          ? _value.isCallService
          : isCallService // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isCustomerOrder: null == isCustomerOrder
          ? _value.isCustomerOrder
          : isCustomerOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isOrderLimit: null == isOrderLimit
          ? _value.isOrderLimit
          : isOrderLimit // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isShowSoldOut: null == isShowSoldOut
          ? _value.isShowSoldOut
          : isShowSoldOut // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isVoiceRemind: null == isVoiceRemind
          ? _value.isVoiceRemind
          : isVoiceRemind // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      orderLimit: freezed == orderLimit
          ? _value.orderLimit
          : orderLimit // ignore: cast_nullable_to_non_nullable
              as OrderLimit?,
      buffetOrderLimit: freezed == buffetOrderLimit
          ? _value.buffetOrderLimit
          : buffetOrderLimit // ignore: cast_nullable_to_non_nullable
              as OrderLimit?,
    ) as $Val);
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isBuffetOrderLimit {
    return $SafetyNumberCopyWith<$Res>(_value.isBuffetOrderLimit, (value) {
      return _then(_value.copyWith(isBuffetOrderLimit: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isCallService {
    return $SafetyNumberCopyWith<$Res>(_value.isCallService, (value) {
      return _then(_value.copyWith(isCallService: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isCustomerOrder {
    return $SafetyNumberCopyWith<$Res>(_value.isCustomerOrder, (value) {
      return _then(_value.copyWith(isCustomerOrder: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isOrderLimit {
    return $SafetyNumberCopyWith<$Res>(_value.isOrderLimit, (value) {
      return _then(_value.copyWith(isOrderLimit: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isShowSoldOut {
    return $SafetyNumberCopyWith<$Res>(_value.isShowSoldOut, (value) {
      return _then(_value.copyWith(isShowSoldOut: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isVoiceRemind {
    return $SafetyNumberCopyWith<$Res>(_value.isVoiceRemind, (value) {
      return _then(_value.copyWith(isVoiceRemind: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderLimitCopyWith<$Res>? get orderLimit {
    if (_value.orderLimit == null) {
      return null;
    }

    return $OrderLimitCopyWith<$Res>(_value.orderLimit!, (value) {
      return _then(_value.copyWith(orderLimit: value) as $Val);
    });
  }

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderLimitCopyWith<$Res>? get buffetOrderLimit {
    if (_value.buffetOrderLimit == null) {
      return null;
    }

    return $OrderLimitCopyWith<$Res>(_value.buffetOrderLimit!, (value) {
      return _then(_value.copyWith(buffetOrderLimit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$H5ImplCopyWith<$Res> implements $H5CopyWith<$Res> {
  factory _$$H5ImplCopyWith(_$H5Impl value, $Res Function(_$H5Impl) then) =
      __$$H5ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_buffet_order_limit") SafetyNumber isBuffetOrderLimit,
      @JsonKey(name: "is_call_service") SafetyNumber isCallService,
      @JsonKey(name: "is_customer_order") SafetyNumber isCustomerOrder,
      @JsonKey(name: "is_order_limit") SafetyNumber isOrderLimit,
      @JsonKey(name: "is_show_scan_sold_out") SafetyNumber isShowSoldOut,
      @JsonKey(name: "is_voice_remind") SafetyNumber isVoiceRemind,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "order_limit") OrderLimit? orderLimit,
      @JsonKey(name: "buffet_order_limit") OrderLimit? buffetOrderLimit});

  @override
  $SafetyNumberCopyWith<$Res> get isBuffetOrderLimit;
  @override
  $SafetyNumberCopyWith<$Res> get isCallService;
  @override
  $SafetyNumberCopyWith<$Res> get isCustomerOrder;
  @override
  $SafetyNumberCopyWith<$Res> get isOrderLimit;
  @override
  $SafetyNumberCopyWith<$Res> get isShowSoldOut;
  @override
  $SafetyNumberCopyWith<$Res> get isVoiceRemind;
  @override
  $OrderLimitCopyWith<$Res>? get orderLimit;
  @override
  $OrderLimitCopyWith<$Res>? get buffetOrderLimit;
}

/// @nodoc
class __$$H5ImplCopyWithImpl<$Res> extends _$H5CopyWithImpl<$Res, _$H5Impl>
    implements _$$H5ImplCopyWith<$Res> {
  __$$H5ImplCopyWithImpl(_$H5Impl _value, $Res Function(_$H5Impl) _then)
      : super(_value, _then);

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguage = null,
    Object? isBuffetOrderLimit = null,
    Object? isCallService = null,
    Object? isCustomerOrder = null,
    Object? isOrderLimit = null,
    Object? isShowSoldOut = null,
    Object? isVoiceRemind = null,
    Object? language = null,
    Object? languageList = null,
    Object? orderLimit = freezed,
    Object? buffetOrderLimit = freezed,
  }) {
    return _then(_$H5Impl(
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isBuffetOrderLimit: null == isBuffetOrderLimit
          ? _value.isBuffetOrderLimit
          : isBuffetOrderLimit // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isCallService: null == isCallService
          ? _value.isCallService
          : isCallService // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isCustomerOrder: null == isCustomerOrder
          ? _value.isCustomerOrder
          : isCustomerOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isOrderLimit: null == isOrderLimit
          ? _value.isOrderLimit
          : isOrderLimit // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isShowSoldOut: null == isShowSoldOut
          ? _value.isShowSoldOut
          : isShowSoldOut // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isVoiceRemind: null == isVoiceRemind
          ? _value.isVoiceRemind
          : isVoiceRemind // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      language: null == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      orderLimit: freezed == orderLimit
          ? _value.orderLimit
          : orderLimit // ignore: cast_nullable_to_non_nullable
              as OrderLimit?,
      buffetOrderLimit: freezed == buffetOrderLimit
          ? _value.buffetOrderLimit
          : buffetOrderLimit // ignore: cast_nullable_to_non_nullable
              as OrderLimit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$H5Impl implements _H5 {
  const _$H5Impl(
      {@JsonKey(name: "default_language") required this.defaultLanguage,
      @JsonKey(name: "is_buffet_order_limit") required this.isBuffetOrderLimit,
      @JsonKey(name: "is_call_service") required this.isCallService,
      @JsonKey(name: "is_customer_order") required this.isCustomerOrder,
      @JsonKey(name: "is_order_limit") required this.isOrderLimit,
      @JsonKey(name: "is_show_scan_sold_out") required this.isShowSoldOut,
      @JsonKey(name: "is_voice_remind") required this.isVoiceRemind,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "order_limit") this.orderLimit,
      @JsonKey(name: "buffet_order_limit") this.buffetOrderLimit})
      : _language = language,
        _languageList = languageList;

  factory _$H5Impl.fromJson(Map<String, dynamic> json) =>
      _$$H5ImplFromJson(json);

  @override
  @JsonKey(name: "default_language")
  final String defaultLanguage;
  @override
  @JsonKey(name: "is_buffet_order_limit")
  final SafetyNumber isBuffetOrderLimit;
  @override
  @JsonKey(name: "is_call_service")
  final SafetyNumber isCallService;
  @override
  @JsonKey(name: "is_customer_order")
  final SafetyNumber isCustomerOrder;
  @override
  @JsonKey(name: "is_order_limit")
  final SafetyNumber isOrderLimit;
  @override
  @JsonKey(name: "is_show_scan_sold_out")
  final SafetyNumber isShowSoldOut;
  @override
  @JsonKey(name: "is_voice_remind")
  final SafetyNumber isVoiceRemind;
  final List<String> _language;
  @override
  @JsonKey(name: "language")
  List<String> get language {
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_language);
  }

  final List<LanguageItem> _languageList;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList {
    if (_languageList is EqualUnmodifiableListView) return _languageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageList);
  }

  @override
  @JsonKey(name: "order_limit")
  final OrderLimit? orderLimit;
  @override
  @JsonKey(name: "buffet_order_limit")
  final OrderLimit? buffetOrderLimit;

  @override
  String toString() {
    return 'H5(defaultLanguage: $defaultLanguage, isBuffetOrderLimit: $isBuffetOrderLimit, isCallService: $isCallService, isCustomerOrder: $isCustomerOrder, isOrderLimit: $isOrderLimit, isShowSoldOut: $isShowSoldOut, isVoiceRemind: $isVoiceRemind, language: $language, languageList: $languageList, orderLimit: $orderLimit, buffetOrderLimit: $buffetOrderLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$H5Impl &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.isBuffetOrderLimit, isBuffetOrderLimit) ||
                other.isBuffetOrderLimit == isBuffetOrderLimit) &&
            (identical(other.isCallService, isCallService) ||
                other.isCallService == isCallService) &&
            (identical(other.isCustomerOrder, isCustomerOrder) ||
                other.isCustomerOrder == isCustomerOrder) &&
            (identical(other.isOrderLimit, isOrderLimit) ||
                other.isOrderLimit == isOrderLimit) &&
            (identical(other.isShowSoldOut, isShowSoldOut) ||
                other.isShowSoldOut == isShowSoldOut) &&
            (identical(other.isVoiceRemind, isVoiceRemind) ||
                other.isVoiceRemind == isVoiceRemind) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            (identical(other.orderLimit, orderLimit) ||
                other.orderLimit == orderLimit) &&
            (identical(other.buffetOrderLimit, buffetOrderLimit) ||
                other.buffetOrderLimit == buffetOrderLimit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      defaultLanguage,
      isBuffetOrderLimit,
      isCallService,
      isCustomerOrder,
      isOrderLimit,
      isShowSoldOut,
      isVoiceRemind,
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_languageList),
      orderLimit,
      buffetOrderLimit);

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$H5ImplCopyWith<_$H5Impl> get copyWith =>
      __$$H5ImplCopyWithImpl<_$H5Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$H5ImplToJson(
      this,
    );
  }
}

abstract class _H5 implements H5 {
  const factory _H5(
      {@JsonKey(name: "default_language") required final String defaultLanguage,
      @JsonKey(name: "is_buffet_order_limit")
      required final SafetyNumber isBuffetOrderLimit,
      @JsonKey(name: "is_call_service")
      required final SafetyNumber isCallService,
      @JsonKey(name: "is_customer_order")
      required final SafetyNumber isCustomerOrder,
      @JsonKey(name: "is_order_limit") required final SafetyNumber isOrderLimit,
      @JsonKey(name: "is_show_scan_sold_out")
      required final SafetyNumber isShowSoldOut,
      @JsonKey(name: "is_voice_remind")
      required final SafetyNumber isVoiceRemind,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "order_limit") final OrderLimit? orderLimit,
      @JsonKey(name: "buffet_order_limit")
      final OrderLimit? buffetOrderLimit}) = _$H5Impl;

  factory _H5.fromJson(Map<String, dynamic> json) = _$H5Impl.fromJson;

  @override
  @JsonKey(name: "default_language")
  String get defaultLanguage;
  @override
  @JsonKey(name: "is_buffet_order_limit")
  SafetyNumber get isBuffetOrderLimit;
  @override
  @JsonKey(name: "is_call_service")
  SafetyNumber get isCallService;
  @override
  @JsonKey(name: "is_customer_order")
  SafetyNumber get isCustomerOrder;
  @override
  @JsonKey(name: "is_order_limit")
  SafetyNumber get isOrderLimit;
  @override
  @JsonKey(name: "is_show_scan_sold_out")
  SafetyNumber get isShowSoldOut;
  @override
  @JsonKey(name: "is_voice_remind")
  SafetyNumber get isVoiceRemind;
  @override
  @JsonKey(name: "language")
  List<String> get language;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList;
  @override
  @JsonKey(name: "order_limit")
  OrderLimit? get orderLimit;
  @override
  @JsonKey(name: "buffet_order_limit")
  OrderLimit? get buffetOrderLimit;

  /// Create a copy of H5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$H5ImplCopyWith<_$H5Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLimit _$OrderLimitFromJson(Map<String, dynamic> json) {
  return _OrderLimit.fromJson(json);
}

/// @nodoc
mixin _$OrderLimit {
  @JsonKey(name: "is_limit_num")
  String get isLimitNum => throw _privateConstructorUsedError;
  @JsonKey(name: "is_limit_time")
  String get isLimitTime => throw _privateConstructorUsedError;
  @JsonKey(name: "limit_num")
  String get limitNum => throw _privateConstructorUsedError;
  @JsonKey(name: "limit_time")
  String get limitTime => throw _privateConstructorUsedError;

  /// Serializes this OrderLimit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderLimitCopyWith<OrderLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLimitCopyWith<$Res> {
  factory $OrderLimitCopyWith(
          OrderLimit value, $Res Function(OrderLimit) then) =
      _$OrderLimitCopyWithImpl<$Res, OrderLimit>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_limit_num") String isLimitNum,
      @JsonKey(name: "is_limit_time") String isLimitTime,
      @JsonKey(name: "limit_num") String limitNum,
      @JsonKey(name: "limit_time") String limitTime});
}

/// @nodoc
class _$OrderLimitCopyWithImpl<$Res, $Val extends OrderLimit>
    implements $OrderLimitCopyWith<$Res> {
  _$OrderLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLimitNum = null,
    Object? isLimitTime = null,
    Object? limitNum = null,
    Object? limitTime = null,
  }) {
    return _then(_value.copyWith(
      isLimitNum: null == isLimitNum
          ? _value.isLimitNum
          : isLimitNum // ignore: cast_nullable_to_non_nullable
              as String,
      isLimitTime: null == isLimitTime
          ? _value.isLimitTime
          : isLimitTime // ignore: cast_nullable_to_non_nullable
              as String,
      limitNum: null == limitNum
          ? _value.limitNum
          : limitNum // ignore: cast_nullable_to_non_nullable
              as String,
      limitTime: null == limitTime
          ? _value.limitTime
          : limitTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderLimitImplCopyWith<$Res>
    implements $OrderLimitCopyWith<$Res> {
  factory _$$OrderLimitImplCopyWith(
          _$OrderLimitImpl value, $Res Function(_$OrderLimitImpl) then) =
      __$$OrderLimitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_limit_num") String isLimitNum,
      @JsonKey(name: "is_limit_time") String isLimitTime,
      @JsonKey(name: "limit_num") String limitNum,
      @JsonKey(name: "limit_time") String limitTime});
}

/// @nodoc
class __$$OrderLimitImplCopyWithImpl<$Res>
    extends _$OrderLimitCopyWithImpl<$Res, _$OrderLimitImpl>
    implements _$$OrderLimitImplCopyWith<$Res> {
  __$$OrderLimitImplCopyWithImpl(
      _$OrderLimitImpl _value, $Res Function(_$OrderLimitImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLimitNum = null,
    Object? isLimitTime = null,
    Object? limitNum = null,
    Object? limitTime = null,
  }) {
    return _then(_$OrderLimitImpl(
      isLimitNum: null == isLimitNum
          ? _value.isLimitNum
          : isLimitNum // ignore: cast_nullable_to_non_nullable
              as String,
      isLimitTime: null == isLimitTime
          ? _value.isLimitTime
          : isLimitTime // ignore: cast_nullable_to_non_nullable
              as String,
      limitNum: null == limitNum
          ? _value.limitNum
          : limitNum // ignore: cast_nullable_to_non_nullable
              as String,
      limitTime: null == limitTime
          ? _value.limitTime
          : limitTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLimitImpl implements _OrderLimit {
  const _$OrderLimitImpl(
      {@JsonKey(name: "is_limit_num") required this.isLimitNum,
      @JsonKey(name: "is_limit_time") required this.isLimitTime,
      @JsonKey(name: "limit_num") required this.limitNum,
      @JsonKey(name: "limit_time") required this.limitTime});

  factory _$OrderLimitImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLimitImplFromJson(json);

  @override
  @JsonKey(name: "is_limit_num")
  final String isLimitNum;
  @override
  @JsonKey(name: "is_limit_time")
  final String isLimitTime;
  @override
  @JsonKey(name: "limit_num")
  final String limitNum;
  @override
  @JsonKey(name: "limit_time")
  final String limitTime;

  @override
  String toString() {
    return 'OrderLimit(isLimitNum: $isLimitNum, isLimitTime: $isLimitTime, limitNum: $limitNum, limitTime: $limitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLimitImpl &&
            (identical(other.isLimitNum, isLimitNum) ||
                other.isLimitNum == isLimitNum) &&
            (identical(other.isLimitTime, isLimitTime) ||
                other.isLimitTime == isLimitTime) &&
            (identical(other.limitNum, limitNum) ||
                other.limitNum == limitNum) &&
            (identical(other.limitTime, limitTime) ||
                other.limitTime == limitTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLimitNum, isLimitTime, limitNum, limitTime);

  /// Create a copy of OrderLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLimitImplCopyWith<_$OrderLimitImpl> get copyWith =>
      __$$OrderLimitImplCopyWithImpl<_$OrderLimitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLimitImplToJson(
      this,
    );
  }
}

abstract class _OrderLimit implements OrderLimit {
  const factory _OrderLimit(
          {@JsonKey(name: "is_limit_num") required final String isLimitNum,
          @JsonKey(name: "is_limit_time") required final String isLimitTime,
          @JsonKey(name: "limit_num") required final String limitNum,
          @JsonKey(name: "limit_time") required final String limitTime}) =
      _$OrderLimitImpl;

  factory _OrderLimit.fromJson(Map<String, dynamic> json) =
      _$OrderLimitImpl.fromJson;

  @override
  @JsonKey(name: "is_limit_num")
  String get isLimitNum;
  @override
  @JsonKey(name: "is_limit_time")
  String get isLimitTime;
  @override
  @JsonKey(name: "limit_num")
  String get limitNum;
  @override
  @JsonKey(name: "limit_time")
  String get limitTime;

  /// Create a copy of OrderLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderLimitImplCopyWith<_$OrderLimitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
