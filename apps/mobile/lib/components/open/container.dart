import 'package:flutter/material.dart';
import 'package:mobile/api/buffet/buffet_api.dart';
import 'package:mobile/components/open/controllers/container.dart';
import 'package:mobile/components/open/views/main.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';

class DeskOpenContainerView extends StatelessWidget {
  const DeskOpenContainerView({
    super.key,
    required this.deskUuid,
    required this.deskNo,
    this.isBuffetOrNot = false,
    this.buffetList = const [],
    this.isOpenDefaultPeopleNum = false,
    this.defaultPeopleNum = 0,
  });

  final int deskUuid;
  final String deskNo;
  final bool isBuffetOrNot;
  final List<Buffet> buffetList;
  final bool isOpenDefaultPeopleNum;
  final int defaultPeopleNum;

  @override
  Widget build(BuildContext context) {
    return DeskOpenView(
      deskUuid: deskUuid,
      deskNo: deskNo,
      onConfirm: DeskOpenContainerController.onConfirm,
      onCancel: DeskOpenContainerController.onCancel,
      isShowIsBuffetOrNotHeader: isBuffetOrNot,
      requestBuffetList: BuffetAPI().getBuffetList,
      isBuffetOrNot: isBuffetOrNot,
      buffetList: buffetList,
      isOpenDefaultPeopleNum: isOpenDefaultPeopleNum,
      defaultPeopleNum: defaultPeopleNum,
    );
  }
}
