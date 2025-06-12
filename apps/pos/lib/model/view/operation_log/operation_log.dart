import 'package:pos/model/response/order_list_details/resp_order_operation_log.dart';

class OperationLogView {
  const OperationLogView({
    this.action,
    this.time,
    this.remark,
    this.saleBillUuid,
    this.saleOrderUuid,
    this.source,
    this.uuid,
    this.payType,
    this.refundType,
  });
  final String? action;
  final int? time;
  final String? remark;
  final int? saleBillUuid;
  final int? saleOrderUuid;
  final String? source;
  final int? uuid;
  final List<RespOrderOperationLogPaymentMethod>? payType;
  final int? refundType;
}
