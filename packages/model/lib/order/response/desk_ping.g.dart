// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desk_ping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDeskPingImpl _$$ResponseDeskPingImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDeskPingImpl(
      buffet: ResponseBuffet.fromJson(json['buffet'] as Map<String, dynamic>),
      deskInfo: Desk.fromJson(json['desk_info'] as Map<String, dynamic>),
      mustPlans: BaseList<MustGoodsItem>.fromJson(
          json['must_plans'] as Map<String, dynamic>,
          (value) => MustGoodsItem.fromJson(value as Map<String, dynamic>)),
      saleOrderList: (json['sale_order_list'] as List<dynamic>?)
          ?.map((e) => ResponseSaleOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      sentKitchen:
          SentKitchen.fromJson(json['sent_kitchen'] as Map<String, dynamic>),
      sentKitchenProducts: json['sent_kitchen_products'] == null
          ? null
          : BaseList<SentKitchenProduct>.fromJson(
              json['sent_kitchen_products'] as Map<String, dynamic>,
              (value) =>
                  SentKitchenProduct.fromJson(value as Map<String, dynamic>)),
      unsentKitchen: UnsentKitchen.fromJson(
          json['unsent_kitchen'] as Map<String, dynamic>),
      mustProducts: json['must_products'] == null
          ? null
          : BaseList<GoodsBuffet>.fromJson(
              json['must_products'] as Map<String, dynamic>,
              (value) => GoodsBuffet.fromJson(value as Map<String, dynamic>)),
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseDeskPingImplToJson(
        _$ResponseDeskPingImpl instance) =>
    <String, dynamic>{
      'buffet': instance.buffet,
      'desk_info': instance.deskInfo,
      'must_plans': instance.mustPlans,
      'sale_order_list': instance.saleOrderList,
      'sent_kitchen': instance.sentKitchen,
      'sent_kitchen_products': instance.sentKitchenProducts,
      'unsent_kitchen': instance.unsentKitchen,
      'must_products': instance.mustProducts,
      'update_time': instance.updateTime,
    };

_$SentKitchenProductImpl _$$SentKitchenProductImplFromJson(
        Map<String, dynamic> json) =>
    _$SentKitchenProductImpl(
      finishedNum: (json['finished_num'] as num).toInt(),
      productPackageUuid: (json['product_package_uuid'] as num).toInt(),
      sentKitchenProductNum: (json['sent_kitchen_product_num'] as num).toInt(),
    );

Map<String, dynamic> _$$SentKitchenProductImplToJson(
        _$SentKitchenProductImpl instance) =>
    <String, dynamic>{
      'finished_num': instance.finishedNum,
      'product_package_uuid': instance.productPackageUuid,
      'sent_kitchen_product_num': instance.sentKitchenProductNum,
    };

_$ResponseBuffetImpl _$$ResponseBuffetImplFromJson(Map<String, dynamic> json) =>
    _$ResponseBuffetImpl(
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      remainingSeconds: (json['remaining_seconds'] as num).toInt(),
      remainingOrderingTime: (json['remaining_ordering_time'] as num).toInt(),
      reminderOrderTime: (json['reminder_order_time'] as num).toInt(),
      isTabletH5TimeSet: json['is_tablet_h5_time_set'] as bool,
    );

Map<String, dynamic> _$$ResponseBuffetImplToJson(
        _$ResponseBuffetImpl instance) =>
    <String, dynamic>{
      'locale_name': instance.localeName,
      'remaining_seconds': instance.remainingSeconds,
      'remaining_ordering_time': instance.remainingOrderingTime,
      'reminder_order_time': instance.reminderOrderTime,
      'is_tablet_h5_time_set': instance.isTabletH5TimeSet,
    };

_$ResponseSaleOrderImpl _$$ResponseSaleOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseSaleOrderImpl(
      customDiscountRate: (json['custom_discount_rate'] as num).toDouble(),
      isDiscount: json['is_discount'] as bool,
      orderNo: json['order_no'] as String,
      productList: (json['product_list'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      productNum: (json['product_num'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
      zeroRule: (json['zero_rule'] as num).toInt(),
      amountInfo: json['amount_info'] == null
          ? null
          : SentKitchenAmountInfo.fromJson(
              json['amount_info'] as Map<String, dynamic>),
      autoDiscountMessage: json['auto_discount_message'] as String?,
    );

Map<String, dynamic> _$$ResponseSaleOrderImplToJson(
        _$ResponseSaleOrderImpl instance) =>
    <String, dynamic>{
      'custom_discount_rate': instance.customDiscountRate,
      'is_discount': instance.isDiscount,
      'order_no': instance.orderNo,
      'product_list': instance.productList,
      'product_num': instance.productNum,
      'status': instance.status,
      'uuid': instance.uuid,
      'zero_rule': instance.zeroRule,
      'amount_info': instance.amountInfo,
      'auto_discount_message': instance.autoDiscountMessage,
    };
