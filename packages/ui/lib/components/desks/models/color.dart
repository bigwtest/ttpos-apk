import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskColorModel {
  final Color bgColor;
  final Color borderColor;

  DeskColorModel({
    required this.bgColor,
    required this.borderColor,
  });
}

extension DeskColorExtension on Desk {
  DeskColorModel get palette {
    if (isWait) {
      return DeskColorModel(
        bgColor: Color(0x19E50028),
        borderColor: Color(0xFFFF6B00),
      );
    } else if (isLock) {
      return DeskColorModel(
        bgColor: CustomTheme.greyColor.shade100,
        borderColor: Color(0xFF1180FF),
      );
    } else if (isNotAvailable) {
      if (isBuffet) {
        return DeskColorModel(
          bgColor: CustomTheme.greyColor.shade100,
          borderColor: CustomTheme.errorColor,
        );
      } else {
        return DeskColorModel(
          bgColor: CustomTheme.greyColor.shade100,
          borderColor: CustomTheme.primaryColor,
        );
      }
    } else {
      return DeskColorModel(
        bgColor: CustomTheme.greyColor.shade100,
        borderColor: CustomTheme.greenColor,
      );
    }
  }

  String get label {
    if (isAvailable) {
      return '空闲中'.tr;
    }
    if (isWait) {
      return '待清台'.tr;
    }
    return remark;
  }
}
