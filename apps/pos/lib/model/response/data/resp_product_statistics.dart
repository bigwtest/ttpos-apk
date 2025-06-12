import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_product_statistics.freezed.dart';
part 'resp_product_statistics.g.dart';

@freezed
class RespProductStatistics with _$RespProductStatistics {
  factory RespProductStatistics({
    @JsonKey(name: "products") required List<BusinessDataRespProduct> products,
  }) = _RespProductStatistics;

  factory RespProductStatistics.fromJson(Map<String, dynamic> json) => _$RespProductStatisticsFromJson(json);
}

///business_data_resp.Product
@freezed
class BusinessDataRespProduct with _$BusinessDataRespProduct {
  const factory BusinessDataRespProduct({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "sales_num") required int salesNum,
    @JsonKey(name: "subtotal") required double subtotal,
  }) = _BusinessDataRespProduct;

  factory BusinessDataRespProduct.fromJson(Map<String, dynamic> json) => _$BusinessDataRespProductFromJson(json);
}
