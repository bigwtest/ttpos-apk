import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@unfreezed
class Desk with _$Desk {
  factory Desk({
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "customer_count") required int customerCount,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "is_lock") required bool isLock,
    @JsonKey(name: "is_buffet") required bool isBuffet,
    @JsonKey(name: "is_wait") required bool isWait,
    @JsonKey(name: "time") required int time,
    @JsonKey(name: "lock_time") int? lockTime,
    @JsonKey(name: "price") required SafetyNumber price,
    @JsonKey(name: "remark") required String remark,
    @JsonKey(name: "region_uuid") required int regionUuid,
    @JsonKey(name: "type_uuid") required int typeUuid,
    // NOTE: 详情接口和列表接口其实就这一个字段的差异
    @JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
    // 是否拆单
    @JsonKey(name: "is_split_order") bool? isSplitOrder,
    // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
    @JsonKey(name: 'sale_order_uuid') int? saleOrderUuid,

    /// NOTE: 更新时间
    @JsonKey(name: "update_time") @Default(0) int? updateTime,

    /// NOTE: 2.1 新增字段
    @JsonKey(name: "is_open_default_people_num") @Default(false) bool? isOpenDefaultPeopleNum,
    @JsonKey(name: "default_people_num") @Default(0) int? defaultPeopleNum,
  }) = _Desk;

  factory Desk.fromJson(Map<String, dynamic> json) => _$DeskFromJson(json);
}

extension DeskExtension on Desk {
  bool get isAvailable {
    return status == 0;
  }

  bool get isNotAvailable {
    return status == 1;
  }

  bool get isNotBuffet {
    return !isBuffet && status != 0;
  }

  bool get isCountDown {
    return isBuffet;
  }

  bool get isCountUp {
    return isNotBuffet;
  }

  bool get isClosable => !isLock && !isWait && !isAvailable;

  String get priceString => price.toSafetyString();

  String get uuidString => uuid.toString();
  String get regionUuidString => regionUuid.toString();
  String get typeUuidString => typeUuid.toString();
}

@freezed
class SimpleDesk with _$SimpleDesk {
  const factory SimpleDesk({
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "desk_no") required String deskNo,
  }) = _SimpleDesk;

  factory SimpleDesk.fromJson(Map<String, dynamic> json) => _$SimpleDeskFromJson(json);
}
