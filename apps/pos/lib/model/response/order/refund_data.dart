import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_data.freezed.dart';
part 'refund_data.g.dart';

@freezed
class RefundData with _$RefundData {
  factory RefundData({
    @JsonKey(name: "is_open_cash_box") bool? isOpenCashBox,
  }) = _RefundData;

  factory RefundData.fromJson(Map<String, dynamic> json) => _$RefundDataFromJson(json);
}
