import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

///req.OrderPrintInvoiceReq
@unfreezed
class InvoicePrintRequest with _$InvoicePrintRequest {
  factory InvoicePrintRequest({
    @JsonKey(name: "company_addr") String? companyAddr,
    @JsonKey(name: "company_name") String? companyName,
    @JsonKey(name: "company_phone") String? companyPhone,
    @JsonKey(name: "company_tax_number") String? companyTaxNumber,
    @JsonKey(name: "print_lang") String? printLang,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _InvoicePrintRequest;

  factory InvoicePrintRequest.fromJson(Map<String, dynamic> json) => _$InvoicePrintRequestFromJson(json);
}
