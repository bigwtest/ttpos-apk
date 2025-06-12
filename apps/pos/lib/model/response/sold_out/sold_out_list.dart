import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'sold_out_list.freezed.dart';
part 'sold_out_list.g.dart';

@freezed
class ResponseSoldOutList with _$ResponseSoldOutList {
  const factory ResponseSoldOutList({
    // 商品规格名称
    @JsonKey(name: "locale_product_bom_name") required LocaleName localeProductBomName,
    // 商品名称
    @JsonKey(name: "locale_product_name") required LocaleName localeProductName,
    // 商品规格Uuid
    @JsonKey(name: "product_bom_uuid") required int productBomUuid,
  }) = _ResponseSoldOutList;

  factory ResponseSoldOutList.fromJson(Map<String, dynamic> json) => _$ResponseSoldOutListFromJson(json);
}
