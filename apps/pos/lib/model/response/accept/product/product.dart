import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class AcceptProduct with _$AcceptProduct {
  const factory AcceptProduct({
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "total_price") required double totalPrice,
  }) = _AcceptProduct;

  factory AcceptProduct.fromJson(Map<String, dynamic> json) => _$AcceptProductFromJson(json);
}
