import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_band.freezed.dart';
part 'req_band.g.dart';

@freezed
class ReqBand with _$ReqBand {
  factory ReqBand({
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "product_printer_uuid") int? productPrinterUuid,
    @JsonKey(name: "remark") String? remark,
  }) = _ReqBand;

  factory ReqBand.fromJson(Map<String, dynamic> json) => _$ReqBandFromJson(json);
}
