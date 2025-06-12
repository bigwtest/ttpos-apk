import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_sold_out.freezed.dart';
part 'cancel_sold_out.g.dart';

@freezed
class RequestCancelSoldOut with _$RequestCancelSoldOut {
  const factory RequestCancelSoldOut({
    // 商品规格Uuid
    @JsonKey(name: "product_bom_uuid") required int productBomUuid,
  }) = _RequestCancelSoldOut;

  factory RequestCancelSoldOut.fromJson(Map<String, dynamic> json) =>
      _$RequestCancelSoldOutFromJson(json);
}
