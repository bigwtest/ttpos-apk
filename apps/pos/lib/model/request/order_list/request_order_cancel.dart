import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_cancel.freezed.dart';
part 'request_order_cancel.g.dart';

///RequestOrderForMeals 登录表单
@unfreezed
class RequestOrderCancel with _$RequestOrderCancel {
  factory RequestOrderCancel({
    @JsonKey(name: "cancel_reason") String? cancelReason,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
  }) = _RequestOrderCancel;

  factory RequestOrderCancel.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderCancelFromJson(json);
}
