import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'flavors.freezed.dart';
part 'flavors.g.dart';

// 商品规格
@unfreezed
class GoodsFlavors with _$GoodsFlavors {
  factory GoodsFlavors({
    // 商品规格名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 商品规格价格
    @JsonKey(name: "price") required SafetyNumber price,
    // 商品规格UUID
    @JsonKey(name: "uuid") required int uuid,
    // 商品条形码
    @JsonKey(name: "barcode") String? barcode,
    // 商品库存数量
    @JsonKey(name: "stock_num") required int stockNum,
  }) = _GoodsFlavors;

  factory GoodsFlavors.fromJson(Map<String, dynamic> json) => _$GoodsFlavorsFromJson(json);
}
