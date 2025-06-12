import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/controllers/base/main_controller.dart';
import 'package:kds/model/response/resp_production.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptMenuItem extends StatelessWidget {
  final RespProductionItem item;
  final int type;
  final void Function() onDoubleTap;
  final int nowTime;

  AcceptMenuItem({
    super.key,
    required this.item,
    required this.type,
    required this.onDoubleTap,
    required this.nowTime,
  });
  final baseInfoController = Get.find<BaseInfoController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onDoubleTap: onDoubleTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: CustomTheme.secondaryColor.shade700,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          type == 2 ? '[${item.serialNo}]${item.localeName.translate}' : item.localeName.translate,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: CustomTheme.secondaryColor,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item.productAttributeNames.translate,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: CustomTheme.secondaryColor.shade200,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '/${item.num}',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: CustomTheme.secondaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${_calculateTimeDifference(item.createTime)}min',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: _calculateTimeDifference(item.createTime) < 10
                                ? CustomTheme.secondaryColor
                                : _calculateTimeDifference(item.createTime) >= 10 &&
                                        _calculateTimeDifference(item.createTime) < 20
                                    ? baseInfoController.waitColorLeft10minColor
                                    : baseInfoController.waitColorLeft20minColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (type == 2 && item.diningMethod == 1) ...[
                          const SizedBox(height: 10),
                          Text(
                            '(${'打包'.tr})',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: CustomTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              if (item.remark.isNotEmpty) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    item.remark,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  /// 计算当前时间与创建时间的差值（分钟）
  int _calculateTimeDifference(int createTime) {
    try {
      final DateTime createdAt = DateTime.fromMillisecondsSinceEpoch(createTime * 1000);
      //时间戳转为 DateTime
      final DateTime now = DateTime.fromMillisecondsSinceEpoch(nowTime * 1000);
      final Duration difference = now.difference(createdAt);
      return difference.inMinutes;
    } catch (e) {
      return 0;
    }
  }
}
