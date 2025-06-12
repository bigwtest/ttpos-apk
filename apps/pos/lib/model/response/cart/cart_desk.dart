// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_desk.freezed.dart';
part 'cart_desk.g.dart';

@freezed
class ResponseCartDesk with _$ResponseCartDesk {
  factory ResponseCartDesk({
    // 桌台号
    @JsonKey(name: 'desk_no') required String deskNo,
    // 就餐人数
    @JsonKey(name: 'meal_num') required int mealNum,
    // 开台时间
    @JsonKey(name: 'start_time') required int startTime,
    // 就餐时长
    @JsonKey(name: 'duration') required int duration,
    // 桌台ID
    @JsonKey(name: 'uuid') required int uuid,
  }) = _ResponseCartDesk;

  factory ResponseCartDesk.fromJson(Map<String, dynamic> json) =>
      _$ResponseCartDeskFromJson(json);
}
