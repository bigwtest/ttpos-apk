import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_desk.freezed.dart';
part 'cancel_desk.g.dart';

@freezed
class RequestCancelDesk with _$RequestCancelDesk {
  factory RequestCancelDesk({
    // 销售账单UUID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "cancel_reason") required String cancelReason,
    @JsonKey(name: "password") String? password,
  }) = _RequestCancelDesk;

  factory RequestCancelDesk.fromJson(Map<String, dynamic> json) => _$RequestCancelDeskFromJson(json);
}
