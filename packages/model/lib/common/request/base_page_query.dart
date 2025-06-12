import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_page_query.freezed.dart';
part 'base_page_query.g.dart';

@unfreezed
class BasePageQuery with _$BasePageQuery {
  factory BasePageQuery({
    @JsonKey(name: "page_no") int? pageNo,
    @JsonKey(name: "page_size") int? pageSize,
  }) = _BasePageQuery;

  factory BasePageQuery.fromJson(Map<String, dynamic> json) =>
      _$BasePageQueryFromJson(json);
}
