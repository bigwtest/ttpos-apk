// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_item.freezed.dart';
part 'carousel_item.g.dart';

@freezed
class ResponseCarouselItem with _$ResponseCarouselItem {
  factory ResponseCarouselItem({
    @JsonKey(name: "file_path") required String filePath,
    @JsonKey(name: "real_name") required String realName,
    @JsonKey(name: "sort") required String sort,
    @JsonKey(name: "type") required String type,
  }) = _ResponseCarouselItem;

  factory ResponseCarouselItem.fromJson(Map<String, dynamic> json) => _$ResponseCarouselItemFromJson(json);
}
