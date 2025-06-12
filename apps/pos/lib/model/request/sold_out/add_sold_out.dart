import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_sold_out.freezed.dart';
part 'add_sold_out.g.dart';

@freezed
class RequestAddSoldOut with _$RequestAddSoldOut {
  const factory RequestAddSoldOut({
    // 设置售罄数据
    @JsonKey(name: "sold_out_data")
    required List<RequestAddSoldOutItem> soldOutData,
  }) = _RequestAddSoldOut;

  factory RequestAddSoldOut.fromJson(Map<String, dynamic> json) =>
      _$RequestAddSoldOutFromJson(json);
}

@freezed
class RequestAddSoldOutItem with _$RequestAddSoldOutItem {
  const factory RequestAddSoldOutItem({
    // 是否售罄：true-是；false-否
    @JsonKey(name: "is_sold_out") required bool isSoldOut,
    // 商品规格Uuid
    @JsonKey(name: "product_bom_uuid") required int productBomUuid,
  }) = _RequestAddSoldOutItem;

  factory RequestAddSoldOutItem.fromJson(Map<String, dynamic> json) =>
      _$RequestAddSoldOutItemFromJson(json);
}
