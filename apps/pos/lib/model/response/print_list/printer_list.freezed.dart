// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrinterList _$PrinterListFromJson(Map<String, dynamic> json) {
  return _PrinterList.fromJson(json);
}

/// @nodoc
mixin _$PrinterList {
  @JsonKey(name: "list")
  List<RespPrinterLogData> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta get meta => throw _privateConstructorUsedError;

  /// Serializes this PrinterList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrinterList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrinterListCopyWith<PrinterList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterListCopyWith<$Res> {
  factory $PrinterListCopyWith(
          PrinterList value, $Res Function(PrinterList) then) =
      _$PrinterListCopyWithImpl<$Res, PrinterList>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespPrinterLogData> list,
      @JsonKey(name: "meta") Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$PrinterListCopyWithImpl<$Res, $Val extends PrinterList>
    implements $PrinterListCopyWith<$Res> {
  _$PrinterListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrinterList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespPrinterLogData>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  /// Create a copy of PrinterList
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
abstract class _$$PrinterListImplCopyWith<$Res>
    implements $PrinterListCopyWith<$Res> {
  factory _$$PrinterListImplCopyWith(
          _$PrinterListImpl value, $Res Function(_$PrinterListImpl) then) =
      __$$PrinterListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespPrinterLogData> list,
      @JsonKey(name: "meta") Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PrinterListImplCopyWithImpl<$Res>
    extends _$PrinterListCopyWithImpl<$Res, _$PrinterListImpl>
    implements _$$PrinterListImplCopyWith<$Res> {
  __$$PrinterListImplCopyWithImpl(
      _$PrinterListImpl _value, $Res Function(_$PrinterListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrinterList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$PrinterListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespPrinterLogData>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrinterListImpl implements _PrinterList {
  _$PrinterListImpl(
      {@JsonKey(name: "list") required final List<RespPrinterLogData> list,
      @JsonKey(name: "meta") required this.meta})
      : _list = list;

  factory _$PrinterListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrinterListImplFromJson(json);

  final List<RespPrinterLogData> _list;
  @override
  @JsonKey(name: "list")
  List<RespPrinterLogData> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "meta")
  final Meta meta;

  @override
  String toString() {
    return 'PrinterList(list: $list, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), meta);

  /// Create a copy of PrinterList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterListImplCopyWith<_$PrinterListImpl> get copyWith =>
      __$$PrinterListImplCopyWithImpl<_$PrinterListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrinterListImplToJson(
      this,
    );
  }
}

abstract class _PrinterList implements PrinterList {
  factory _PrinterList(
      {@JsonKey(name: "list") required final List<RespPrinterLogData> list,
      @JsonKey(name: "meta") required final Meta meta}) = _$PrinterListImpl;

  factory _PrinterList.fromJson(Map<String, dynamic> json) =
      _$PrinterListImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespPrinterLogData> get list;
  @override
  @JsonKey(name: "meta")
  Meta get meta;

  /// Create a copy of PrinterList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrinterListImplCopyWith<_$PrinterListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespPrinterLogData _$RespPrinterLogDataFromJson(Map<String, dynamic> json) {
  return _RespPrinterLogData.fromJson(json);
}

/// @nodoc
mixin _$RespPrinterLogData {
  @JsonKey(name: "create_time")
  int get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "data_type_name")
  String get dataTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_name")
  String get printerName => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_time")
  int get printerTime => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "rule_name")
  String get ruleName => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status_text")
  String get statusText => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespPrinterLogData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPrinterLogData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPrinterLogDataCopyWith<RespPrinterLogData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPrinterLogDataCopyWith<$Res> {
  factory $RespPrinterLogDataCopyWith(
          RespPrinterLogData value, $Res Function(RespPrinterLogData) then) =
      _$RespPrinterLogDataCopyWithImpl<$Res, RespPrinterLogData>;
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "data_type_name") String dataTypeName,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "printer_name") String printerName,
      @JsonKey(name: "printer_time") int printerTime,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "rule_name") String ruleName,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "status_text") String statusText,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespPrinterLogDataCopyWithImpl<$Res, $Val extends RespPrinterLogData>
    implements $RespPrinterLogDataCopyWith<$Res> {
  _$RespPrinterLogDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPrinterLogData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = null,
    Object? dataTypeName = null,
    Object? orderNo = null,
    Object? printerName = null,
    Object? printerTime = null,
    Object? reason = null,
    Object? ruleName = null,
    Object? serialNo = null,
    Object? status = null,
    Object? statusText = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      dataTypeName: null == dataTypeName
          ? _value.dataTypeName
          : dataTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      printerName: null == printerName
          ? _value.printerName
          : printerName // ignore: cast_nullable_to_non_nullable
              as String,
      printerTime: null == printerTime
          ? _value.printerTime
          : printerTime // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      ruleName: null == ruleName
          ? _value.ruleName
          : ruleName // ignore: cast_nullable_to_non_nullable
              as String,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespPrinterLogDataImplCopyWith<$Res>
    implements $RespPrinterLogDataCopyWith<$Res> {
  factory _$$RespPrinterLogDataImplCopyWith(_$RespPrinterLogDataImpl value,
          $Res Function(_$RespPrinterLogDataImpl) then) =
      __$$RespPrinterLogDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "data_type_name") String dataTypeName,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "printer_name") String printerName,
      @JsonKey(name: "printer_time") int printerTime,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "rule_name") String ruleName,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "status_text") String statusText,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespPrinterLogDataImplCopyWithImpl<$Res>
    extends _$RespPrinterLogDataCopyWithImpl<$Res, _$RespPrinterLogDataImpl>
    implements _$$RespPrinterLogDataImplCopyWith<$Res> {
  __$$RespPrinterLogDataImplCopyWithImpl(_$RespPrinterLogDataImpl _value,
      $Res Function(_$RespPrinterLogDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPrinterLogData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = null,
    Object? dataTypeName = null,
    Object? orderNo = null,
    Object? printerName = null,
    Object? printerTime = null,
    Object? reason = null,
    Object? ruleName = null,
    Object? serialNo = null,
    Object? status = null,
    Object? statusText = null,
    Object? uuid = null,
  }) {
    return _then(_$RespPrinterLogDataImpl(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      dataTypeName: null == dataTypeName
          ? _value.dataTypeName
          : dataTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      printerName: null == printerName
          ? _value.printerName
          : printerName // ignore: cast_nullable_to_non_nullable
              as String,
      printerTime: null == printerTime
          ? _value.printerTime
          : printerTime // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      ruleName: null == ruleName
          ? _value.ruleName
          : ruleName // ignore: cast_nullable_to_non_nullable
              as String,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
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
class _$RespPrinterLogDataImpl implements _RespPrinterLogData {
  const _$RespPrinterLogDataImpl(
      {@JsonKey(name: "create_time") required this.createTime,
      @JsonKey(name: "data_type_name") required this.dataTypeName,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "printer_name") required this.printerName,
      @JsonKey(name: "printer_time") required this.printerTime,
      @JsonKey(name: "reason") required this.reason,
      @JsonKey(name: "rule_name") required this.ruleName,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "status_text") required this.statusText,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespPrinterLogDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPrinterLogDataImplFromJson(json);

  @override
  @JsonKey(name: "create_time")
  final int createTime;
  @override
  @JsonKey(name: "data_type_name")
  final String dataTypeName;
  @override
  @JsonKey(name: "order_no")
  final String orderNo;
  @override
  @JsonKey(name: "printer_name")
  final String printerName;
  @override
  @JsonKey(name: "printer_time")
  final int printerTime;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @JsonKey(name: "rule_name")
  final String ruleName;
  @override
  @JsonKey(name: "serial_no")
  final String serialNo;
  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "status_text")
  final String statusText;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespPrinterLogData(createTime: $createTime, dataTypeName: $dataTypeName, orderNo: $orderNo, printerName: $printerName, printerTime: $printerTime, reason: $reason, ruleName: $ruleName, serialNo: $serialNo, status: $status, statusText: $statusText, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPrinterLogDataImpl &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.dataTypeName, dataTypeName) ||
                other.dataTypeName == dataTypeName) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.printerName, printerName) ||
                other.printerName == printerName) &&
            (identical(other.printerTime, printerTime) ||
                other.printerTime == printerTime) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.ruleName, ruleName) ||
                other.ruleName == ruleName) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusText, statusText) ||
                other.statusText == statusText) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createTime,
      dataTypeName,
      orderNo,
      printerName,
      printerTime,
      reason,
      ruleName,
      serialNo,
      status,
      statusText,
      uuid);

  /// Create a copy of RespPrinterLogData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPrinterLogDataImplCopyWith<_$RespPrinterLogDataImpl> get copyWith =>
      __$$RespPrinterLogDataImplCopyWithImpl<_$RespPrinterLogDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPrinterLogDataImplToJson(
      this,
    );
  }
}

abstract class _RespPrinterLogData implements RespPrinterLogData {
  const factory _RespPrinterLogData(
          {@JsonKey(name: "create_time") required final int createTime,
          @JsonKey(name: "data_type_name") required final String dataTypeName,
          @JsonKey(name: "order_no") required final String orderNo,
          @JsonKey(name: "printer_name") required final String printerName,
          @JsonKey(name: "printer_time") required final int printerTime,
          @JsonKey(name: "reason") required final String reason,
          @JsonKey(name: "rule_name") required final String ruleName,
          @JsonKey(name: "serial_no") required final String serialNo,
          @JsonKey(name: "status") required final int status,
          @JsonKey(name: "status_text") required final String statusText,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$RespPrinterLogDataImpl;

  factory _RespPrinterLogData.fromJson(Map<String, dynamic> json) =
      _$RespPrinterLogDataImpl.fromJson;

  @override
  @JsonKey(name: "create_time")
  int get createTime;
  @override
  @JsonKey(name: "data_type_name")
  String get dataTypeName;
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @override
  @JsonKey(name: "printer_name")
  String get printerName;
  @override
  @JsonKey(name: "printer_time")
  int get printerTime;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @JsonKey(name: "rule_name")
  String get ruleName;
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "status_text")
  String get statusText;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespPrinterLogData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPrinterLogDataImplCopyWith<_$RespPrinterLogDataImpl> get copyWith =>
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
