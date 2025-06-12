import 'package:freezed_annotation/freezed_annotation.dart';

part 'buffet.freezed.dart';
part 'buffet.g.dart';

///自助餐设置
///
///setting.Buffet
@freezed
class Buffet with _$Buffet {
  const factory Buffet({
    @JsonKey(name: "add_clock") required List<SettingAddClockItem> addClock,
    @JsonKey(name: "is_add_clock") required String isAddClock,
    @JsonKey(name: "is_buffet_discount") required String isBuffetDiscount,
    @JsonKey(name: "is_buy_continue") required String isBuyContinue,
    @JsonKey(name: "is_open") required String isOpen,
    @JsonKey(name: "is_remain_continue") required String isRemainContinue,
    @JsonKey(name: "remain_continue_notice_time") required String remainContinueNoticeTime,
    @JsonKey(name: "remain_continue_time") required String remainContinueTime,
    // 平板结束时间提醒（单位：秒）
    @JsonKey(name: "tablet_end_time") required int tabletEndTime,
  }) = _Buffet;

  factory Buffet.fromJson(Map<String, dynamic> json) => _$BuffetFromJson(json);

  static Buffet empty() => Buffet(
        addClock: [],
        isAddClock: '0',
        isBuffetDiscount: '0',
        isBuyContinue: '0',
        isOpen: '0',
        isRemainContinue: '0',
        remainContinueNoticeTime: '',
        remainContinueTime: '',
        tabletEndTime: 0,
      );
}

///setting.AddClockItem
@freezed
class SettingAddClockItem with _$SettingAddClockItem {
  const factory SettingAddClockItem({
    @JsonKey(name: "action") required String action,
    @JsonKey(name: "delay_time") required String delayTime,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "price") required String price,
  }) = _SettingAddClockItem;

  factory SettingAddClockItem.fromJson(Map<String, dynamic> json) => _$SettingAddClockItemFromJson(json);
}
