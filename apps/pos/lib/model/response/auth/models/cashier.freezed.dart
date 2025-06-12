// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cashier _$CashierFromJson(Map<String, dynamic> json) {
  return _Cashier.fromJson(json);
}

/// @nodoc
mixin _$Cashier {
  @JsonKey(name: "auto_lock_screen")
  String get autoLockScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "auto_order_limit")
  String get autoOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "carousel")
  List<SettingCarouselItem> get carousel => throw _privateConstructorUsedError;
  @JsonKey(name: "default_language")
  String get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_lock_screen")
  String get isAutoLockScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_order")
  String get isAutoOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_send")
  String get isAutoSend => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_voice")
  String get isAutoVoice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_open_cashier_password")
  String get isOpenCashierPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "is_remain_color")
  String get isRemainColor => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show_assistant_sold_out")
  int get isShowAssistantSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show_scan_sold_out")
  int get isShowScanSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  List<String> get language => throw _privateConstructorUsedError;
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList => throw _privateConstructorUsedError;
  @JsonKey(name: "menu_show_sold_out")
  String get menuShowSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "order_method")
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_color")
  List<String> get remainColor => throw _privateConstructorUsedError;
  @JsonKey(name: "server")
  Server get server => throw _privateConstructorUsedError;

  /// Serializes this Cashier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CashierCopyWith<Cashier> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashierCopyWith<$Res> {
  factory $CashierCopyWith(Cashier value, $Res Function(Cashier) then) =
      _$CashierCopyWithImpl<$Res, Cashier>;
  @useResult
  $Res call(
      {@JsonKey(name: "auto_lock_screen") String autoLockScreen,
      @JsonKey(name: "auto_order_limit") String autoOrderLimit,
      @JsonKey(name: "carousel") List<SettingCarouselItem> carousel,
      @JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen") String isAutoLockScreen,
      @JsonKey(name: "is_auto_order") String isAutoOrder,
      @JsonKey(name: "is_auto_send") String isAutoSend,
      @JsonKey(name: "is_auto_voice") String isAutoVoice,
      @JsonKey(name: "is_open_cashier_password") String isOpenCashierPassword,
      @JsonKey(name: "is_remain_color") String isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out") int isShowAssistantSoldOut,
      @JsonKey(name: "is_show_scan_sold_out") int isShowScanSoldOut,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "menu_show_sold_out") String menuShowSoldOut,
      @JsonKey(name: "order_method") OrderMethod orderMethod,
      @JsonKey(name: "remain_color") List<String> remainColor,
      @JsonKey(name: "server") Server server});

  $OrderMethodCopyWith<$Res> get orderMethod;
  $ServerCopyWith<$Res> get server;
}

/// @nodoc
class _$CashierCopyWithImpl<$Res, $Val extends Cashier>
    implements $CashierCopyWith<$Res> {
  _$CashierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoLockScreen = null,
    Object? autoOrderLimit = null,
    Object? carousel = null,
    Object? defaultLanguage = null,
    Object? isAutoLockScreen = null,
    Object? isAutoOrder = null,
    Object? isAutoSend = null,
    Object? isAutoVoice = null,
    Object? isOpenCashierPassword = null,
    Object? isRemainColor = null,
    Object? isShowAssistantSoldOut = null,
    Object? isShowScanSoldOut = null,
    Object? language = null,
    Object? languageList = null,
    Object? menuShowSoldOut = null,
    Object? orderMethod = null,
    Object? remainColor = null,
    Object? server = null,
  }) {
    return _then(_value.copyWith(
      autoLockScreen: null == autoLockScreen
          ? _value.autoLockScreen
          : autoLockScreen // ignore: cast_nullable_to_non_nullable
              as String,
      autoOrderLimit: null == autoOrderLimit
          ? _value.autoOrderLimit
          : autoOrderLimit // ignore: cast_nullable_to_non_nullable
              as String,
      carousel: null == carousel
          ? _value.carousel
          : carousel // ignore: cast_nullable_to_non_nullable
              as List<SettingCarouselItem>,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoLockScreen: null == isAutoLockScreen
          ? _value.isAutoLockScreen
          : isAutoLockScreen // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoOrder: null == isAutoOrder
          ? _value.isAutoOrder
          : isAutoOrder // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoSend: null == isAutoSend
          ? _value.isAutoSend
          : isAutoSend // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoVoice: null == isAutoVoice
          ? _value.isAutoVoice
          : isAutoVoice // ignore: cast_nullable_to_non_nullable
              as String,
      isOpenCashierPassword: null == isOpenCashierPassword
          ? _value.isOpenCashierPassword
          : isOpenCashierPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isRemainColor: null == isRemainColor
          ? _value.isRemainColor
          : isRemainColor // ignore: cast_nullable_to_non_nullable
              as String,
      isShowAssistantSoldOut: null == isShowAssistantSoldOut
          ? _value.isShowAssistantSoldOut
          : isShowAssistantSoldOut // ignore: cast_nullable_to_non_nullable
              as int,
      isShowScanSoldOut: null == isShowScanSoldOut
          ? _value.isShowScanSoldOut
          : isShowScanSoldOut // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      menuShowSoldOut: null == menuShowSoldOut
          ? _value.menuShowSoldOut
          : menuShowSoldOut // ignore: cast_nullable_to_non_nullable
              as String,
      orderMethod: null == orderMethod
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as OrderMethod,
      remainColor: null == remainColor
          ? _value.remainColor
          : remainColor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server,
    ) as $Val);
  }

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderMethodCopyWith<$Res> get orderMethod {
    return $OrderMethodCopyWith<$Res>(_value.orderMethod, (value) {
      return _then(_value.copyWith(orderMethod: value) as $Val);
    });
  }

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerCopyWith<$Res> get server {
    return $ServerCopyWith<$Res>(_value.server, (value) {
      return _then(_value.copyWith(server: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CashierImplCopyWith<$Res> implements $CashierCopyWith<$Res> {
  factory _$$CashierImplCopyWith(
          _$CashierImpl value, $Res Function(_$CashierImpl) then) =
      __$$CashierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "auto_lock_screen") String autoLockScreen,
      @JsonKey(name: "auto_order_limit") String autoOrderLimit,
      @JsonKey(name: "carousel") List<SettingCarouselItem> carousel,
      @JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen") String isAutoLockScreen,
      @JsonKey(name: "is_auto_order") String isAutoOrder,
      @JsonKey(name: "is_auto_send") String isAutoSend,
      @JsonKey(name: "is_auto_voice") String isAutoVoice,
      @JsonKey(name: "is_open_cashier_password") String isOpenCashierPassword,
      @JsonKey(name: "is_remain_color") String isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out") int isShowAssistantSoldOut,
      @JsonKey(name: "is_show_scan_sold_out") int isShowScanSoldOut,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "menu_show_sold_out") String menuShowSoldOut,
      @JsonKey(name: "order_method") OrderMethod orderMethod,
      @JsonKey(name: "remain_color") List<String> remainColor,
      @JsonKey(name: "server") Server server});

  @override
  $OrderMethodCopyWith<$Res> get orderMethod;
  @override
  $ServerCopyWith<$Res> get server;
}

/// @nodoc
class __$$CashierImplCopyWithImpl<$Res>
    extends _$CashierCopyWithImpl<$Res, _$CashierImpl>
    implements _$$CashierImplCopyWith<$Res> {
  __$$CashierImplCopyWithImpl(
      _$CashierImpl _value, $Res Function(_$CashierImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoLockScreen = null,
    Object? autoOrderLimit = null,
    Object? carousel = null,
    Object? defaultLanguage = null,
    Object? isAutoLockScreen = null,
    Object? isAutoOrder = null,
    Object? isAutoSend = null,
    Object? isAutoVoice = null,
    Object? isOpenCashierPassword = null,
    Object? isRemainColor = null,
    Object? isShowAssistantSoldOut = null,
    Object? isShowScanSoldOut = null,
    Object? language = null,
    Object? languageList = null,
    Object? menuShowSoldOut = null,
    Object? orderMethod = null,
    Object? remainColor = null,
    Object? server = null,
  }) {
    return _then(_$CashierImpl(
      autoLockScreen: null == autoLockScreen
          ? _value.autoLockScreen
          : autoLockScreen // ignore: cast_nullable_to_non_nullable
              as String,
      autoOrderLimit: null == autoOrderLimit
          ? _value.autoOrderLimit
          : autoOrderLimit // ignore: cast_nullable_to_non_nullable
              as String,
      carousel: null == carousel
          ? _value._carousel
          : carousel // ignore: cast_nullable_to_non_nullable
              as List<SettingCarouselItem>,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoLockScreen: null == isAutoLockScreen
          ? _value.isAutoLockScreen
          : isAutoLockScreen // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoOrder: null == isAutoOrder
          ? _value.isAutoOrder
          : isAutoOrder // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoSend: null == isAutoSend
          ? _value.isAutoSend
          : isAutoSend // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoVoice: null == isAutoVoice
          ? _value.isAutoVoice
          : isAutoVoice // ignore: cast_nullable_to_non_nullable
              as String,
      isOpenCashierPassword: null == isOpenCashierPassword
          ? _value.isOpenCashierPassword
          : isOpenCashierPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isRemainColor: null == isRemainColor
          ? _value.isRemainColor
          : isRemainColor // ignore: cast_nullable_to_non_nullable
              as String,
      isShowAssistantSoldOut: null == isShowAssistantSoldOut
          ? _value.isShowAssistantSoldOut
          : isShowAssistantSoldOut // ignore: cast_nullable_to_non_nullable
              as int,
      isShowScanSoldOut: null == isShowScanSoldOut
          ? _value.isShowScanSoldOut
          : isShowScanSoldOut // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      menuShowSoldOut: null == menuShowSoldOut
          ? _value.menuShowSoldOut
          : menuShowSoldOut // ignore: cast_nullable_to_non_nullable
              as String,
      orderMethod: null == orderMethod
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as OrderMethod,
      remainColor: null == remainColor
          ? _value._remainColor
          : remainColor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashierImpl implements _Cashier {
  const _$CashierImpl(
      {@JsonKey(name: "auto_lock_screen") required this.autoLockScreen,
      @JsonKey(name: "auto_order_limit") required this.autoOrderLimit,
      @JsonKey(name: "carousel")
      required final List<SettingCarouselItem> carousel,
      @JsonKey(name: "default_language") required this.defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen") required this.isAutoLockScreen,
      @JsonKey(name: "is_auto_order") required this.isAutoOrder,
      @JsonKey(name: "is_auto_send") required this.isAutoSend,
      @JsonKey(name: "is_auto_voice") required this.isAutoVoice,
      @JsonKey(name: "is_open_cashier_password")
      required this.isOpenCashierPassword,
      @JsonKey(name: "is_remain_color") required this.isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out")
      required this.isShowAssistantSoldOut,
      @JsonKey(name: "is_show_scan_sold_out") required this.isShowScanSoldOut,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "menu_show_sold_out") required this.menuShowSoldOut,
      @JsonKey(name: "order_method") required this.orderMethod,
      @JsonKey(name: "remain_color") required final List<String> remainColor,
      @JsonKey(name: "server") required this.server})
      : _carousel = carousel,
        _language = language,
        _languageList = languageList,
        _remainColor = remainColor;

  factory _$CashierImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashierImplFromJson(json);

  @override
  @JsonKey(name: "auto_lock_screen")
  final String autoLockScreen;
  @override
  @JsonKey(name: "auto_order_limit")
  final String autoOrderLimit;
  final List<SettingCarouselItem> _carousel;
  @override
  @JsonKey(name: "carousel")
  List<SettingCarouselItem> get carousel {
    if (_carousel is EqualUnmodifiableListView) return _carousel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carousel);
  }

  @override
  @JsonKey(name: "default_language")
  final String defaultLanguage;
  @override
  @JsonKey(name: "is_auto_lock_screen")
  final String isAutoLockScreen;
  @override
  @JsonKey(name: "is_auto_order")
  final String isAutoOrder;
  @override
  @JsonKey(name: "is_auto_send")
  final String isAutoSend;
  @override
  @JsonKey(name: "is_auto_voice")
  final String isAutoVoice;
  @override
  @JsonKey(name: "is_open_cashier_password")
  final String isOpenCashierPassword;
  @override
  @JsonKey(name: "is_remain_color")
  final String isRemainColor;
  @override
  @JsonKey(name: "is_show_assistant_sold_out")
  final int isShowAssistantSoldOut;
  @override
  @JsonKey(name: "is_show_scan_sold_out")
  final int isShowScanSoldOut;
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
  @JsonKey(name: "menu_show_sold_out")
  final String menuShowSoldOut;
  @override
  @JsonKey(name: "order_method")
  final OrderMethod orderMethod;
  final List<String> _remainColor;
  @override
  @JsonKey(name: "remain_color")
  List<String> get remainColor {
    if (_remainColor is EqualUnmodifiableListView) return _remainColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remainColor);
  }

  @override
  @JsonKey(name: "server")
  final Server server;

  @override
  String toString() {
    return 'Cashier(autoLockScreen: $autoLockScreen, autoOrderLimit: $autoOrderLimit, carousel: $carousel, defaultLanguage: $defaultLanguage, isAutoLockScreen: $isAutoLockScreen, isAutoOrder: $isAutoOrder, isAutoSend: $isAutoSend, isAutoVoice: $isAutoVoice, isOpenCashierPassword: $isOpenCashierPassword, isRemainColor: $isRemainColor, isShowAssistantSoldOut: $isShowAssistantSoldOut, isShowScanSoldOut: $isShowScanSoldOut, language: $language, languageList: $languageList, menuShowSoldOut: $menuShowSoldOut, orderMethod: $orderMethod, remainColor: $remainColor, server: $server)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashierImpl &&
            (identical(other.autoLockScreen, autoLockScreen) ||
                other.autoLockScreen == autoLockScreen) &&
            (identical(other.autoOrderLimit, autoOrderLimit) ||
                other.autoOrderLimit == autoOrderLimit) &&
            const DeepCollectionEquality().equals(other._carousel, _carousel) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.isAutoLockScreen, isAutoLockScreen) ||
                other.isAutoLockScreen == isAutoLockScreen) &&
            (identical(other.isAutoOrder, isAutoOrder) ||
                other.isAutoOrder == isAutoOrder) &&
            (identical(other.isAutoSend, isAutoSend) ||
                other.isAutoSend == isAutoSend) &&
            (identical(other.isAutoVoice, isAutoVoice) ||
                other.isAutoVoice == isAutoVoice) &&
            (identical(other.isOpenCashierPassword, isOpenCashierPassword) ||
                other.isOpenCashierPassword == isOpenCashierPassword) &&
            (identical(other.isRemainColor, isRemainColor) ||
                other.isRemainColor == isRemainColor) &&
            (identical(other.isShowAssistantSoldOut, isShowAssistantSoldOut) ||
                other.isShowAssistantSoldOut == isShowAssistantSoldOut) &&
            (identical(other.isShowScanSoldOut, isShowScanSoldOut) ||
                other.isShowScanSoldOut == isShowScanSoldOut) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            (identical(other.menuShowSoldOut, menuShowSoldOut) ||
                other.menuShowSoldOut == menuShowSoldOut) &&
            (identical(other.orderMethod, orderMethod) ||
                other.orderMethod == orderMethod) &&
            const DeepCollectionEquality()
                .equals(other._remainColor, _remainColor) &&
            (identical(other.server, server) || other.server == server));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      autoLockScreen,
      autoOrderLimit,
      const DeepCollectionEquality().hash(_carousel),
      defaultLanguage,
      isAutoLockScreen,
      isAutoOrder,
      isAutoSend,
      isAutoVoice,
      isOpenCashierPassword,
      isRemainColor,
      isShowAssistantSoldOut,
      isShowScanSoldOut,
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_languageList),
      menuShowSoldOut,
      orderMethod,
      const DeepCollectionEquality().hash(_remainColor),
      server);

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CashierImplCopyWith<_$CashierImpl> get copyWith =>
      __$$CashierImplCopyWithImpl<_$CashierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashierImplToJson(
      this,
    );
  }
}

abstract class _Cashier implements Cashier {
  const factory _Cashier(
      {@JsonKey(name: "auto_lock_screen") required final String autoLockScreen,
      @JsonKey(name: "auto_order_limit") required final String autoOrderLimit,
      @JsonKey(name: "carousel")
      required final List<SettingCarouselItem> carousel,
      @JsonKey(name: "default_language") required final String defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen")
      required final String isAutoLockScreen,
      @JsonKey(name: "is_auto_order") required final String isAutoOrder,
      @JsonKey(name: "is_auto_send") required final String isAutoSend,
      @JsonKey(name: "is_auto_voice") required final String isAutoVoice,
      @JsonKey(name: "is_open_cashier_password")
      required final String isOpenCashierPassword,
      @JsonKey(name: "is_remain_color") required final String isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out")
      required final int isShowAssistantSoldOut,
      @JsonKey(name: "is_show_scan_sold_out")
      required final int isShowScanSoldOut,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "menu_show_sold_out")
      required final String menuShowSoldOut,
      @JsonKey(name: "order_method") required final OrderMethod orderMethod,
      @JsonKey(name: "remain_color") required final List<String> remainColor,
      @JsonKey(name: "server") required final Server server}) = _$CashierImpl;

  factory _Cashier.fromJson(Map<String, dynamic> json) = _$CashierImpl.fromJson;

  @override
  @JsonKey(name: "auto_lock_screen")
  String get autoLockScreen;
  @override
  @JsonKey(name: "auto_order_limit")
  String get autoOrderLimit;
  @override
  @JsonKey(name: "carousel")
  List<SettingCarouselItem> get carousel;
  @override
  @JsonKey(name: "default_language")
  String get defaultLanguage;
  @override
  @JsonKey(name: "is_auto_lock_screen")
  String get isAutoLockScreen;
  @override
  @JsonKey(name: "is_auto_order")
  String get isAutoOrder;
  @override
  @JsonKey(name: "is_auto_send")
  String get isAutoSend;
  @override
  @JsonKey(name: "is_auto_voice")
  String get isAutoVoice;
  @override
  @JsonKey(name: "is_open_cashier_password")
  String get isOpenCashierPassword;
  @override
  @JsonKey(name: "is_remain_color")
  String get isRemainColor;
  @override
  @JsonKey(name: "is_show_assistant_sold_out")
  int get isShowAssistantSoldOut;
  @override
  @JsonKey(name: "is_show_scan_sold_out")
  int get isShowScanSoldOut;
  @override
  @JsonKey(name: "language")
  List<String> get language;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList;
  @override
  @JsonKey(name: "menu_show_sold_out")
  String get menuShowSoldOut;
  @override
  @JsonKey(name: "order_method")
  OrderMethod get orderMethod;
  @override
  @JsonKey(name: "remain_color")
  List<String> get remainColor;
  @override
  @JsonKey(name: "server")
  Server get server;

  /// Create a copy of Cashier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CashierImplCopyWith<_$CashierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingCarouselItem _$SettingCarouselItemFromJson(Map<String, dynamic> json) {
  return _SettingCarouselItem.fromJson(json);
}

/// @nodoc
mixin _$SettingCarouselItem {
  @JsonKey(name: "file_path")
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: "real_name")
  String get realName => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  String get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  /// Serializes this SettingCarouselItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingCarouselItemCopyWith<SettingCarouselItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCarouselItemCopyWith<$Res> {
  factory $SettingCarouselItemCopyWith(
          SettingCarouselItem value, $Res Function(SettingCarouselItem) then) =
      _$SettingCarouselItemCopyWithImpl<$Res, SettingCarouselItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "file_path") String filePath,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "sort") String sort,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class _$SettingCarouselItemCopyWithImpl<$Res, $Val extends SettingCarouselItem>
    implements $SettingCarouselItemCopyWith<$Res> {
  _$SettingCarouselItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? realName = null,
    Object? sort = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingCarouselItemImplCopyWith<$Res>
    implements $SettingCarouselItemCopyWith<$Res> {
  factory _$$SettingCarouselItemImplCopyWith(_$SettingCarouselItemImpl value,
          $Res Function(_$SettingCarouselItemImpl) then) =
      __$$SettingCarouselItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "file_path") String filePath,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "sort") String sort,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class __$$SettingCarouselItemImplCopyWithImpl<$Res>
    extends _$SettingCarouselItemCopyWithImpl<$Res, _$SettingCarouselItemImpl>
    implements _$$SettingCarouselItemImplCopyWith<$Res> {
  __$$SettingCarouselItemImplCopyWithImpl(_$SettingCarouselItemImpl _value,
      $Res Function(_$SettingCarouselItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? realName = null,
    Object? sort = null,
    Object? type = null,
  }) {
    return _then(_$SettingCarouselItemImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingCarouselItemImpl implements _SettingCarouselItem {
  const _$SettingCarouselItemImpl(
      {@JsonKey(name: "file_path") required this.filePath,
      @JsonKey(name: "real_name") required this.realName,
      @JsonKey(name: "sort") required this.sort,
      @JsonKey(name: "type") required this.type});

  factory _$SettingCarouselItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingCarouselItemImplFromJson(json);

  @override
  @JsonKey(name: "file_path")
  final String filePath;
  @override
  @JsonKey(name: "real_name")
  final String realName;
  @override
  @JsonKey(name: "sort")
  final String sort;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'SettingCarouselItem(filePath: $filePath, realName: $realName, sort: $sort, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingCarouselItemImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, realName, sort, type);

  /// Create a copy of SettingCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingCarouselItemImplCopyWith<_$SettingCarouselItemImpl> get copyWith =>
      __$$SettingCarouselItemImplCopyWithImpl<_$SettingCarouselItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingCarouselItemImplToJson(
      this,
    );
  }
}

abstract class _SettingCarouselItem implements SettingCarouselItem {
  const factory _SettingCarouselItem(
          {@JsonKey(name: "file_path") required final String filePath,
          @JsonKey(name: "real_name") required final String realName,
          @JsonKey(name: "sort") required final String sort,
          @JsonKey(name: "type") required final String type}) =
      _$SettingCarouselItemImpl;

  factory _SettingCarouselItem.fromJson(Map<String, dynamic> json) =
      _$SettingCarouselItemImpl.fromJson;

  @override
  @JsonKey(name: "file_path")
  String get filePath;
  @override
  @JsonKey(name: "real_name")
  String get realName;
  @override
  @JsonKey(name: "sort")
  String get sort;
  @override
  @JsonKey(name: "type")
  String get type;

  /// Create a copy of SettingCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingCarouselItemImplCopyWith<_$SettingCarouselItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderMethod _$OrderMethodFromJson(Map<String, dynamic> json) {
  return _OrderMethod.fromJson(json);
}

/// @nodoc
mixin _$OrderMethod {
  @JsonKey(name: "is_cashier_order")
  SafetyNumber get isCashierOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "is_table_order")
  SafetyNumber get isTableOrder => throw _privateConstructorUsedError;

  /// Serializes this OrderMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderMethodCopyWith<OrderMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMethodCopyWith<$Res> {
  factory $OrderMethodCopyWith(
          OrderMethod value, $Res Function(OrderMethod) then) =
      _$OrderMethodCopyWithImpl<$Res, OrderMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_cashier_order") SafetyNumber isCashierOrder,
      @JsonKey(name: "is_table_order") SafetyNumber isTableOrder});

  $SafetyNumberCopyWith<$Res> get isCashierOrder;
  $SafetyNumberCopyWith<$Res> get isTableOrder;
}

/// @nodoc
class _$OrderMethodCopyWithImpl<$Res, $Val extends OrderMethod>
    implements $OrderMethodCopyWith<$Res> {
  _$OrderMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCashierOrder = null,
    Object? isTableOrder = null,
  }) {
    return _then(_value.copyWith(
      isCashierOrder: null == isCashierOrder
          ? _value.isCashierOrder
          : isCashierOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isTableOrder: null == isTableOrder
          ? _value.isTableOrder
          : isTableOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isCashierOrder {
    return $SafetyNumberCopyWith<$Res>(_value.isCashierOrder, (value) {
      return _then(_value.copyWith(isCashierOrder: value) as $Val);
    });
  }

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isTableOrder {
    return $SafetyNumberCopyWith<$Res>(_value.isTableOrder, (value) {
      return _then(_value.copyWith(isTableOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderMethodImplCopyWith<$Res>
    implements $OrderMethodCopyWith<$Res> {
  factory _$$OrderMethodImplCopyWith(
          _$OrderMethodImpl value, $Res Function(_$OrderMethodImpl) then) =
      __$$OrderMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_cashier_order") SafetyNumber isCashierOrder,
      @JsonKey(name: "is_table_order") SafetyNumber isTableOrder});

  @override
  $SafetyNumberCopyWith<$Res> get isCashierOrder;
  @override
  $SafetyNumberCopyWith<$Res> get isTableOrder;
}

/// @nodoc
class __$$OrderMethodImplCopyWithImpl<$Res>
    extends _$OrderMethodCopyWithImpl<$Res, _$OrderMethodImpl>
    implements _$$OrderMethodImplCopyWith<$Res> {
  __$$OrderMethodImplCopyWithImpl(
      _$OrderMethodImpl _value, $Res Function(_$OrderMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCashierOrder = null,
    Object? isTableOrder = null,
  }) {
    return _then(_$OrderMethodImpl(
      isCashierOrder: null == isCashierOrder
          ? _value.isCashierOrder
          : isCashierOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isTableOrder: null == isTableOrder
          ? _value.isTableOrder
          : isTableOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderMethodImpl implements _OrderMethod {
  const _$OrderMethodImpl(
      {@JsonKey(name: "is_cashier_order") required this.isCashierOrder,
      @JsonKey(name: "is_table_order") required this.isTableOrder});

  factory _$OrderMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderMethodImplFromJson(json);

  @override
  @JsonKey(name: "is_cashier_order")
  final SafetyNumber isCashierOrder;
  @override
  @JsonKey(name: "is_table_order")
  final SafetyNumber isTableOrder;

  @override
  String toString() {
    return 'OrderMethod(isCashierOrder: $isCashierOrder, isTableOrder: $isTableOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderMethodImpl &&
            (identical(other.isCashierOrder, isCashierOrder) ||
                other.isCashierOrder == isCashierOrder) &&
            (identical(other.isTableOrder, isTableOrder) ||
                other.isTableOrder == isTableOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isCashierOrder, isTableOrder);

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderMethodImplCopyWith<_$OrderMethodImpl> get copyWith =>
      __$$OrderMethodImplCopyWithImpl<_$OrderMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderMethodImplToJson(
      this,
    );
  }
}

abstract class _OrderMethod implements OrderMethod {
  const factory _OrderMethod(
      {@JsonKey(name: "is_cashier_order")
      required final SafetyNumber isCashierOrder,
      @JsonKey(name: "is_table_order")
      required final SafetyNumber isTableOrder}) = _$OrderMethodImpl;

  factory _OrderMethod.fromJson(Map<String, dynamic> json) =
      _$OrderMethodImpl.fromJson;

  @override
  @JsonKey(name: "is_cashier_order")
  SafetyNumber get isCashierOrder;
  @override
  @JsonKey(name: "is_table_order")
  SafetyNumber get isTableOrder;

  /// Create a copy of OrderMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderMethodImplCopyWith<_$OrderMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Server _$ServerFromJson(Map<String, dynamic> json) {
  return _Server.fromJson(json);
}

/// @nodoc
mixin _$Server {
  @JsonKey(name: "ip")
  String get ip => throw _privateConstructorUsedError;
  @JsonKey(name: "port")
  String get port => throw _privateConstructorUsedError;

  /// Serializes this Server to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerCopyWith<Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCopyWith<$Res> {
  factory $ServerCopyWith(Server value, $Res Function(Server) then) =
      _$ServerCopyWithImpl<$Res, Server>;
  @useResult
  $Res call(
      {@JsonKey(name: "ip") String ip, @JsonKey(name: "port") String port});
}

/// @nodoc
class _$ServerCopyWithImpl<$Res, $Val extends Server>
    implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_value.copyWith(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> implements $ServerCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ip") String ip, @JsonKey(name: "port") String port});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$ServerCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_$ServerImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerImpl implements _Server {
  const _$ServerImpl(
      {@JsonKey(name: "ip") required this.ip,
      @JsonKey(name: "port") required this.port});

  factory _$ServerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerImplFromJson(json);

  @override
  @JsonKey(name: "ip")
  final String ip;
  @override
  @JsonKey(name: "port")
  final String port;

  @override
  String toString() {
    return 'Server(ip: $ip, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ip, port);

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerImplToJson(
      this,
    );
  }
}

abstract class _Server implements Server {
  const factory _Server(
      {@JsonKey(name: "ip") required final String ip,
      @JsonKey(name: "port") required final String port}) = _$ServerImpl;

  factory _Server.fromJson(Map<String, dynamic> json) = _$ServerImpl.fromJson;

  @override
  @JsonKey(name: "ip")
  String get ip;
  @override
  @JsonKey(name: "port")
  String get port;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
