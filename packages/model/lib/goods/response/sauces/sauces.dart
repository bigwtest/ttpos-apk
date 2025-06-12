import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'sauces.freezed.dart';
part 'sauces.g.dart';

// 商品小料
@unfreezed
class GoodsSauces with _$GoodsSauces {
  factory GoodsSauces({
    // 是否默认选中
    @JsonKey(name: "is_default_selected") required bool isDefaultSelected,
    // 商品小料名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 商品小料价格
    @JsonKey(name: "price") required SafetyNumber price,
    // 商品小料UUID
    @JsonKey(name: "uuid") required int uuid,
    // 商品库存数量
    @JsonKey(name: "stock_num") required int stockNum,
  }) = _GoodsSauces;

  factory GoodsSauces.fromJson(Map<String, dynamic> json) => _$GoodsSaucesFromJson(json);
}

@freezed
class GoodsSaucesList with _$GoodsSaucesList {
  const factory GoodsSaucesList({
    // 是否必选小料
    @JsonKey(name: "is_must") required bool isMust,
    // 小料列表
    @JsonKey(name: "list") required List<GoodsSauces> list,
    // 小料最大可选数量
    @JsonKey(name: "max_select") required int maxSelect,
  }) = _GoodsSaucesList;

  factory GoodsSaucesList.fromJson(Map<String, dynamic> json) => _$GoodsSaucesListFromJson(json);
}
