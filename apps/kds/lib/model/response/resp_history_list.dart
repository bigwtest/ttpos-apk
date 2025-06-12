import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'resp_history_list.freezed.dart';
part 'resp_history_list.g.dart';

@freezed
class ResponseHistoryList with _$ResponseHistoryList {
  factory ResponseHistoryList({
    @JsonKey(name: "list") required List<RespProductionGroup> list,
  }) = _ResponseHistoryList;

  factory ResponseHistoryList.fromJson(Map<String, dynamic> json) => _$ResponseHistoryListFromJson(json);
}

///resp.ProductionGroup
@freezed
class RespProductionGroup with _$RespProductionGroup {
  const factory RespProductionGroup({
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "product_list") required ProductListClass productList,
  }) = _RespProductionGroup;

  factory RespProductionGroup.fromJson(Map<String, dynamic> json) => _$RespProductionGroupFromJson(json);
}

///送厨商品列表
///
///resp.ProductionList
@freezed
class ProductListClass with _$ProductListClass {
  const factory ProductListClass({
    @JsonKey(name: "list") required List<RespProductionItem> list,
  }) = _ProductListClass;

  factory ProductListClass.fromJson(Map<String, dynamic> json) => _$ProductListClassFromJson(json);
}

///resp.ProductionItem
@freezed
class RespProductionItem with _$RespProductionItem {
  const factory RespProductionItem({
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "finished_time") required int finishedTime,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "product_attribute_names") required LocaleName productAttributeNames,
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespProductionItem;

  factory RespProductionItem.fromJson(Map<String, dynamic> json) => _$RespProductionItemFromJson(json);
}
