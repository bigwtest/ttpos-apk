import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/flavors/flavors.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item_btn.dart';

class DetailSpecFlavors extends StatelessWidget {
  final bool isSelectAll; // 是否为编辑模式
  final bool isBuffet; // 是否自助餐商品
  final int selectId; // 选择中的规格ID
  final List<int> selectList; // 选择中的规格ID，编辑模式用到
  final List<GoodsFlavors> flavorsList;
  final void Function(GoodsFlavors)? onTap; // 规格点击
  final void Function()? onSelectAll; // 规格点击

  const DetailSpecFlavors({
    super.key,
    this.isSelectAll = false,
    this.isBuffet = false,
    this.selectId = 0,
    this.selectList = const [],
    this.flavorsList = const [],
    this.onTap,
    this.onSelectAll,
  });

  @override
  Widget build(BuildContext context) {
    return DetailSpecItem(
      title: '规格'.tr,
      isSelectAll: isSelectAll,
      isButtonAll: selectList.length != flavorsList.length,
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
            children: List.generate(flavorsList.length, (index) {
              return Obx(
                () => SizedBox(
                  child: DetailSpecItemBtn(
                    text: flavorsList[index].localeName.translate,
                    price: isBuffet ? SafetyNumber.zero : flavorsList[index].price,
                    isDisabled: isSelectAll ? false : flavorsList[index].stockNum == 0,
                    type: (isSelectAll
                            ? selectList.contains(flavorsList[index].uuid)
                            : flavorsList[index].uuid == selectId)
                        ? ActionButtonType.primary
                        : ActionButtonType.normal, // 是否高亮
                    onTap: () {
                      if (onTap != null) {
                        onTap!(flavorsList[index]);
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
