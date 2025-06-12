// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberDiscountImpl _$$MemberDiscountImplFromJson(Map<String, dynamic> json) =>
    _$MemberDiscountImpl(
      discountedPrice: SafetyNumber.fromJson(json['discounted_price']),
      hasPassword: json['has_password'] as bool,
      member: Member.fromJson(json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberDiscountImplToJson(
        _$MemberDiscountImpl instance) =>
    <String, dynamic>{
      'discounted_price': instance.discountedPrice,
      'has_password': instance.hasPassword,
      'member': instance.member,
    };
