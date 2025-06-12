// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtraImpl _$$ExtraImplFromJson(Map<String, dynamic> json) => _$ExtraImpl(
      isCellCancel: json['is_cell_cancel'] as bool,
      isCellDelete: json['is_cell_delete'] as bool,
      isCellInvoice: json['is_cell_invoice'] as bool,
      isCellPrint: json['is_cell_print'] as bool,
      isCellRefund: json['is_cell_refund'] as bool,
      isCellReverseSettle: json['is_cell_reverse_settle'] as bool,
    );

Map<String, dynamic> _$$ExtraImplToJson(_$ExtraImpl instance) =>
    <String, dynamic>{
      'is_cell_cancel': instance.isCellCancel,
      'is_cell_delete': instance.isCellDelete,
      'is_cell_invoice': instance.isCellInvoice,
      'is_cell_print': instance.isCellPrint,
      'is_cell_refund': instance.isCellRefund,
      'is_cell_reverse_settle': instance.isCellReverseSettle,
    };
