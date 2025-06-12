// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingResponse _$SettingResponseFromJson(Map<String, dynamic> json) {
  return _SettingResponse.fromJson(json);
}

/// @nodoc
mixin _$SettingResponse {
  @JsonKey(name: "accept_order")
  AcceptOrder? get acceptOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "system")
  SystemSetting? get system => throw _privateConstructorUsedError;

  /// Serializes this SettingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingResponseCopyWith<SettingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingResponseCopyWith<$Res> {
  factory $SettingResponseCopyWith(
          SettingResponse value, $Res Function(SettingResponse) then) =
      _$SettingResponseCopyWithImpl<$Res, SettingResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "accept_order") AcceptOrder? acceptOrder,
      @JsonKey(name: "system") SystemSetting? system});

  $AcceptOrderCopyWith<$Res>? get acceptOrder;
  $SystemSettingCopyWith<$Res>? get system;
}

/// @nodoc
class _$SettingResponseCopyWithImpl<$Res, $Val extends SettingResponse>
    implements $SettingResponseCopyWith<$Res> {
  _$SettingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptOrder = freezed,
    Object? system = freezed,
  }) {
    return _then(_value.copyWith(
      acceptOrder: freezed == acceptOrder
          ? _value.acceptOrder
          : acceptOrder // ignore: cast_nullable_to_non_nullable
              as AcceptOrder?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as SystemSetting?,
    ) as $Val);
  }

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcceptOrderCopyWith<$Res>? get acceptOrder {
    if (_value.acceptOrder == null) {
      return null;
    }

    return $AcceptOrderCopyWith<$Res>(_value.acceptOrder!, (value) {
      return _then(_value.copyWith(acceptOrder: value) as $Val);
    });
  }

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemSettingCopyWith<$Res>? get system {
    if (_value.system == null) {
      return null;
    }

    return $SystemSettingCopyWith<$Res>(_value.system!, (value) {
      return _then(_value.copyWith(system: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingResponseImplCopyWith<$Res>
    implements $SettingResponseCopyWith<$Res> {
  factory _$$SettingResponseImplCopyWith(_$SettingResponseImpl value,
          $Res Function(_$SettingResponseImpl) then) =
      __$$SettingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "accept_order") AcceptOrder? acceptOrder,
      @JsonKey(name: "system") SystemSetting? system});

  @override
  $AcceptOrderCopyWith<$Res>? get acceptOrder;
  @override
  $SystemSettingCopyWith<$Res>? get system;
}

/// @nodoc
class __$$SettingResponseImplCopyWithImpl<$Res>
    extends _$SettingResponseCopyWithImpl<$Res, _$SettingResponseImpl>
    implements _$$SettingResponseImplCopyWith<$Res> {
  __$$SettingResponseImplCopyWithImpl(
      _$SettingResponseImpl _value, $Res Function(_$SettingResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptOrder = freezed,
    Object? system = freezed,
  }) {
    return _then(_$SettingResponseImpl(
      acceptOrder: freezed == acceptOrder
          ? _value.acceptOrder
          : acceptOrder // ignore: cast_nullable_to_non_nullable
              as AcceptOrder?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as SystemSetting?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingResponseImpl implements _SettingResponse {
  const _$SettingResponseImpl(
      {@JsonKey(name: "accept_order") this.acceptOrder,
      @JsonKey(name: "system") this.system});

  factory _$SettingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingResponseImplFromJson(json);

  @override
  @JsonKey(name: "accept_order")
  final AcceptOrder? acceptOrder;
  @override
  @JsonKey(name: "system")
  final SystemSetting? system;

  @override
  String toString() {
    return 'SettingResponse(acceptOrder: $acceptOrder, system: $system)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingResponseImpl &&
            (identical(other.acceptOrder, acceptOrder) ||
                other.acceptOrder == acceptOrder) &&
            (identical(other.system, system) || other.system == system));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, acceptOrder, system);

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingResponseImplCopyWith<_$SettingResponseImpl> get copyWith =>
      __$$SettingResponseImplCopyWithImpl<_$SettingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingResponseImplToJson(
      this,
    );
  }
}

abstract class _SettingResponse implements SettingResponse {
  const factory _SettingResponse(
          {@JsonKey(name: "accept_order") final AcceptOrder? acceptOrder,
          @JsonKey(name: "system") final SystemSetting? system}) =
      _$SettingResponseImpl;

  factory _SettingResponse.fromJson(Map<String, dynamic> json) =
      _$SettingResponseImpl.fromJson;

  @override
  @JsonKey(name: "accept_order")
  AcceptOrder? get acceptOrder;
  @override
  @JsonKey(name: "system")
  SystemSetting? get system;

  /// Create a copy of SettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingResponseImplCopyWith<_$SettingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AcceptOrder _$AcceptOrderFromJson(Map<String, dynamic> json) {
  return _AcceptOrder.fromJson(json);
}

/// @nodoc
mixin _$AcceptOrder {
  @JsonKey(name: "is_auto_order")
  String? get isAutoOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "auto_order_limit")
  String? get autoOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_voice")
  String? get isAutoVoice => throw _privateConstructorUsedError;

  /// Serializes this AcceptOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptOrderCopyWith<AcceptOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptOrderCopyWith<$Res> {
  factory $AcceptOrderCopyWith(
          AcceptOrder value, $Res Function(AcceptOrder) then) =
      _$AcceptOrderCopyWithImpl<$Res, AcceptOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_auto_order") String? isAutoOrder,
      @JsonKey(name: "auto_order_limit") String? autoOrderLimit,
      @JsonKey(name: "is_auto_voice") String? isAutoVoice});
}

/// @nodoc
class _$AcceptOrderCopyWithImpl<$Res, $Val extends AcceptOrder>
    implements $AcceptOrderCopyWith<$Res> {
  _$AcceptOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoOrder = freezed,
    Object? autoOrderLimit = freezed,
    Object? isAutoVoice = freezed,
  }) {
    return _then(_value.copyWith(
      isAutoOrder: freezed == isAutoOrder
          ? _value.isAutoOrder
          : isAutoOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      autoOrderLimit: freezed == autoOrderLimit
          ? _value.autoOrderLimit
          : autoOrderLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      isAutoVoice: freezed == isAutoVoice
          ? _value.isAutoVoice
          : isAutoVoice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptOrderImplCopyWith<$Res>
    implements $AcceptOrderCopyWith<$Res> {
  factory _$$AcceptOrderImplCopyWith(
          _$AcceptOrderImpl value, $Res Function(_$AcceptOrderImpl) then) =
      __$$AcceptOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_auto_order") String? isAutoOrder,
      @JsonKey(name: "auto_order_limit") String? autoOrderLimit,
      @JsonKey(name: "is_auto_voice") String? isAutoVoice});
}

/// @nodoc
class __$$AcceptOrderImplCopyWithImpl<$Res>
    extends _$AcceptOrderCopyWithImpl<$Res, _$AcceptOrderImpl>
    implements _$$AcceptOrderImplCopyWith<$Res> {
  __$$AcceptOrderImplCopyWithImpl(
      _$AcceptOrderImpl _value, $Res Function(_$AcceptOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoOrder = freezed,
    Object? autoOrderLimit = freezed,
    Object? isAutoVoice = freezed,
  }) {
    return _then(_$AcceptOrderImpl(
      isAutoOrder: freezed == isAutoOrder
          ? _value.isAutoOrder
          : isAutoOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      autoOrderLimit: freezed == autoOrderLimit
          ? _value.autoOrderLimit
          : autoOrderLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      isAutoVoice: freezed == isAutoVoice
          ? _value.isAutoVoice
          : isAutoVoice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptOrderImpl implements _AcceptOrder {
  const _$AcceptOrderImpl(
      {@JsonKey(name: "is_auto_order") this.isAutoOrder,
      @JsonKey(name: "auto_order_limit") this.autoOrderLimit,
      @JsonKey(name: "is_auto_voice") this.isAutoVoice});

  factory _$AcceptOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptOrderImplFromJson(json);

  @override
  @JsonKey(name: "is_auto_order")
  final String? isAutoOrder;
  @override
  @JsonKey(name: "auto_order_limit")
  final String? autoOrderLimit;
  @override
  @JsonKey(name: "is_auto_voice")
  final String? isAutoVoice;

  @override
  String toString() {
    return 'AcceptOrder(isAutoOrder: $isAutoOrder, autoOrderLimit: $autoOrderLimit, isAutoVoice: $isAutoVoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderImpl &&
            (identical(other.isAutoOrder, isAutoOrder) ||
                other.isAutoOrder == isAutoOrder) &&
            (identical(other.autoOrderLimit, autoOrderLimit) ||
                other.autoOrderLimit == autoOrderLimit) &&
            (identical(other.isAutoVoice, isAutoVoice) ||
                other.isAutoVoice == isAutoVoice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isAutoOrder, autoOrderLimit, isAutoVoice);

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      __$$AcceptOrderImplCopyWithImpl<_$AcceptOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptOrderImplToJson(
      this,
    );
  }
}

abstract class _AcceptOrder implements AcceptOrder {
  const factory _AcceptOrder(
          {@JsonKey(name: "is_auto_order") final String? isAutoOrder,
          @JsonKey(name: "auto_order_limit") final String? autoOrderLimit,
          @JsonKey(name: "is_auto_voice") final String? isAutoVoice}) =
      _$AcceptOrderImpl;

  factory _AcceptOrder.fromJson(Map<String, dynamic> json) =
      _$AcceptOrderImpl.fromJson;

  @override
  @JsonKey(name: "is_auto_order")
  String? get isAutoOrder;
  @override
  @JsonKey(name: "auto_order_limit")
  String? get autoOrderLimit;
  @override
  @JsonKey(name: "is_auto_voice")
  String? get isAutoVoice;

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SystemSetting _$SystemSettingFromJson(Map<String, dynamic> json) {
  return _SystemSetting.fromJson(json);
}

/// @nodoc
mixin _$SystemSetting {
  @JsonKey(name: "is_show_scan_sold_out")
  int? get isShowScanSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show_assistant_sold_out")
  int? get isShowAssistantSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "menu_show_sold_out")
  int? get menuShowSoldOut => throw _privateConstructorUsedError;
  @JsonKey(name: "dish_card_style")
  String? get dishCardStyle => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show_sold_out")
  int? get isShowSoldOut =>
      throw _privateConstructorUsedError; // @JsonKey(name: "default_language") String? defaultLanguage,
// @JsonKey(name: "second_language") String? secondLanguage,
// @JsonKey(name: "device_id") String? deviceId,
// @JsonKey(name: "device_remark") String? deviceRemark,
// @JsonKey(name: "client_version") String? clientVersion,
  @JsonKey(name: "server_version")
  String? get serverVersion => throw _privateConstructorUsedError;

  /// Serializes this SystemSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemSettingCopyWith<SystemSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemSettingCopyWith<$Res> {
  factory $SystemSettingCopyWith(
          SystemSetting value, $Res Function(SystemSetting) then) =
      _$SystemSettingCopyWithImpl<$Res, SystemSetting>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_show_scan_sold_out") int? isShowScanSoldOut,
      @JsonKey(name: "is_show_assistant_sold_out") int? isShowAssistantSoldOut,
      @JsonKey(name: "menu_show_sold_out") int? menuShowSoldOut,
      @JsonKey(name: "dish_card_style") String? dishCardStyle,
      @JsonKey(name: "is_show_sold_out") int? isShowSoldOut,
      @JsonKey(name: "server_version") String? serverVersion});
}

/// @nodoc
class _$SystemSettingCopyWithImpl<$Res, $Val extends SystemSetting>
    implements $SystemSettingCopyWith<$Res> {
  _$SystemSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowScanSoldOut = freezed,
    Object? isShowAssistantSoldOut = freezed,
    Object? menuShowSoldOut = freezed,
    Object? dishCardStyle = freezed,
    Object? isShowSoldOut = freezed,
    Object? serverVersion = freezed,
  }) {
    return _then(_value.copyWith(
      isShowScanSoldOut: freezed == isShowScanSoldOut
          ? _value.isShowScanSoldOut
          : isShowScanSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowAssistantSoldOut: freezed == isShowAssistantSoldOut
          ? _value.isShowAssistantSoldOut
          : isShowAssistantSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      menuShowSoldOut: freezed == menuShowSoldOut
          ? _value.menuShowSoldOut
          : menuShowSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      dishCardStyle: freezed == dishCardStyle
          ? _value.dishCardStyle
          : dishCardStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      isShowSoldOut: freezed == isShowSoldOut
          ? _value.isShowSoldOut
          : isShowSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      serverVersion: freezed == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemSettingImplCopyWith<$Res>
    implements $SystemSettingCopyWith<$Res> {
  factory _$$SystemSettingImplCopyWith(
          _$SystemSettingImpl value, $Res Function(_$SystemSettingImpl) then) =
      __$$SystemSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_show_scan_sold_out") int? isShowScanSoldOut,
      @JsonKey(name: "is_show_assistant_sold_out") int? isShowAssistantSoldOut,
      @JsonKey(name: "menu_show_sold_out") int? menuShowSoldOut,
      @JsonKey(name: "dish_card_style") String? dishCardStyle,
      @JsonKey(name: "is_show_sold_out") int? isShowSoldOut,
      @JsonKey(name: "server_version") String? serverVersion});
}

/// @nodoc
class __$$SystemSettingImplCopyWithImpl<$Res>
    extends _$SystemSettingCopyWithImpl<$Res, _$SystemSettingImpl>
    implements _$$SystemSettingImplCopyWith<$Res> {
  __$$SystemSettingImplCopyWithImpl(
      _$SystemSettingImpl _value, $Res Function(_$SystemSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowScanSoldOut = freezed,
    Object? isShowAssistantSoldOut = freezed,
    Object? menuShowSoldOut = freezed,
    Object? dishCardStyle = freezed,
    Object? isShowSoldOut = freezed,
    Object? serverVersion = freezed,
  }) {
    return _then(_$SystemSettingImpl(
      isShowScanSoldOut: freezed == isShowScanSoldOut
          ? _value.isShowScanSoldOut
          : isShowScanSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowAssistantSoldOut: freezed == isShowAssistantSoldOut
          ? _value.isShowAssistantSoldOut
          : isShowAssistantSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      menuShowSoldOut: freezed == menuShowSoldOut
          ? _value.menuShowSoldOut
          : menuShowSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      dishCardStyle: freezed == dishCardStyle
          ? _value.dishCardStyle
          : dishCardStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      isShowSoldOut: freezed == isShowSoldOut
          ? _value.isShowSoldOut
          : isShowSoldOut // ignore: cast_nullable_to_non_nullable
              as int?,
      serverVersion: freezed == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemSettingImpl implements _SystemSetting {
  const _$SystemSettingImpl(
      {@JsonKey(name: "is_show_scan_sold_out") this.isShowScanSoldOut,
      @JsonKey(name: "is_show_assistant_sold_out") this.isShowAssistantSoldOut,
      @JsonKey(name: "menu_show_sold_out") this.menuShowSoldOut,
      @JsonKey(name: "dish_card_style") this.dishCardStyle,
      @JsonKey(name: "is_show_sold_out") this.isShowSoldOut,
      @JsonKey(name: "server_version") this.serverVersion});

  factory _$SystemSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemSettingImplFromJson(json);

  @override
  @JsonKey(name: "is_show_scan_sold_out")
  final int? isShowScanSoldOut;
  @override
  @JsonKey(name: "is_show_assistant_sold_out")
  final int? isShowAssistantSoldOut;
  @override
  @JsonKey(name: "menu_show_sold_out")
  final int? menuShowSoldOut;
  @override
  @JsonKey(name: "dish_card_style")
  final String? dishCardStyle;
  @override
  @JsonKey(name: "is_show_sold_out")
  final int? isShowSoldOut;
// @JsonKey(name: "default_language") String? defaultLanguage,
// @JsonKey(name: "second_language") String? secondLanguage,
// @JsonKey(name: "device_id") String? deviceId,
// @JsonKey(name: "device_remark") String? deviceRemark,
// @JsonKey(name: "client_version") String? clientVersion,
  @override
  @JsonKey(name: "server_version")
  final String? serverVersion;

  @override
  String toString() {
    return 'SystemSetting(isShowScanSoldOut: $isShowScanSoldOut, isShowAssistantSoldOut: $isShowAssistantSoldOut, menuShowSoldOut: $menuShowSoldOut, dishCardStyle: $dishCardStyle, isShowSoldOut: $isShowSoldOut, serverVersion: $serverVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemSettingImpl &&
            (identical(other.isShowScanSoldOut, isShowScanSoldOut) ||
                other.isShowScanSoldOut == isShowScanSoldOut) &&
            (identical(other.isShowAssistantSoldOut, isShowAssistantSoldOut) ||
                other.isShowAssistantSoldOut == isShowAssistantSoldOut) &&
            (identical(other.menuShowSoldOut, menuShowSoldOut) ||
                other.menuShowSoldOut == menuShowSoldOut) &&
            (identical(other.dishCardStyle, dishCardStyle) ||
                other.dishCardStyle == dishCardStyle) &&
            (identical(other.isShowSoldOut, isShowSoldOut) ||
                other.isShowSoldOut == isShowSoldOut) &&
            (identical(other.serverVersion, serverVersion) ||
                other.serverVersion == serverVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isShowScanSoldOut,
      isShowAssistantSoldOut,
      menuShowSoldOut,
      dishCardStyle,
      isShowSoldOut,
      serverVersion);

  /// Create a copy of SystemSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemSettingImplCopyWith<_$SystemSettingImpl> get copyWith =>
      __$$SystemSettingImplCopyWithImpl<_$SystemSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemSettingImplToJson(
      this,
    );
  }
}

abstract class _SystemSetting implements SystemSetting {
  const factory _SystemSetting(
          {@JsonKey(name: "is_show_scan_sold_out") final int? isShowScanSoldOut,
          @JsonKey(name: "is_show_assistant_sold_out")
          final int? isShowAssistantSoldOut,
          @JsonKey(name: "menu_show_sold_out") final int? menuShowSoldOut,
          @JsonKey(name: "dish_card_style") final String? dishCardStyle,
          @JsonKey(name: "is_show_sold_out") final int? isShowSoldOut,
          @JsonKey(name: "server_version") final String? serverVersion}) =
      _$SystemSettingImpl;

  factory _SystemSetting.fromJson(Map<String, dynamic> json) =
      _$SystemSettingImpl.fromJson;

  @override
  @JsonKey(name: "is_show_scan_sold_out")
  int? get isShowScanSoldOut;
  @override
  @JsonKey(name: "is_show_assistant_sold_out")
  int? get isShowAssistantSoldOut;
  @override
  @JsonKey(name: "menu_show_sold_out")
  int? get menuShowSoldOut;
  @override
  @JsonKey(name: "dish_card_style")
  String? get dishCardStyle;
  @override
  @JsonKey(name: "is_show_sold_out")
  int?
      get isShowSoldOut; // @JsonKey(name: "default_language") String? defaultLanguage,
// @JsonKey(name: "second_language") String? secondLanguage,
// @JsonKey(name: "device_id") String? deviceId,
// @JsonKey(name: "device_remark") String? deviceRemark,
// @JsonKey(name: "client_version") String? clientVersion,
  @override
  @JsonKey(name: "server_version")
  String? get serverVersion;

  /// Create a copy of SystemSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemSettingImplCopyWith<_$SystemSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
