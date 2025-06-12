import 'package:freezed_annotation/freezed_annotation.dart';

part 'adjust_buffet.freezed.dart';
part 'adjust_buffet.g.dart';

// 调整自助餐请求模型
@freezed
class RequestOrderAdjustBuffet with _$RequestOrderAdjustBuffet {
  factory RequestOrderAdjustBuffet({
    // 自助餐客户类型列表
    @JsonKey(name: 'buffet_customer_types') required List<RequestBuffetCustomerType> buffetCustomerTypes,
    
    // 销售单UUID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
    
    // 自助餐UUID列表
    @JsonKey(name: 'buffet_uuids') required List<int> buffetUuids,
  }) = _RequestOrderAdjustBuffet;

  factory RequestOrderAdjustBuffet.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderAdjustBuffetFromJson(json);
}

// 自助餐客户类型模型
@freezed
class RequestBuffetCustomerType with _$RequestBuffetCustomerType {
  factory RequestBuffetCustomerType({
    required int uuid,
    @JsonKey(name: 'meal_num') required int mealNum,
  }) = _RequestBuffetCustomerType;

  factory RequestBuffetCustomerType.fromJson(Map<String, dynamic> json) =>
      _$RequestBuffetCustomerTypeFromJson(json);
}