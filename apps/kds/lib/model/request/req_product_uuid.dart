import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_product_uuid.freezed.dart';
part 'req_product_uuid.g.dart';

@freezed
class ReqProductUuid with _$ReqProductUuid {
  factory ReqProductUuid({
    @JsonKey(name: "product_uuid") required int productUuid,
  }) = _ReqProductUuid;

  factory ReqProductUuid.fromJson(Map<String, dynamic> json) => _$ReqProductUuidFromJson(json);
}
