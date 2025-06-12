// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kitchen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Kitchen _$KitchenFromJson(Map<String, dynamic> json) {
  return _Kitchen.fromJson(json);
}

/// @nodoc
mixin _$Kitchen {
  @JsonKey(name: "default_language")
  String get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_open")
  SafetyNumber get isOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "is_call_service")
  SafetyNumber get isCallService => throw _privateConstructorUsedError;
  @JsonKey(name: "is_come_dish")
  SafetyNumber get isComeDish => throw _privateConstructorUsedError;
  @JsonKey(name: "is_wait_color")
  SafetyNumber get isWaitColor => throw _privateConstructorUsedError;
  @JsonKey(name: "wait_color")
  List<String> get waitColor => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  List<String> get language => throw _privateConstructorUsedError;
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList => throw _privateConstructorUsedError;
  @JsonKey(name: "server")
  Server get server => throw _privateConstructorUsedError;

  /// Serializes this Kitchen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KitchenCopyWith<Kitchen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KitchenCopyWith<$Res> {
  factory $KitchenCopyWith(Kitchen value, $Res Function(Kitchen) then) =
      _$KitchenCopyWithImpl<$Res, Kitchen>;
  @useResult
  $Res call(
      {@JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_open") SafetyNumber isOpen,
      @JsonKey(name: "is_call_service") SafetyNumber isCallService,
      @JsonKey(name: "is_come_dish") SafetyNumber isComeDish,
      @JsonKey(name: "is_wait_color") SafetyNumber isWaitColor,
      @JsonKey(name: "wait_color") List<String> waitColor,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "server") Server server});

  $SafetyNumberCopyWith<$Res> get isOpen;
  $SafetyNumberCopyWith<$Res> get isCallService;
  $SafetyNumberCopyWith<$Res> get isComeDish;
  $SafetyNumberCopyWith<$Res> get isWaitColor;
  $ServerCopyWith<$Res> get server;
}

/// @nodoc
class _$KitchenCopyWithImpl<$Res, $Val extends Kitchen>
    implements $KitchenCopyWith<$Res> {
  _$KitchenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguage = null,
    Object? isOpen = null,
    Object? isCallService = null,
    Object? isComeDish = null,
    Object? isWaitColor = null,
    Object? waitColor = null,
    Object? language = null,
    Object? languageList = null,
    Object? server = null,
  }) {
    return _then(_value.copyWith(
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isCallService: null == isCallService
          ? _value.isCallService
          : isCallService // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isComeDish: null == isComeDish
          ? _value.isComeDish
          : isComeDish // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isWaitColor: null == isWaitColor
          ? _value.isWaitColor
          : isWaitColor // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      waitColor: null == waitColor
          ? _value.waitColor
          : waitColor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server,
    ) as $Val);
  }

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isOpen {
    return $SafetyNumberCopyWith<$Res>(_value.isOpen, (value) {
      return _then(_value.copyWith(isOpen: value) as $Val);
    });
  }

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isCallService {
    return $SafetyNumberCopyWith<$Res>(_value.isCallService, (value) {
      return _then(_value.copyWith(isCallService: value) as $Val);
    });
  }

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isComeDish {
    return $SafetyNumberCopyWith<$Res>(_value.isComeDish, (value) {
      return _then(_value.copyWith(isComeDish: value) as $Val);
    });
  }

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get isWaitColor {
    return $SafetyNumberCopyWith<$Res>(_value.isWaitColor, (value) {
      return _then(_value.copyWith(isWaitColor: value) as $Val);
    });
  }

  /// Create a copy of Kitchen
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
abstract class _$$KitchenImplCopyWith<$Res> implements $KitchenCopyWith<$Res> {
  factory _$$KitchenImplCopyWith(
          _$KitchenImpl value, $Res Function(_$KitchenImpl) then) =
      __$$KitchenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "is_open") SafetyNumber isOpen,
      @JsonKey(name: "is_call_service") SafetyNumber isCallService,
      @JsonKey(name: "is_come_dish") SafetyNumber isComeDish,
      @JsonKey(name: "is_wait_color") SafetyNumber isWaitColor,
      @JsonKey(name: "wait_color") List<String> waitColor,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "server") Server server});

  @override
  $SafetyNumberCopyWith<$Res> get isOpen;
  @override
  $SafetyNumberCopyWith<$Res> get isCallService;
  @override
  $SafetyNumberCopyWith<$Res> get isComeDish;
  @override
  $SafetyNumberCopyWith<$Res> get isWaitColor;
  @override
  $ServerCopyWith<$Res> get server;
}

/// @nodoc
class __$$KitchenImplCopyWithImpl<$Res>
    extends _$KitchenCopyWithImpl<$Res, _$KitchenImpl>
    implements _$$KitchenImplCopyWith<$Res> {
  __$$KitchenImplCopyWithImpl(
      _$KitchenImpl _value, $Res Function(_$KitchenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguage = null,
    Object? isOpen = null,
    Object? isCallService = null,
    Object? isComeDish = null,
    Object? isWaitColor = null,
    Object? waitColor = null,
    Object? language = null,
    Object? languageList = null,
    Object? server = null,
  }) {
    return _then(_$KitchenImpl(
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isCallService: null == isCallService
          ? _value.isCallService
          : isCallService // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isComeDish: null == isComeDish
          ? _value.isComeDish
          : isComeDish // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      isWaitColor: null == isWaitColor
          ? _value.isWaitColor
          : isWaitColor // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      waitColor: null == waitColor
          ? _value._waitColor
          : waitColor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: null == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KitchenImpl implements _Kitchen {
  const _$KitchenImpl(
      {@JsonKey(name: "default_language") required this.defaultLanguage,
      @JsonKey(name: "is_open") required this.isOpen,
      @JsonKey(name: "is_call_service") required this.isCallService,
      @JsonKey(name: "is_come_dish") required this.isComeDish,
      @JsonKey(name: "is_wait_color") required this.isWaitColor,
      @JsonKey(name: "wait_color") required final List<String> waitColor,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "server") required this.server})
      : _waitColor = waitColor,
        _language = language,
        _languageList = languageList;

  factory _$KitchenImpl.fromJson(Map<String, dynamic> json) =>
      _$$KitchenImplFromJson(json);

  @override
  @JsonKey(name: "default_language")
  final String defaultLanguage;
  @override
  @JsonKey(name: "is_open")
  final SafetyNumber isOpen;
  @override
  @JsonKey(name: "is_call_service")
  final SafetyNumber isCallService;
  @override
  @JsonKey(name: "is_come_dish")
  final SafetyNumber isComeDish;
  @override
  @JsonKey(name: "is_wait_color")
  final SafetyNumber isWaitColor;
  final List<String> _waitColor;
  @override
  @JsonKey(name: "wait_color")
  List<String> get waitColor {
    if (_waitColor is EqualUnmodifiableListView) return _waitColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitColor);
  }

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
  @JsonKey(name: "server")
  final Server server;

  @override
  String toString() {
    return 'Kitchen(defaultLanguage: $defaultLanguage, isOpen: $isOpen, isCallService: $isCallService, isComeDish: $isComeDish, isWaitColor: $isWaitColor, waitColor: $waitColor, language: $language, languageList: $languageList, server: $server)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KitchenImpl &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.isCallService, isCallService) ||
                other.isCallService == isCallService) &&
            (identical(other.isComeDish, isComeDish) ||
                other.isComeDish == isComeDish) &&
            (identical(other.isWaitColor, isWaitColor) ||
                other.isWaitColor == isWaitColor) &&
            const DeepCollectionEquality()
                .equals(other._waitColor, _waitColor) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            (identical(other.server, server) || other.server == server));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      defaultLanguage,
      isOpen,
      isCallService,
      isComeDish,
      isWaitColor,
      const DeepCollectionEquality().hash(_waitColor),
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_languageList),
      server);

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KitchenImplCopyWith<_$KitchenImpl> get copyWith =>
      __$$KitchenImplCopyWithImpl<_$KitchenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KitchenImplToJson(
      this,
    );
  }
}

abstract class _Kitchen implements Kitchen {
  const factory _Kitchen(
      {@JsonKey(name: "default_language") required final String defaultLanguage,
      @JsonKey(name: "is_open") required final SafetyNumber isOpen,
      @JsonKey(name: "is_call_service")
      required final SafetyNumber isCallService,
      @JsonKey(name: "is_come_dish") required final SafetyNumber isComeDish,
      @JsonKey(name: "is_wait_color") required final SafetyNumber isWaitColor,
      @JsonKey(name: "wait_color") required final List<String> waitColor,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "server") required final Server server}) = _$KitchenImpl;

  factory _Kitchen.fromJson(Map<String, dynamic> json) = _$KitchenImpl.fromJson;

  @override
  @JsonKey(name: "default_language")
  String get defaultLanguage;
  @override
  @JsonKey(name: "is_open")
  SafetyNumber get isOpen;
  @override
  @JsonKey(name: "is_call_service")
  SafetyNumber get isCallService;
  @override
  @JsonKey(name: "is_come_dish")
  SafetyNumber get isComeDish;
  @override
  @JsonKey(name: "is_wait_color")
  SafetyNumber get isWaitColor;
  @override
  @JsonKey(name: "wait_color")
  List<String> get waitColor;
  @override
  @JsonKey(name: "language")
  List<String> get language;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList;
  @override
  @JsonKey(name: "server")
  Server get server;

  /// Create a copy of Kitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KitchenImplCopyWith<_$KitchenImpl> get copyWith =>
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
