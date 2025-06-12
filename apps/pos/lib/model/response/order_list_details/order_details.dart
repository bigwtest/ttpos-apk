import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/order_list_details/detail.dart';
import 'package:pos/model/response/order_list_details/extra.dart';
import 'package:pos/model/response/order_list_details/operation_log.dart';

part 'order_details.freezed.dart';
part 'order_details.g.dart';

@freezed
class ResponseOrderDetails with _$ResponseOrderDetails {
  factory ResponseOrderDetails({
    @JsonKey(name: "detail") required Detail detail,
    @JsonKey(name: "extra") required Extra extra,
    @JsonKey(name: "operation_log") required OperationLog operationLog,
  }) = _ResponseOrderDetails;

  factory ResponseOrderDetails.fromJson(Map<String, dynamic> json) => _$ResponseOrderDetailsFromJson(json);
}
