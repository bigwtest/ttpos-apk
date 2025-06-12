import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:pos/model/response/accept/order/order.dart';

part 'list.freezed.dart';
part 'list.g.dart';

@freezed
class AcceptList with _$AcceptList {
  factory AcceptList({
    @JsonKey(name: "extra") required Extra extra,
    @JsonKey(name: "list") required List<AcceptOrder> list,
    @JsonKey(name: "meta") required BaseListMeta meta,
  }) = _AcceptList;

  factory AcceptList.fromJson(Map<String, dynamic> json) => _$AcceptListFromJson(json);
}

@unfreezed
class Extra with _$Extra {
  factory Extra({
    @JsonKey(name: "handled_count") required int handledCount,
    @JsonKey(name: "unhandled_count") required int unhandledCount,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}
