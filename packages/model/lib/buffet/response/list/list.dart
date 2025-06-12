import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';

part 'list.freezed.dart';
part 'list.g.dart';

@freezed
class BuffetList with _$BuffetList {
  factory BuffetList({
    @JsonKey(name: "list") required List<Buffet> list,
    @JsonKey(name: "meta") required BaseListMeta meta,
  }) = _BuffetList;

  factory BuffetList.fromJson(Map<String, dynamic> json) => _$BuffetListFromJson(json);
}
