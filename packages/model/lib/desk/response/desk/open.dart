import 'package:freezed_annotation/freezed_annotation.dart';

part 'open.freezed.dart';
part 'open.g.dart';

@freezed
class ResponseDeskOpen with _$ResponseDeskOpen {
  const factory ResponseDeskOpen({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _ResponseDeskOpen;

  factory ResponseDeskOpen.fromJson(Map<String, dynamic> json) => _$ResponseDeskOpenFromJson(json);
}
