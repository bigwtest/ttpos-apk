// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseAcceptDetailImpl _$$ResponseAcceptDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseAcceptDetailImpl(
      acceptedProductList: BaseList<AcceptProduct>.fromJson(
          json['accepted_product'] as Map<String, dynamic>,
          (value) => AcceptProduct.fromJson(value as Map<String, dynamic>)),
      h5OrderDetail: AcceptOrderDetail.fromJson(
          json['h5_order_detail'] as Map<String, dynamic>),
      newProductList: BaseList<AcceptProduct>.fromJson(
          json['new_product'] as Map<String, dynamic>,
          (value) => AcceptProduct.fromJson(value as Map<String, dynamic>)),
      operationLogList: BaseList<AcceptOperationLog>.fromJson(
          json['operation'] as Map<String, dynamic>,
          (value) =>
              AcceptOperationLog.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$ResponseAcceptDetailImplToJson(
        _$ResponseAcceptDetailImpl instance) =>
    <String, dynamic>{
      'accepted_product': instance.acceptedProductList,
      'h5_order_detail': instance.h5OrderDetail,
      'new_product': instance.newProductList,
      'operation': instance.operationLogList,
    };
