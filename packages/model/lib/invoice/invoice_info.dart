import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_info.freezed.dart';
part 'invoice_info.g.dart';

@unfreezed
class InvoiceInfo with _$InvoiceInfo {
  factory InvoiceInfo({
    required String companyAddress,
    required String companyName,
    required String companyTaxNumber,
    String? companyPhone,
    String? printLang,
  }) = _InvoiceInfo;

  factory InvoiceInfo.fromJson(Map<String, dynamic> json) => _$InvoiceInfoFromJson(json);

  static InvoiceInfo empty() => InvoiceInfo(
        companyAddress: '',
        companyName: '',
        companyTaxNumber: '',
        companyPhone: '',
        printLang: '',
      );
}
