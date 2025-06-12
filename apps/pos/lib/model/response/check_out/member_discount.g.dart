// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMemberDiscountImpl _$$ResponseMemberDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMemberDiscountImpl(
      discountedPrice: (json['discounted_price'] as num).toDouble(),
      hasPassword: json['has_password'] as bool,
      member:
          ResponseMemberInfo.fromJson(json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseMemberDiscountImplToJson(
        _$ResponseMemberDiscountImpl instance) =>
    <String, dynamic>{
      'discounted_price': instance.discountedPrice,
      'has_password': instance.hasPassword,
      'member': instance.member,
    };
