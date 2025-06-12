// To parse this JSON data, do
//
//     final abnormalPrintItem = abnormalPrintItemFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'abnormal_print_item.freezed.dart';
part 'abnormal_print_item.g.dart';

///resp.AbnormalPrintItem
@freezed
class AbnormalPrintItem with _$AbnormalPrintItem {
  const factory AbnormalPrintItem({
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "desk_no") required String deskNo,
    @JsonKey(name: "printer_name") required String printerName,
    @JsonKey(name: "printer_uuid") required int printerUuid,
    @JsonKey(name: "reason") String? reason,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "uuid") required int uuid,
  }) = _AbnormalPrintItem;

  factory AbnormalPrintItem.fromJson(Map<String, dynamic> json) => _$AbnormalPrintItemFromJson(json);
}
