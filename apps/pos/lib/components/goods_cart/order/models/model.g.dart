// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsCartEditProductsImpl _$$GoodsCartEditProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsCartEditProductsImpl(
      uuid: (json['uuid'] as num).toInt(),
      num: (json['num'] as num).toInt(),
      isChecked: json['is_checked'] as bool,
    );

Map<String, dynamic> _$$GoodsCartEditProductsImplToJson(
        _$GoodsCartEditProductsImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'num': instance.num,
      'is_checked': instance.isChecked,
    };
