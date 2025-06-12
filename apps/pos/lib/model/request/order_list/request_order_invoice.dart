import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_invoice.freezed.dart';
part 'request_order_invoice.g.dart';

@freezed
class RequestOrderInvoice with _$RequestOrderInvoice {
  factory RequestOrderInvoice({
    @JsonKey(name: "company_addr") String? companyAddr,
    @JsonKey(name: "company_name") String? companyName,
    @JsonKey(name: "company_phone") String? companyPhone,
    @JsonKey(name: "company_tax_number") String? companyTaxNumber,
    @JsonKey(name: "print_lang") String? printLang,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestOrderInvoicePrint;

  factory RequestOrderInvoice.fromJson(Map<String, dynamic> json) => _$RequestOrderInvoiceFromJson(json);
}
