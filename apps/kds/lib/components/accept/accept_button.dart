import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/accept/accept_button_history.dart';
import 'package:kds/components/accept/accept_button_pages.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';

class AcceptButton extends StatelessWidget {
  AcceptButton({super.key});
  final AcceptListController acceptListController = Get.find<AcceptListController>();
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: AcceptButtonHistory(),
        ),
        SizedBox(width: 24.0),
        Obx(
          () => AcceptButtonPages(
            pageNo: acceptListController.pageNo,
            lastPageNo: acceptListController.lastPageNo,
            onPrevious: () {
              if (acceptListController.isLoading) return;
              acceptListController.pageNo--;
              acceptListController.getAcceptList();
            },
            onNext: () {
              if (acceptListController.isLoading) return;
              acceptListController.pageNo++;
              acceptListController.getAcceptList();
            },
          ),
        ),
      ],
    );
  }
}
