import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/desk/response/item/item.dart';

part 'list.freezed.dart';
part 'list.g.dart';

@freezed
class DeskList with _$DeskList {
  factory DeskList({
    @JsonKey(name: "extra") required Extra extra,
    @JsonKey(name: "list") required List<Desk> list,
    @JsonKey(name: "meta") required BaseListMeta meta,
  }) = _DeskList;

  factory DeskList.fromJson(Map<String, dynamic> json) => _$DeskListFromJson(json);
}

@unfreezed
class Extra with _$Extra {
  factory Extra({
    @JsonKey(name: "available_num") required int availableNum,
    @JsonKey(name: "lock_num") required int lockNum,
    @JsonKey(name: "occupy_buffet_num") required int occupyBuffetNum,
    @JsonKey(name: "occupy_not_buffet_num") required int occupyNotBuffetNum,
    @JsonKey(name: "occupy_wait_num") required int occupyWaitNum,
    @JsonKey(name: "total_num") required int totalNum,

    /// NOTE: 更新时间
    @JsonKey(name: "update_time") @Default(0) int? updateTime,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}
