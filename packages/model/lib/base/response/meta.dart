import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class BaseListMeta with _$BaseListMeta {
  const factory BaseListMeta({
    required int total,
    @JsonKey(name: 'page_no') required int pageNo,
    @JsonKey(name: 'page_size') required int pageSize,
  }) = _BaseListMeta;

  factory BaseListMeta.fromJson(Map<String, dynamic> json) =>
      _$BaseListMetaFromJson(json);
}

extension BaseListMetaExtension on BaseListMeta {
  bool get hasMore => total > pageNo * pageSize;
  int get totalPages => (total / pageSize).ceil();
}
