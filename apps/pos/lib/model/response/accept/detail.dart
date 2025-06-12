import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/accept/log/log.dart';
import 'package:pos/model/response/accept/order/order_detail.dart';
import 'package:pos/model/response/accept/product/product.dart';
import 'package:ttpos_model/base/response/list.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed
class ResponseAcceptDetail with _$ResponseAcceptDetail {
  const factory ResponseAcceptDetail({
    @JsonKey(name: "accepted_product") required BaseList<AcceptProduct> acceptedProductList,
    @JsonKey(name: "h5_order_detail") required AcceptOrderDetail h5OrderDetail,
    @JsonKey(name: "new_product") required BaseList<AcceptProduct> newProductList,
    @JsonKey(name: "operation") required BaseList<AcceptOperationLog> operationLogList,
  }) = _ResponseAcceptDetail;

  factory ResponseAcceptDetail.fromJson(Map<String, dynamic> json) => _$ResponseAcceptDetailFromJson(json);
}
