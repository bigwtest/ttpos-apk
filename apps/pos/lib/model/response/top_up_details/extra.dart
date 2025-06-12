import 'package:freezed_annotation/freezed_annotation.dart';

part 'extra.freezed.dart';
part 'extra.g.dart';

@unfreezed
class Extra with _$Extra {
  factory Extra({
    @JsonKey(name: "is_cell_cancel") required bool isCellCancel,
    @JsonKey(name: "is_cell_refund") required bool isCellRefund,
    @JsonKey(name: "is_cell_reverse_settle") required bool isCellReverseSettle,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}
