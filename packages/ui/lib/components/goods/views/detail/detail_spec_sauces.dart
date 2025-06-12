import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/sauces/sauces.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item_btn.dart';

class DetailSpecSauces extends StatelessWidget {
  final bool isSelectAll; // 是否为编辑模式
  final List<GoodsSauces> saucesList;
  final List<int> selectListId; // 选择中的小料IDs
  final void Function(GoodsSauces)? onTap; // 小料点击
  final void Function()? onSelectAll; // 小料点击

  const DetailSpecSauces({
    super.key,
    this.isSelectAll = false,
    this.selectListId = const [],
    this.saucesList = const [],
    this.onTap,
    this.onSelectAll,
  });

  @override
  Widget build(BuildContext context) {
    return DetailSpecItem(
      title: '加料'.tr,
      isSelectAll: isSelectAll,
      onSelectAll: () {
        if (onSelectAll != null) {
          onSelectAll!();
        }
      },
      specItemList: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Wrap(
            spacing: 10.0, // 主轴方向的间距
            runSpacing: 10.0, // 交叉轴方向的间距
            children: List.generate(saucesList.length, (index) {
              return Obx(
                () => SizedBox(
                  child: DetailSpecItemBtn(
                    text: saucesList[index].localeName.translate,
                    price: saucesList[index].price,
                    isDisabled: saucesList[index].stockNum == 0,
                    type: selectListId.contains(saucesList[index].uuid)
                        ? ActionButtonType.primary
                        : ActionButtonType.normal, // 是否高亮
                    onTap: () {
                      if (onTap != null) {
                        onTap!(saucesList[index]);
                      }
                    },
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
