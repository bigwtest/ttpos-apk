import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/model/response/auth/models/h5.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/options/buffet.dart';
import 'package:ttpos_model/options/business.dart';
import 'package:ttpos_model/options/cloud.dart';
import 'package:ttpos_model/options/company.dart';
import 'package:ttpos_model/options/currency.dart';
import 'package:ttpos_model/options/kitchen.dart';

export 'package:ttpos_model/options/buffet.dart';
export 'package:ttpos_model/options/business.dart';
export 'package:ttpos_model/options/company.dart';
export 'package:ttpos_model/options/currency.dart';

part 'base_info.freezed.dart';
part 'base_info.g.dart';

@freezed
class BaseInfo with _$BaseInfo {
  const factory BaseInfo({
    /// NOTE: 基础数据
    @JsonKey(name: "buffet") required Buffet buffet,
    @JsonKey(name: "business") required Business business,
    @JsonKey(name: "cloud") required Cloud cloud,
    @JsonKey(name: "company") required Company company,
    @JsonKey(name: "currency") required Currency currency,

    /// NOTE: 独占数据
    @JsonKey(name: "h5") required H5 h5,
    @JsonKey(name: "desk") required Desk desk,
    @JsonKey(name: "kitchen") required Kitchen kitchen,
    @JsonKey(name: "is_open_h5_order") required int isOpenH5Order,
  }) = _BaseInfo;

  factory BaseInfo.fromJson(Map<String, dynamic> json) => _$BaseInfoFromJson(json);
}
