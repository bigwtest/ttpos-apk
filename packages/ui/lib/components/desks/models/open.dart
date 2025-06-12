class DeskOpenModel {
  final int? uuid;
  final bool isBuffet;
  final List<int> selectedBuffetUuids;
  final List<DeskOpenBuffetCustomerModel> buffetCustomers;
  final int notBuffetCustomerCount;
  final String remark;

  DeskOpenModel({
    this.uuid,
    required this.isBuffet,
    required this.selectedBuffetUuids,
    required this.buffetCustomers,
    required this.notBuffetCustomerCount,
    required this.remark,
  }) {
    // 验证逻辑
    if (isBuffet) {
      // 自助餐模式下，buffetCustomers不能为空且总人数必须大于0
      if (buffetCustomers.isEmpty) {
        throw ArgumentError('自助餐模式下，buffetCustomers不能为空');
      }

      final int totalBuffetCustomers = buffetCustomers.fold(0, (sum, customer) => sum + customer.count);

      if (totalBuffetCustomers <= 0) {
        throw ArgumentError('自助餐模式下，顾客总数必须大于0');
      }
    } else {
      // 非自助餐模式下，notBuffetCustomerCount必须大于0
      if (notBuffetCustomerCount <= 0) {
        throw ArgumentError('非自助餐模式下，顾客数量必须大于0');
      }
    }
  }

  // 获取总顾客数的便捷方法
  int get totalCustomerCount =>
      isBuffet ? buffetCustomers.fold(0, (sum, customer) => sum + customer.count) : notBuffetCustomerCount;

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'isBuffet': isBuffet,
      'selectedBuffetUuids': selectedBuffetUuids,
      'buffetCustomers': buffetCustomers.map((e) => e.toJson()).toList(),
      'notBuffetCustomerCount': notBuffetCustomerCount,
      'remark': remark,
    };
  }
}

class DeskOpenBuffetCustomerModel {
  final int uuid;
  final int count;

  DeskOpenBuffetCustomerModel({
    required this.uuid,
    required this.count,
  }) {
    // 确保count是正数
    if (count < 0) {
      throw ArgumentError('顾客数量必须大于0');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'count': count,
    };
  }
}

class DeskStorageModel {
  final int deskId;
  final int saleBillUuid;
  final int? saleOrderUuid;
  final int? h5OrderUuid;
  DeskStorageModel({
    required this.deskId,
    required this.saleBillUuid,
    this.saleOrderUuid = 0,
    this.h5OrderUuid = 0,
  });

  factory DeskStorageModel.fromJson(Map<String, dynamic> json) {
    return DeskStorageModel(
      deskId: json['deskId'],
      saleBillUuid: json['saleBillUuid'],
      saleOrderUuid: json['saleOrderUuid'],
      h5OrderUuid: json['h5OrderUuid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deskId': deskId,
      'saleBillUuid': saleBillUuid,
      'saleOrderUuid': saleOrderUuid,
      'h5OrderUuid': h5OrderUuid,
    };
  }
}
