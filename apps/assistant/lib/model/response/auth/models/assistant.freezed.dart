// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Assistant _$AssistantFromJson(Map<String, dynamic> json) {
  return _Assistant.fromJson(json);
}

/// @nodoc
mixin _$Assistant {
  @JsonKey(name: "auto_lock_screen")
  SafetyNumber get autoLockScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "default_mode")
  String get defaultMode => throw _privateConstructorUsedError;
  @JsonKey(name: "default_language")
  String get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_lock_screen")
  SafetyNumber get isAutoLockScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_send")
  SafetyNumber get isAutoSend => throw _privateConstructorUsedError;
  @JsonKey(name: "is_remain_color")
  SafetyNumber get isRemainColor => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show_assistant_sold_out")
  SafetyNumber get isShowAssistantSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  List<String> get language => throw _privateConstructorUsedError;
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_color")
  List<String> get remainColor => throw _privateConstructorUsedError;
  @JsonKey(name: "server")
  Server get server => throw _privateConstructorUsedError;
  @JsonKey(name: "is_check_order")
  SafetyNumber? get isCheckOrder => throw _privateConstructorUsedError;

  /// Serializes this Assistant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistantCopyWith<Assistant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantCopyWith<$Res> {
  factory $AssistantCopyWith(Assistant value, $Res Function(Assistant) then) =
      _$AssistantCopyWithImpl<$Res, Assistant>;
  @useResult
  $Res call(
      {@JsonKey(name: "auto_lock_screen") SafetyNumber autoLockScreen,
      @JsonKey(name: "default_mode") String defaultMode,
      @JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen") SafetyNumber isAutoLockScreen,
      @JsonKey(name: "is_auto_send") SafetyNumber isAutoSend,
      @JsonKey(name: "is_remain_color") SafetyNumber isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out")
      SafetyNumber isShowAssistantSoldOut,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "remain_color") List<String> remainColor,
      @JsonKey(name: "server") Server server,
      @JsonKey(name: "is_check_order") SafetyNumber? isCheckOrder});

  $SafetyNumberCopyWith<$Res> get autoLockScreen;
  $SafetyNumberCopyWith<$Res> get isAutoLockScreen;
  $SafetyNumberCopyWith<$Res> get isAutoSend;
  $SafetyNumberCopyWith<$Res> get isRemainColor;
  $SafetyNumberCopyWith<$Res> get isShowAssistantSoldOut;
  $ServerCopyWith<$Res> get server;
  $SafetyNumberCopyWith<$Res>? get isCheckOrder;
}

/// @nodoc
class _$AssistantCopyWithImpl<$Res, $Val extends Assistant>
    implements $AssistantCopyWith<$Res> {
  _$AssistantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoLockScreen = null,
    Object? defaultMode = null,
    Object? defaultLanguage = null,
    Object? isAutoLockScreen = null,
    Object? isAutoSend = null,
    Object? isRemainColor = null,
    Object? isShowAssistantSoldOut = null,
    Object? language = null,
    Object? languageList = null,
    Object? remainColor = null,
    Object? server = null,
    Object? isCheckOrder = freezed,
  }) {
    return _then(_value.copyWith(
      autoLockScreen: null == autoLockScreen
          ? _value.autoLockScreen
          : autoLockScreen // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      defaultMode: null == defaultMode
          ? _value.defaultMode
          : defaultMode // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoLockScreen: null == isAutoLockScreen
          ? _value.isAutoLockScreen
          : isAutoLockScreen // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isAutoSend: null == isAutoSend
          ? _value.isAutoSend
          : isAutoSend // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isRemainColor: null == isRemainColor
          ? _value.isRemainColor
          : isRemainColor // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isShowAssistantSoldOut: null == isShowAssistantSoldOut
          ? _value.isShowAssistantSoldOut
          : isShowAssistantSoldOut // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      remainColor: null == remainColor
          ? _value.remainColor
          : remainColor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server,
      isCheckOrder: freezed == isCheckOrder
          ? _value.isCheckOrder
          : isCheckOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
    ) as $Val);
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get autoLockScreen {
    return $SafetyNumberCopyWith<$Res>(_value.autoLockScreen, (value) {
      return _then(_value.copyWith(autoLockScreen: value) as $Val);
    });
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isAutoLockScreen {
    return $SafetyNumberCopyWith<$Res>(_value.isAutoLockScreen, (value) {
      return _then(_value.copyWith(isAutoLockScreen: value) as $Val);
    });
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isAutoSend {
    return $SafetyNumberCopyWith<$Res>(_value.isAutoSend, (value) {
      return _then(_value.copyWith(isAutoSend: value) as $Val);
    });
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isRemainColor {
    return $SafetyNumberCopyWith<$Res>(_value.isRemainColor, (value) {
      return _then(_value.copyWith(isRemainColor: value) as $Val);
    });
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isShowAssistantSoldOut {
    return $SafetyNumberCopyWith<$Res>(_value.isShowAssistantSoldOut, (value) {
      return _then(_value.copyWith(isShowAssistantSoldOut: value) as $Val);
    });
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerCopyWith<$Res> get server {
    return $ServerCopyWith<$Res>(_value.server, (value) {
      return _then(_value.copyWith(server: value) as $Val);
    });
  }

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res>? get isCheckOrder {
    if (_value.isCheckOrder == null) {
      return null;
    }

    return $SafetyNumberCopyWith<$Res>(_value.isCheckOrder!, (value) {
      return _then(_value.copyWith(isCheckOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssistantImplCopyWith<$Res>
    implements $AssistantCopyWith<$Res> {
  factory _$$AssistantImplCopyWith(
          _$AssistantImpl value, $Res Function(_$AssistantImpl) then) =
      __$$AssistantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "auto_lock_screen") SafetyNumber autoLockScreen,
      @JsonKey(name: "default_mode") String defaultMode,
      @JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen") SafetyNumber isAutoLockScreen,
      @JsonKey(name: "is_auto_send") SafetyNumber isAutoSend,
      @JsonKey(name: "is_remain_color") SafetyNumber isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out")
      SafetyNumber isShowAssistantSoldOut,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "remain_color") List<String> remainColor,
      @JsonKey(name: "server") Server server,
      @JsonKey(name: "is_check_order") SafetyNumber? isCheckOrder});

  @override
  $SafetyNumberCopyWith<$Res> get autoLockScreen;
  @override
  $SafetyNumberCopyWith<$Res> get isAutoLockScreen;
  @override
  $SafetyNumberCopyWith<$Res> get isAutoSend;
  @override
  $SafetyNumberCopyWith<$Res> get isRemainColor;
  @override
  $SafetyNumberCopyWith<$Res> get isShowAssistantSoldOut;
  @override
  $ServerCopyWith<$Res> get server;
  @override
  $SafetyNumberCopyWith<$Res>? get isCheckOrder;
}

/// @nodoc
class __$$AssistantImplCopyWithImpl<$Res>
    extends _$AssistantCopyWithImpl<$Res, _$AssistantImpl>
    implements _$$AssistantImplCopyWith<$Res> {
  __$$AssistantImplCopyWithImpl(
      _$AssistantImpl _value, $Res Function(_$AssistantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoLockScreen = null,
    Object? defaultMode = null,
    Object? defaultLanguage = null,
    Object? isAutoLockScreen = null,
    Object? isAutoSend = null,
    Object? isRemainColor = null,
    Object? isShowAssistantSoldOut = null,
    Object? language = null,
    Object? languageList = null,
    Object? remainColor = null,
    Object? server = null,
    Object? isCheckOrder = freezed,
  }) {
    return _then(_$AssistantImpl(
      autoLockScreen: null == autoLockScreen
          ? _value.autoLockScreen
          : autoLockScreen // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      defaultMode: null == defaultMode
          ? _value.defaultMode
          : defaultMode // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoLockScreen: null == isAutoLockScreen
          ? _value.isAutoLockScreen
          : isAutoLockScreen // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isAutoSend: null == isAutoSend
          ? _value.isAutoSend
          : isAutoSend // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isRemainColor: null == isRemainColor
          ? _value.isRemainColor
          : isRemainColor // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isShowAssistantSoldOut: null == isShowAssistantSoldOut
          ? _value.isShowAssistantSoldOut
          : isShowAssistantSoldOut // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      language: null == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      remainColor: null == remainColor
          ? _value._remainColor
          : remainColor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server,
      isCheckOrder: freezed == isCheckOrder
          ? _value.isCheckOrder
          : isCheckOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssistantImpl implements _Assistant {
  const _$AssistantImpl(
      {@JsonKey(name: "auto_lock_screen") required this.autoLockScreen,
      @JsonKey(name: "default_mode") required this.defaultMode,
      @JsonKey(name: "default_language") required this.defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen") required this.isAutoLockScreen,
      @JsonKey(name: "is_auto_send") required this.isAutoSend,
      @JsonKey(name: "is_remain_color") required this.isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out")
      required this.isShowAssistantSoldOut,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "remain_color") required final List<String> remainColor,
      @JsonKey(name: "server") required this.server,
      @JsonKey(name: "is_check_order") this.isCheckOrder})
      : _language = language,
        _languageList = languageList,
        _remainColor = remainColor;

  factory _$AssistantImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssistantImplFromJson(json);

  @override
  @JsonKey(name: "auto_lock_screen")
  final SafetyNumber autoLockScreen;
  @override
  @JsonKey(name: "default_mode")
  final String defaultMode;
  @override
  @JsonKey(name: "default_language")
  final String defaultLanguage;
  @override
  @JsonKey(name: "is_auto_lock_screen")
  final SafetyNumber isAutoLockScreen;
  @override
  @JsonKey(name: "is_auto_send")
  final SafetyNumber isAutoSend;
  @override
  @JsonKey(name: "is_remain_color")
  final SafetyNumber isRemainColor;
  @override
  @JsonKey(name: "is_show_assistant_sold_out")
  final SafetyNumber isShowAssistantSoldOut;
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
  @JsonKey(name: "is_check_order")
  final SafetyNumber? isCheckOrder;

  @override
  String toString() {
    return 'Assistant(autoLockScreen: $autoLockScreen, defaultMode: $defaultMode, defaultLanguage: $defaultLanguage, isAutoLockScreen: $isAutoLockScreen, isAutoSend: $isAutoSend, isRemainColor: $isRemainColor, isShowAssistantSoldOut: $isShowAssistantSoldOut, language: $language, languageList: $languageList, remainColor: $remainColor, server: $server, isCheckOrder: $isCheckOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistantImpl &&
            (identical(other.autoLockScreen, autoLockScreen) ||
                other.autoLockScreen == autoLockScreen) &&
            (identical(other.defaultMode, defaultMode) ||
                other.defaultMode == defaultMode) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.isAutoLockScreen, isAutoLockScreen) ||
                other.isAutoLockScreen == isAutoLockScreen) &&
            (identical(other.isAutoSend, isAutoSend) ||
                other.isAutoSend == isAutoSend) &&
            (identical(other.isRemainColor, isRemainColor) ||
                other.isRemainColor == isRemainColor) &&
            (identical(other.isShowAssistantSoldOut, isShowAssistantSoldOut) ||
                other.isShowAssistantSoldOut == isShowAssistantSoldOut) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            const DeepCollectionEquality()
                .equals(other._remainColor, _remainColor) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.isCheckOrder, isCheckOrder) ||
                other.isCheckOrder == isCheckOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      autoLockScreen,
      defaultMode,
      defaultLanguage,
      isAutoLockScreen,
      isAutoSend,
      isRemainColor,
      isShowAssistantSoldOut,
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_languageList),
      const DeepCollectionEquality().hash(_remainColor),
      server,
      isCheckOrder);

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistantImplCopyWith<_$AssistantImpl> get copyWith =>
      __$$AssistantImplCopyWithImpl<_$AssistantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssistantImplToJson(
      this,
    );
  }
}

abstract class _Assistant implements Assistant {
  const factory _Assistant(
      {@JsonKey(name: "auto_lock_screen")
      required final SafetyNumber autoLockScreen,
      @JsonKey(name: "default_mode") required final String defaultMode,
      @JsonKey(name: "default_language") required final String defaultLanguage,
      @JsonKey(name: "is_auto_lock_screen")
      required final SafetyNumber isAutoLockScreen,
      @JsonKey(name: "is_auto_send") required final SafetyNumber isAutoSend,
      @JsonKey(name: "is_remain_color")
      required final SafetyNumber isRemainColor,
      @JsonKey(name: "is_show_assistant_sold_out")
      required final SafetyNumber isShowAssistantSoldOut,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "remain_color") required final List<String> remainColor,
      @JsonKey(name: "server") required final Server server,
      @JsonKey(name: "is_check_order")
      final SafetyNumber? isCheckOrder}) = _$AssistantImpl;

  factory _Assistant.fromJson(Map<String, dynamic> json) =
      _$AssistantImpl.fromJson;

  @override
  @JsonKey(name: "auto_lock_screen")
  SafetyNumber get autoLockScreen;
  @override
  @JsonKey(name: "default_mode")
  String get defaultMode;
  @override
  @JsonKey(name: "default_language")
  String get defaultLanguage;
  @override
  @JsonKey(name: "is_auto_lock_screen")
  SafetyNumber get isAutoLockScreen;
  @override
  @JsonKey(name: "is_auto_send")
  SafetyNumber get isAutoSend;
  @override
  @JsonKey(name: "is_remain_color")
  SafetyNumber get isRemainColor;
  @override
  @JsonKey(name: "is_show_assistant_sold_out")
  SafetyNumber get isShowAssistantSoldOut;
  @override
  @JsonKey(name: "language")
  List<String> get language;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList;
  @override
  @JsonKey(name: "remain_color")
  List<String> get remainColor;
  @override
  @JsonKey(name: "server")
  Server get server;
  @override
  @JsonKey(name: "is_check_order")
  SafetyNumber? get isCheckOrder;

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistantImplCopyWith<_$AssistantImpl> get copyWith =>
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
