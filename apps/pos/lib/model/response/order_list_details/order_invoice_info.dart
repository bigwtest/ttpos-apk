import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_invoice_info.freezed.dart';
part 'order_invoice_info.g.dart';

@unfreezed
class OrderInvoiceInfo with _$OrderInvoiceInfo {
  factory OrderInvoiceInfo({
    @JsonKey(name: "company_addr") required String companyAddr,
    @JsonKey(name: "company_name") required String companyName,
    @JsonKey(name: "company_phone") required String companyPhone,
    @JsonKey(name: "company_tax_number") required String companyTaxNumber,
  }) = _OrderInvoiceInfo;

  factory OrderInvoiceInfo.fromJson(Map<String, dynamic> json) => _$OrderInvoiceInfoFromJson(json);
}
