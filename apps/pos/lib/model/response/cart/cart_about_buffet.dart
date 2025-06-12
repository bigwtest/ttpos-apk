// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_about_buffet.freezed.dart';
part 'cart_about_buffet.g.dart';


@freezed
class ResponseCartAboutBuffet with _$ResponseCartAboutBuffet {
  factory ResponseCartAboutBuffet({
    // 是否是自助餐顾客
    @JsonKey(name: 'is_customer') required bool isCustomer,
    // 是否是加钟
    @JsonKey(name: 'is_delay') required bool isDelay,
    //  自助餐顾客类型uuid
    @JsonKey(name: 'customer_type_uuid') required int customerTypeUuid,
    // 自助餐Uuid
    @JsonKey(name: 'buffet_uuid') required int buffetUuid,
  }) = _ResponseCartAboutBuffet;

  factory ResponseCartAboutBuffet.fromJson(Map<String, dynamic> json) =>
      _$ResponseCartAboutBuffetFromJson(json);
}