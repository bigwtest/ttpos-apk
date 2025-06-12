// Flutter imports:
import 'package:flutter/material.dart';
import 'package:pos/model/view/accept/accept_log_item.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptDetailsInfoLine extends StatelessWidget {
  const AcceptDetailsInfoLine({
    super.key,
    required this.logItem,
    this.isActive = false,
  });
  final AcceptLogItemViewModel logItem;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            top: 0,
            child: SizedBox(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Container(
                    width: 2,
                    height: 4,
                    color: !isActive ? CustomTheme.secondaryColor.shade700 : Colors.transparent,
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: isActive ? CustomTheme.primaryColor.shade600 : CustomTheme.greyColor.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 2,
                      color: CustomTheme.secondaryColor.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${logItem.userName}${logItem.userEmail.isNotEmpty ? '(${logItem.userEmail})' : ''}',
                            style: TextStyle(
                              color: CustomTheme.secondaryColor.shade200,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            logItem.source,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        logItem.createTime,
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    logItem.description,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
