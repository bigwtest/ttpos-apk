import 'package:flutter/widgets.dart';

class GoodsDetailModel {
  final int flavorUuid; // 规格ID
  final List<int> attributeUuid; // 属性ID
  final List<int> sauceUuid; // 加料ID
  int mustPlanUuid; // 必点方案ID

  GoodsDetailModel({
    required this.flavorUuid,
    this.attributeUuid = const [],
    this.sauceUuid = const [],
    this.mustPlanUuid = 0,
  });

  factory GoodsDetailModel.fromJson(Map<String, dynamic> json) {
    return GoodsDetailModel(
      flavorUuid: json['attribute_uuid'],
      attributeUuid: json['flavor_uuid'],
      sauceUuid: json['sauce_uuid'],
      mustPlanUuid: json['must_plan_uuid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'attribute_uuid': flavorUuid,
      'flavor_uuid': attributeUuid,
      'sauce_uuid': sauceUuid,
      'must_plan_uuid': mustPlanUuid,
    };
  }
}

class ParabolaAnimatorModel {
  final BuildContext? context; // 内容
  final Offset? startPos; // 开始

  ParabolaAnimatorModel({
    this.context,
    this.startPos,
  });

  factory ParabolaAnimatorModel.fromJson(Map<String, dynamic> json) {
    return ParabolaAnimatorModel(
      context: json['context'],
      startPos: json['startPos'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'context': context,
      'startPos': startPos,
    };
  }
}
