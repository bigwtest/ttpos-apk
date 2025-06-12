import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/accept/accept_menu_item.dart';
import 'package:kds/components/accept/accept_menu_title.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';

class AcceptMenu extends StatelessWidget {
  const AcceptMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final acceptListController = Get.find<AcceptListController>();
    return Obx(
      () => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: acceptListController.productionOrderList.list.isNotEmpty
            ? LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  // 假设每行显示3个子项
                  int itemsPerRow = acceptListController.pageSize;
                  // 每个子项的宽度
                  double itemWidth =
                      (constraints.maxWidth - 16 * (itemsPerRow - 1)) / itemsPerRow; // 48是因为左右的总padding是16+16+16
                  double itemHeight = constraints.maxHeight;
                  return Obx(
                    () => Wrap(
                      spacing: 16.0, // 交叉轴方向的间距
                      children: [
                        if (acceptListController.isLoading)
                          Container(
                            width: double.infinity,
                            height: itemHeight,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(child: CircularProgressIndicator()),
                          )
                        else
                          for (var item in acceptListController.productionOrderList.list)
                            Container(
                              width: itemWidth,
                              height: itemHeight,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  AcceptMenuTitle(
                                    title: item.localeName.translate,
                                    type: acceptListController.type,
                                    diningMethod: item.diningMethod,
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: item.productList.list.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Obx(
                                          () => AcceptMenuItem(
                                            type: acceptListController.type,
                                            nowTime: acceptListController.nowTime,
                                            item: item.productList.list[index],
                                            onDoubleTap: () {
                                              acceptListController.productionFinish(item.productList.list[index].uuid);
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ],
                    ),
                  );
                },
              )
            : TtEmpty(
                text: '当前无下单商品'.tr,
                imgWidth: 140.0,
                fontSize: 18.0,
              ),
      ),
    );
  }
}
