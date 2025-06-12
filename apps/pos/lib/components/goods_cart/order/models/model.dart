// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class GoodsCartEditProducts with _$GoodsCartEditProducts {
  factory GoodsCartEditProducts({
    // 商品ID
    @JsonKey(name: 'uuid') required int uuid,
    // 商品数量
    @JsonKey(name: 'num') required int num,
    // 
    @JsonKey(name: 'is_checked') required bool isChecked,
  }) = _GoodsCartEditProducts;

  factory GoodsCartEditProducts.fromJson(Map<String, dynamic> json) =>
      _$GoodsCartEditProductsFromJson(json);
}
