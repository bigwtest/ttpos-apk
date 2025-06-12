import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'resp_production.freezed.dart';
part 'resp_production.g.dart';

@freezed
class ResponseProduction with _$ResponseProduction {
  factory ResponseProduction({
    @JsonKey(name: "finished_list") required FinishedListClass finishedList,
    @JsonKey(name: "list") required List<RespProductionGroup> list,
    @JsonKey(name: "meta") required Meta meta,
    @JsonKey(name: "send_kitchen_num") required int sendKitchenNum,
  }) = _ResponseProductionList;

  factory ResponseProduction.fromJson(Map<String, dynamic> json) => _$ResponseProductionFromJson(json);
}

///最近三个上菜历史
///
///resp.ProductionList
///
///送厨商品列表
@freezed
class FinishedListClass with _$FinishedListClass {
  const factory FinishedListClass({
    @JsonKey(name: "list") required List<RespProductionItem> list,
  }) = _FinishedListClass;

  factory FinishedListClass.fromJson(Map<String, dynamic> json) => _$FinishedListClassFromJson(json);
}

///resp.ProductionItem
@freezed
class RespProductionItem with _$RespProductionItem {
  const factory RespProductionItem({
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "product_attribute_names") required LocaleName productAttributeNames,
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "remark") required String remark,
    @JsonKey(name: "dining_method") required int diningMethod,
  }) = _RespProductionItem;

  factory RespProductionItem.fromJson(Map<String, dynamic> json) => _$RespProductionItemFromJson(json);
}

///resp.ProductionGroup
@freezed
class RespProductionGroup with _$RespProductionGroup {
  const factory RespProductionGroup({
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "product_list") required FinishedListClass productList,
    @JsonKey(name: "dining_method") required int diningMethod,
  }) = _RespProductionGroup;

  factory RespProductionGroup.fromJson(Map<String, dynamic> json) => _$RespProductionGroupFromJson(json);
}

///分页信息
///
///dto.PageResponse
@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "total") required int total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
