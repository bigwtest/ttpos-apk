// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_unprocessed_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUnprocessedList _$ResponseUnprocessedListFromJson(
    Map<String, dynamic> json) {
  return _ResponseUnprocessedList.fromJson(json);
}

/// @nodoc
mixin _$ResponseUnprocessedList {
  @JsonKey(name: "abnormal_print")
  AbnormalPrint get abnormalPrint => throw _privateConstructorUsedError;
  @JsonKey(name: "call")
  Call get callList => throw _privateConstructorUsedError;
  @JsonKey(name: "h5_order")
  H5Order get h5Order => throw _privateConstructorUsedError;

  /// Serializes this ResponseUnprocessedList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseUnprocessedListCopyWith<ResponseUnprocessedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUnprocessedListCopyWith<$Res> {
  factory $ResponseUnprocessedListCopyWith(ResponseUnprocessedList value,
          $Res Function(ResponseUnprocessedList) then) =
      _$ResponseUnprocessedListCopyWithImpl<$Res, ResponseUnprocessedList>;
  @useResult
  $Res call(
      {@JsonKey(name: "abnormal_print") AbnormalPrint abnormalPrint,
      @JsonKey(name: "call") Call callList,
      @JsonKey(name: "h5_order") H5Order h5Order});

  $AbnormalPrintCopyWith<$Res> get abnormalPrint;
  $CallCopyWith<$Res> get callList;
  $H5OrderCopyWith<$Res> get h5Order;
}

/// @nodoc
class _$ResponseUnprocessedListCopyWithImpl<$Res,
        $Val extends ResponseUnprocessedList>
    implements $ResponseUnprocessedListCopyWith<$Res> {
  _$ResponseUnprocessedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abnormalPrint = null,
    Object? callList = null,
    Object? h5Order = null,
  }) {
    return _then(_value.copyWith(
      abnormalPrint: null == abnormalPrint
          ? _value.abnormalPrint
          : abnormalPrint // ignore: cast_nullable_to_non_nullable
              as AbnormalPrint,
      callList: null == callList
          ? _value.callList
          : callList // ignore: cast_nullable_to_non_nullable
              as Call,
      h5Order: null == h5Order
          ? _value.h5Order
          : h5Order // ignore: cast_nullable_to_non_nullable
              as H5Order,
    ) as $Val);
  }

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbnormalPrintCopyWith<$Res> get abnormalPrint {
    return $AbnormalPrintCopyWith<$Res>(_value.abnormalPrint, (value) {
      return _then(_value.copyWith(abnormalPrint: value) as $Val);
    });
  }

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallCopyWith<$Res> get callList {
    return $CallCopyWith<$Res>(_value.callList, (value) {
      return _then(_value.copyWith(callList: value) as $Val);
    });
  }

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $H5OrderCopyWith<$Res> get h5Order {
    return $H5OrderCopyWith<$Res>(_value.h5Order, (value) {
      return _then(_value.copyWith(h5Order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseUnprocessedListImplCopyWith<$Res>
    implements $ResponseUnprocessedListCopyWith<$Res> {
  factory _$$ResponseUnprocessedListImplCopyWith(
          _$ResponseUnprocessedListImpl value,
          $Res Function(_$ResponseUnprocessedListImpl) then) =
      __$$ResponseUnprocessedListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "abnormal_print") AbnormalPrint abnormalPrint,
      @JsonKey(name: "call") Call callList,
      @JsonKey(name: "h5_order") H5Order h5Order});

  @override
  $AbnormalPrintCopyWith<$Res> get abnormalPrint;
  @override
  $CallCopyWith<$Res> get callList;
  @override
  $H5OrderCopyWith<$Res> get h5Order;
}

/// @nodoc
class __$$ResponseUnprocessedListImplCopyWithImpl<$Res>
    extends _$ResponseUnprocessedListCopyWithImpl<$Res,
        _$ResponseUnprocessedListImpl>
    implements _$$ResponseUnprocessedListImplCopyWith<$Res> {
  __$$ResponseUnprocessedListImplCopyWithImpl(
      _$ResponseUnprocessedListImpl _value,
      $Res Function(_$ResponseUnprocessedListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abnormalPrint = null,
    Object? callList = null,
    Object? h5Order = null,
  }) {
    return _then(_$ResponseUnprocessedListImpl(
      abnormalPrint: null == abnormalPrint
          ? _value.abnormalPrint
          : abnormalPrint // ignore: cast_nullable_to_non_nullable
              as AbnormalPrint,
      callList: null == callList
          ? _value.callList
          : callList // ignore: cast_nullable_to_non_nullable
              as Call,
      h5Order: null == h5Order
          ? _value.h5Order
          : h5Order // ignore: cast_nullable_to_non_nullable
              as H5Order,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseUnprocessedListImpl implements _ResponseUnprocessedList {
  _$ResponseUnprocessedListImpl(
      {@JsonKey(name: "abnormal_print") required this.abnormalPrint,
      @JsonKey(name: "call") required this.callList,
      @JsonKey(name: "h5_order") required this.h5Order});

  factory _$ResponseUnprocessedListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUnprocessedListImplFromJson(json);

  @override
  @JsonKey(name: "abnormal_print")
  final AbnormalPrint abnormalPrint;
  @override
  @JsonKey(name: "call")
  final Call callList;
  @override
  @JsonKey(name: "h5_order")
  final H5Order h5Order;

  @override
  String toString() {
    return 'ResponseUnprocessedList(abnormalPrint: $abnormalPrint, callList: $callList, h5Order: $h5Order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUnprocessedListImpl &&
            (identical(other.abnormalPrint, abnormalPrint) ||
                other.abnormalPrint == abnormalPrint) &&
            (identical(other.callList, callList) ||
                other.callList == callList) &&
            (identical(other.h5Order, h5Order) || other.h5Order == h5Order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, abnormalPrint, callList, h5Order);

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUnprocessedListImplCopyWith<_$ResponseUnprocessedListImpl>
      get copyWith => __$$ResponseUnprocessedListImplCopyWithImpl<
          _$ResponseUnprocessedListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUnprocessedListImplToJson(
      this,
    );
  }
}

abstract class _ResponseUnprocessedList implements ResponseUnprocessedList {
  factory _ResponseUnprocessedList(
          {@JsonKey(name: "abnormal_print")
          required final AbnormalPrint abnormalPrint,
          @JsonKey(name: "call") required final Call callList,
          @JsonKey(name: "h5_order") required final H5Order h5Order}) =
      _$ResponseUnprocessedListImpl;

  factory _ResponseUnprocessedList.fromJson(Map<String, dynamic> json) =
      _$ResponseUnprocessedListImpl.fromJson;

  @override
  @JsonKey(name: "abnormal_print")
  AbnormalPrint get abnormalPrint;
  @override
  @JsonKey(name: "call")
  Call get callList;
  @override
  @JsonKey(name: "h5_order")
  H5Order get h5Order;

  /// Create a copy of ResponseUnprocessedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseUnprocessedListImplCopyWith<_$ResponseUnprocessedListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AbnormalPrint _$AbnormalPrintFromJson(Map<String, dynamic> json) {
  return _AbnormalPrint.fromJson(json);
}

/// @nodoc
mixin _$AbnormalPrint {
  @JsonKey(name: "list")
  List<RespAbnormalPrintItemForNotice> get list =>
      throw _privateConstructorUsedError;

  /// Serializes this AbnormalPrint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbnormalPrint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbnormalPrintCopyWith<AbnormalPrint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbnormalPrintCopyWith<$Res> {
  factory $AbnormalPrintCopyWith(
          AbnormalPrint value, $Res Function(AbnormalPrint) then) =
      _$AbnormalPrintCopyWithImpl<$Res, AbnormalPrint>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespAbnormalPrintItemForNotice> list});
}

/// @nodoc
class _$AbnormalPrintCopyWithImpl<$Res, $Val extends AbnormalPrint>
    implements $AbnormalPrintCopyWith<$Res> {
  _$AbnormalPrintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbnormalPrint
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
              as List<RespAbnormalPrintItemForNotice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbnormalPrintImplCopyWith<$Res>
    implements $AbnormalPrintCopyWith<$Res> {
  factory _$$AbnormalPrintImplCopyWith(
          _$AbnormalPrintImpl value, $Res Function(_$AbnormalPrintImpl) then) =
      __$$AbnormalPrintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespAbnormalPrintItemForNotice> list});
}

/// @nodoc
class __$$AbnormalPrintImplCopyWithImpl<$Res>
    extends _$AbnormalPrintCopyWithImpl<$Res, _$AbnormalPrintImpl>
    implements _$$AbnormalPrintImplCopyWith<$Res> {
  __$$AbnormalPrintImplCopyWithImpl(
      _$AbnormalPrintImpl _value, $Res Function(_$AbnormalPrintImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbnormalPrint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$AbnormalPrintImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespAbnormalPrintItemForNotice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbnormalPrintImpl implements _AbnormalPrint {
  const _$AbnormalPrintImpl(
      {@JsonKey(name: "list")
      required final List<RespAbnormalPrintItemForNotice> list})
      : _list = list;

  factory _$AbnormalPrintImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbnormalPrintImplFromJson(json);

  final List<RespAbnormalPrintItemForNotice> _list;
  @override
  @JsonKey(name: "list")
  List<RespAbnormalPrintItemForNotice> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'AbnormalPrint(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbnormalPrintImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of AbnormalPrint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbnormalPrintImplCopyWith<_$AbnormalPrintImpl> get copyWith =>
      __$$AbnormalPrintImplCopyWithImpl<_$AbnormalPrintImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbnormalPrintImplToJson(
      this,
    );
  }
}

abstract class _AbnormalPrint implements AbnormalPrint {
  const factory _AbnormalPrint(
          {@JsonKey(name: "list")
          required final List<RespAbnormalPrintItemForNotice> list}) =
      _$AbnormalPrintImpl;

  factory _AbnormalPrint.fromJson(Map<String, dynamic> json) =
      _$AbnormalPrintImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespAbnormalPrintItemForNotice> get list;

  /// Create a copy of AbnormalPrint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbnormalPrintImplCopyWith<_$AbnormalPrintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespAbnormalPrintItemForNotice _$RespAbnormalPrintItemForNoticeFromJson(
    Map<String, dynamic> json) {
  return _RespAbnormalPrintItemForNotice.fromJson(json);
}

/// @nodoc
mixin _$RespAbnormalPrintItemForNotice {
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespAbnormalPrintItemForNotice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespAbnormalPrintItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespAbnormalPrintItemForNoticeCopyWith<RespAbnormalPrintItemForNotice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespAbnormalPrintItemForNoticeCopyWith<$Res> {
  factory $RespAbnormalPrintItemForNoticeCopyWith(
          RespAbnormalPrintItemForNotice value,
          $Res Function(RespAbnormalPrintItemForNotice) then) =
      _$RespAbnormalPrintItemForNoticeCopyWithImpl<$Res,
          RespAbnormalPrintItemForNotice>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespAbnormalPrintItemForNoticeCopyWithImpl<$Res,
        $Val extends RespAbnormalPrintItemForNotice>
    implements $RespAbnormalPrintItemForNoticeCopyWith<$Res> {
  _$RespAbnormalPrintItemForNoticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespAbnormalPrintItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? reason = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespAbnormalPrintItemForNoticeImplCopyWith<$Res>
    implements $RespAbnormalPrintItemForNoticeCopyWith<$Res> {
  factory _$$RespAbnormalPrintItemForNoticeImplCopyWith(
          _$RespAbnormalPrintItemForNoticeImpl value,
          $Res Function(_$RespAbnormalPrintItemForNoticeImpl) then) =
      __$$RespAbnormalPrintItemForNoticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespAbnormalPrintItemForNoticeImplCopyWithImpl<$Res>
    extends _$RespAbnormalPrintItemForNoticeCopyWithImpl<$Res,
        _$RespAbnormalPrintItemForNoticeImpl>
    implements _$$RespAbnormalPrintItemForNoticeImplCopyWith<$Res> {
  __$$RespAbnormalPrintItemForNoticeImplCopyWithImpl(
      _$RespAbnormalPrintItemForNoticeImpl _value,
      $Res Function(_$RespAbnormalPrintItemForNoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespAbnormalPrintItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? reason = null,
    Object? uuid = null,
  }) {
    return _then(_$RespAbnormalPrintItemForNoticeImpl(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
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
class _$RespAbnormalPrintItemForNoticeImpl
    implements _RespAbnormalPrintItemForNotice {
  const _$RespAbnormalPrintItemForNoticeImpl(
      {@JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "reason") required this.reason,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespAbnormalPrintItemForNoticeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespAbnormalPrintItemForNoticeImplFromJson(json);

  @override
  @JsonKey(name: "desk_no")
  final String deskNo;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespAbnormalPrintItemForNotice(deskNo: $deskNo, reason: $reason, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespAbnormalPrintItemForNoticeImpl &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deskNo, reason, uuid);

  /// Create a copy of RespAbnormalPrintItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespAbnormalPrintItemForNoticeImplCopyWith<
          _$RespAbnormalPrintItemForNoticeImpl>
      get copyWith => __$$RespAbnormalPrintItemForNoticeImplCopyWithImpl<
          _$RespAbnormalPrintItemForNoticeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespAbnormalPrintItemForNoticeImplToJson(
      this,
    );
  }
}

abstract class _RespAbnormalPrintItemForNotice
    implements RespAbnormalPrintItemForNotice {
  const factory _RespAbnormalPrintItemForNotice(
          {@JsonKey(name: "desk_no") required final String deskNo,
          @JsonKey(name: "reason") required final String reason,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$RespAbnormalPrintItemForNoticeImpl;

  factory _RespAbnormalPrintItemForNotice.fromJson(Map<String, dynamic> json) =
      _$RespAbnormalPrintItemForNoticeImpl.fromJson;

  @override
  @JsonKey(name: "desk_no")
  String get deskNo;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespAbnormalPrintItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespAbnormalPrintItemForNoticeImplCopyWith<
          _$RespAbnormalPrintItemForNoticeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Call _$CallFromJson(Map<String, dynamic> json) {
  return _Call.fromJson(json);
}

/// @nodoc
mixin _$Call {
  @JsonKey(name: "list")
  List<RespUnprocessedCallItemForNotice> get list =>
      throw _privateConstructorUsedError;

  /// Serializes this Call to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallCopyWith<Call> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallCopyWith<$Res> {
  factory $CallCopyWith(Call value, $Res Function(Call) then) =
      _$CallCopyWithImpl<$Res, Call>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespUnprocessedCallItemForNotice> list});
}

/// @nodoc
class _$CallCopyWithImpl<$Res, $Val extends Call>
    implements $CallCopyWith<$Res> {
  _$CallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Call
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
              as List<RespUnprocessedCallItemForNotice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallImplCopyWith<$Res> implements $CallCopyWith<$Res> {
  factory _$$CallImplCopyWith(
          _$CallImpl value, $Res Function(_$CallImpl) then) =
      __$$CallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespUnprocessedCallItemForNotice> list});
}

/// @nodoc
class __$$CallImplCopyWithImpl<$Res>
    extends _$CallCopyWithImpl<$Res, _$CallImpl>
    implements _$$CallImplCopyWith<$Res> {
  __$$CallImplCopyWithImpl(_$CallImpl _value, $Res Function(_$CallImpl) _then)
      : super(_value, _then);

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$CallImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespUnprocessedCallItemForNotice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CallImpl implements _Call {
  const _$CallImpl(
      {@JsonKey(name: "list")
      required final List<RespUnprocessedCallItemForNotice> list})
      : _list = list;

  factory _$CallImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallImplFromJson(json);

  final List<RespUnprocessedCallItemForNotice> _list;
  @override
  @JsonKey(name: "list")
  List<RespUnprocessedCallItemForNotice> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'Call(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallImplCopyWith<_$CallImpl> get copyWith =>
      __$$CallImplCopyWithImpl<_$CallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallImplToJson(
      this,
    );
  }
}

abstract class _Call implements Call {
  const factory _Call(
      {@JsonKey(name: "list")
      required final List<RespUnprocessedCallItemForNotice> list}) = _$CallImpl;

  factory _Call.fromJson(Map<String, dynamic> json) = _$CallImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespUnprocessedCallItemForNotice> get list;

  /// Create a copy of Call
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallImplCopyWith<_$CallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespUnprocessedCallItemForNotice _$RespUnprocessedCallItemForNoticeFromJson(
    Map<String, dynamic> json) {
  return _RespUnprocessedCallItemForNotice.fromJson(json);
}

/// @nodoc
mixin _$RespUnprocessedCallItemForNotice {
  @JsonKey(name: "call_text")
  String get callText => throw _privateConstructorUsedError;
  @JsonKey(name: "call_type")
  int get callType => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespUnprocessedCallItemForNotice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespUnprocessedCallItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespUnprocessedCallItemForNoticeCopyWith<RespUnprocessedCallItemForNotice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespUnprocessedCallItemForNoticeCopyWith<$Res> {
  factory $RespUnprocessedCallItemForNoticeCopyWith(
          RespUnprocessedCallItemForNotice value,
          $Res Function(RespUnprocessedCallItemForNotice) then) =
      _$RespUnprocessedCallItemForNoticeCopyWithImpl<$Res,
          RespUnprocessedCallItemForNotice>;
  @useResult
  $Res call(
      {@JsonKey(name: "call_text") String callText,
      @JsonKey(name: "call_type") int callType,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespUnprocessedCallItemForNoticeCopyWithImpl<$Res,
        $Val extends RespUnprocessedCallItemForNotice>
    implements $RespUnprocessedCallItemForNoticeCopyWith<$Res> {
  _$RespUnprocessedCallItemForNoticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespUnprocessedCallItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callText = null,
    Object? callType = null,
    Object? deskNo = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      callText: null == callText
          ? _value.callText
          : callText // ignore: cast_nullable_to_non_nullable
              as String,
      callType: null == callType
          ? _value.callType
          : callType // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespUnprocessedCallItemForNoticeImplCopyWith<$Res>
    implements $RespUnprocessedCallItemForNoticeCopyWith<$Res> {
  factory _$$RespUnprocessedCallItemForNoticeImplCopyWith(
          _$RespUnprocessedCallItemForNoticeImpl value,
          $Res Function(_$RespUnprocessedCallItemForNoticeImpl) then) =
      __$$RespUnprocessedCallItemForNoticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "call_text") String callText,
      @JsonKey(name: "call_type") int callType,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespUnprocessedCallItemForNoticeImplCopyWithImpl<$Res>
    extends _$RespUnprocessedCallItemForNoticeCopyWithImpl<$Res,
        _$RespUnprocessedCallItemForNoticeImpl>
    implements _$$RespUnprocessedCallItemForNoticeImplCopyWith<$Res> {
  __$$RespUnprocessedCallItemForNoticeImplCopyWithImpl(
      _$RespUnprocessedCallItemForNoticeImpl _value,
      $Res Function(_$RespUnprocessedCallItemForNoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespUnprocessedCallItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callText = null,
    Object? callType = null,
    Object? deskNo = null,
    Object? uuid = null,
  }) {
    return _then(_$RespUnprocessedCallItemForNoticeImpl(
      callText: null == callText
          ? _value.callText
          : callText // ignore: cast_nullable_to_non_nullable
              as String,
      callType: null == callType
          ? _value.callType
          : callType // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
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
class _$RespUnprocessedCallItemForNoticeImpl
    implements _RespUnprocessedCallItemForNotice {
  const _$RespUnprocessedCallItemForNoticeImpl(
      {@JsonKey(name: "call_text") required this.callText,
      @JsonKey(name: "call_type") required this.callType,
      @JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespUnprocessedCallItemForNoticeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespUnprocessedCallItemForNoticeImplFromJson(json);

  @override
  @JsonKey(name: "call_text")
  final String callText;
  @override
  @JsonKey(name: "call_type")
  final int callType;
  @override
  @JsonKey(name: "desk_no")
  final String deskNo;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespUnprocessedCallItemForNotice(callText: $callText, callType: $callType, deskNo: $deskNo, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespUnprocessedCallItemForNoticeImpl &&
            (identical(other.callText, callText) ||
                other.callText == callText) &&
            (identical(other.callType, callType) ||
                other.callType == callType) &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, callText, callType, deskNo, uuid);

  /// Create a copy of RespUnprocessedCallItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespUnprocessedCallItemForNoticeImplCopyWith<
          _$RespUnprocessedCallItemForNoticeImpl>
      get copyWith => __$$RespUnprocessedCallItemForNoticeImplCopyWithImpl<
          _$RespUnprocessedCallItemForNoticeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespUnprocessedCallItemForNoticeImplToJson(
      this,
    );
  }
}

abstract class _RespUnprocessedCallItemForNotice
    implements RespUnprocessedCallItemForNotice {
  const factory _RespUnprocessedCallItemForNotice(
          {@JsonKey(name: "call_text") required final String callText,
          @JsonKey(name: "call_type") required final int callType,
          @JsonKey(name: "desk_no") required final String deskNo,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$RespUnprocessedCallItemForNoticeImpl;

  factory _RespUnprocessedCallItemForNotice.fromJson(
          Map<String, dynamic> json) =
      _$RespUnprocessedCallItemForNoticeImpl.fromJson;

  @override
  @JsonKey(name: "call_text")
  String get callText;
  @override
  @JsonKey(name: "call_type")
  int get callType;
  @override
  @JsonKey(name: "desk_no")
  String get deskNo;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespUnprocessedCallItemForNotice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespUnprocessedCallItemForNoticeImplCopyWith<
          _$RespUnprocessedCallItemForNoticeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

H5Order _$H5OrderFromJson(Map<String, dynamic> json) {
  return _H5Order.fromJson(json);
}

/// @nodoc
mixin _$H5Order {
  @JsonKey(name: "list")
  List<RespUnprocessedH5OrderItem> get list =>
      throw _privateConstructorUsedError;

  /// Serializes this H5Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of H5Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $H5OrderCopyWith<H5Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $H5OrderCopyWith<$Res> {
  factory $H5OrderCopyWith(H5Order value, $Res Function(H5Order) then) =
      _$H5OrderCopyWithImpl<$Res, H5Order>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespUnprocessedH5OrderItem> list});
}

/// @nodoc
class _$H5OrderCopyWithImpl<$Res, $Val extends H5Order>
    implements $H5OrderCopyWith<$Res> {
  _$H5OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of H5Order
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
              as List<RespUnprocessedH5OrderItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$H5OrderImplCopyWith<$Res> implements $H5OrderCopyWith<$Res> {
  factory _$$H5OrderImplCopyWith(
          _$H5OrderImpl value, $Res Function(_$H5OrderImpl) then) =
      __$$H5OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespUnprocessedH5OrderItem> list});
}

/// @nodoc
class __$$H5OrderImplCopyWithImpl<$Res>
    extends _$H5OrderCopyWithImpl<$Res, _$H5OrderImpl>
    implements _$$H5OrderImplCopyWith<$Res> {
  __$$H5OrderImplCopyWithImpl(
      _$H5OrderImpl _value, $Res Function(_$H5OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of H5Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$H5OrderImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespUnprocessedH5OrderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$H5OrderImpl implements _H5Order {
  const _$H5OrderImpl(
      {@JsonKey(name: "list")
      required final List<RespUnprocessedH5OrderItem> list})
      : _list = list;

  factory _$H5OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$H5OrderImplFromJson(json);

  final List<RespUnprocessedH5OrderItem> _list;
  @override
  @JsonKey(name: "list")
  List<RespUnprocessedH5OrderItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'H5Order(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$H5OrderImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of H5Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$H5OrderImplCopyWith<_$H5OrderImpl> get copyWith =>
      __$$H5OrderImplCopyWithImpl<_$H5OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$H5OrderImplToJson(
      this,
    );
  }
}

abstract class _H5Order implements H5Order {
  const factory _H5Order(
      {@JsonKey(name: "list")
      required final List<RespUnprocessedH5OrderItem> list}) = _$H5OrderImpl;

  factory _H5Order.fromJson(Map<String, dynamic> json) = _$H5OrderImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespUnprocessedH5OrderItem> get list;

  /// Create a copy of H5Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$H5OrderImplCopyWith<_$H5OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespUnprocessedH5OrderItem _$RespUnprocessedH5OrderItemFromJson(
    Map<String, dynamic> json) {
  return _RespUnprocessedH5OrderItem.fromJson(json);
}

/// @nodoc
mixin _$RespUnprocessedH5OrderItem {
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "is_auto_accept")
  bool get isAutoAccept => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  /// Serializes this RespUnprocessedH5OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespUnprocessedH5OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespUnprocessedH5OrderItemCopyWith<RespUnprocessedH5OrderItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespUnprocessedH5OrderItemCopyWith<$Res> {
  factory $RespUnprocessedH5OrderItemCopyWith(RespUnprocessedH5OrderItem value,
          $Res Function(RespUnprocessedH5OrderItem) then) =
      _$RespUnprocessedH5OrderItemCopyWithImpl<$Res,
          RespUnprocessedH5OrderItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "is_auto_accept") bool isAutoAccept,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$RespUnprocessedH5OrderItemCopyWithImpl<$Res,
        $Val extends RespUnprocessedH5OrderItem>
    implements $RespUnprocessedH5OrderItemCopyWith<$Res> {
  _$RespUnprocessedH5OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespUnprocessedH5OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? uuid = null,
    Object? isAutoAccept = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoAccept: null == isAutoAccept
          ? _value.isAutoAccept
          : isAutoAccept // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespUnprocessedH5OrderItemImplCopyWith<$Res>
    implements $RespUnprocessedH5OrderItemCopyWith<$Res> {
  factory _$$RespUnprocessedH5OrderItemImplCopyWith(
          _$RespUnprocessedH5OrderItemImpl value,
          $Res Function(_$RespUnprocessedH5OrderItemImpl) then) =
      __$$RespUnprocessedH5OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "is_auto_accept") bool isAutoAccept,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$RespUnprocessedH5OrderItemImplCopyWithImpl<$Res>
    extends _$RespUnprocessedH5OrderItemCopyWithImpl<$Res,
        _$RespUnprocessedH5OrderItemImpl>
    implements _$$RespUnprocessedH5OrderItemImplCopyWith<$Res> {
  __$$RespUnprocessedH5OrderItemImplCopyWithImpl(
      _$RespUnprocessedH5OrderItemImpl _value,
      $Res Function(_$RespUnprocessedH5OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespUnprocessedH5OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? uuid = null,
    Object? isAutoAccept = null,
    Object? status = null,
  }) {
    return _then(_$RespUnprocessedH5OrderItemImpl(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoAccept: null == isAutoAccept
          ? _value.isAutoAccept
          : isAutoAccept // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespUnprocessedH5OrderItemImpl implements _RespUnprocessedH5OrderItem {
  const _$RespUnprocessedH5OrderItemImpl(
      {@JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "is_auto_accept") required this.isAutoAccept,
      @JsonKey(name: "status") required this.status});

  factory _$RespUnprocessedH5OrderItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespUnprocessedH5OrderItemImplFromJson(json);

  @override
  @JsonKey(name: "desk_no")
  final String deskNo;
  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "is_auto_accept")
  final bool isAutoAccept;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'RespUnprocessedH5OrderItem(deskNo: $deskNo, uuid: $uuid, isAutoAccept: $isAutoAccept, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespUnprocessedH5OrderItemImpl &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.isAutoAccept, isAutoAccept) ||
                other.isAutoAccept == isAutoAccept) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deskNo, uuid, isAutoAccept, status);

  /// Create a copy of RespUnprocessedH5OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespUnprocessedH5OrderItemImplCopyWith<_$RespUnprocessedH5OrderItemImpl>
      get copyWith => __$$RespUnprocessedH5OrderItemImplCopyWithImpl<
          _$RespUnprocessedH5OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespUnprocessedH5OrderItemImplToJson(
      this,
    );
  }
}

abstract class _RespUnprocessedH5OrderItem
    implements RespUnprocessedH5OrderItem {
  const factory _RespUnprocessedH5OrderItem(
          {@JsonKey(name: "desk_no") required final String deskNo,
          @JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "is_auto_accept") required final bool isAutoAccept,
          @JsonKey(name: "status") required final int status}) =
      _$RespUnprocessedH5OrderItemImpl;

  factory _RespUnprocessedH5OrderItem.fromJson(Map<String, dynamic> json) =
      _$RespUnprocessedH5OrderItemImpl.fromJson;

  @override
  @JsonKey(name: "desk_no")
  String get deskNo;
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "is_auto_accept")
  bool get isAutoAccept;
  @override
  @JsonKey(name: "status")
  int get status;

  /// Create a copy of RespUnprocessedH5OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespUnprocessedH5OrderItemImplCopyWith<_$RespUnprocessedH5OrderItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
