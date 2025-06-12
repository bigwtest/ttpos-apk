import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/buffet/action/action.dart';
import 'package:ttpos_ui/components/desks/views/open/buffet/list.dart';

class DeskOpenDialogContentBuffet extends StatelessWidget {
  final String tag;
  final Future<bool> Function(DeskOpenModel openModel) onConfirm;
  final bool isShowRemark;
  final bool isBuffetListSelectable;

  const DeskOpenDialogContentBuffet({
    super.key,
    required this.tag,
    required this.onConfirm,
    required this.isBuffetListSelectable,
    this.isShowRemark = true,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Container(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 16.0,
            children: [
              Expanded(
                flex: 1,
                child: DeskOpenDialogContentBuffetList(
                  tag: tag,
                  isBuffetListSelectable: isBuffetListSelectable,
                ),
              ),
              Expanded(
                flex: 1,
                child: DeskOpenDialogContentBuffetAction(
                  tag: tag,
                  onConfirm: onConfirm,
                  isShowRemark: isShowRemark,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
