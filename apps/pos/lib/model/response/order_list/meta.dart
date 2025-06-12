import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

///app zh:用餐订单列表
@freezed
class Meta with _$Meta {
  factory Meta({
    @JsonKey(name: "cancel_num") required int cancelNum,
    @JsonKey(name: "complete_num") required int completeNum,
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "unpaid_num") required int unpaidNum,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
