import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/attributes/attribute_groups.dart';
import 'package:ttpos_model/goods/response/attributes/attributes.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item.dart';
import 'package:ttpos_ui/components/goods/views/detail/detail_spec_item_btn.dart';

class DetailSpecAttributes extends StatelessWidget {
  final bool isSelectAll; // 是否为编辑模式
  final List<int> selectListId;
  final List<GoodsAttributeGroups> attributesList;
  final void Function(GoodsAttributeGroups item)? onSelectAll; // 规格点击
  final void Function(GoodsAttributes item, GoodsAttributeGroups parentItem)? onTap; // 规格点击

  const DetailSpecAttributes({
    super.key,
    this.isSelectAll = false,
    this.selectListId = const [],
    this.attributesList = const [],
    this.onSelectAll,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.0,
      children: attributesList
          .map(
            (item) => DetailSpecItem(
              title: item.localeName.translate,
              isSelectAll: isSelectAll,
              onSelectAll: () {
                if (onSelectAll != null) {
                  onSelectAll!(item);
                }
              },
              specItemList: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  // 获取列表
                  final list = item.attributes.list;
                  return Wrap(
                    spacing: 10.0, // 主轴方向的间距
                    runSpacing: 10.0, // 交叉轴方向的间距
                    children: List.generate(list.length, (index) {
                      return Obx(
                        () => SizedBox(
                          child: DetailSpecItemBtn(
                            text: list[index].localeName.translate,
                            type: selectListId.contains(list[index].uuid)
                                ? ActionButtonType.primary
                                : ActionButtonType.normal, // 是否高亮
                            onTap: () {
                              if (onTap != null) {
                                onTap!(list[index], item);
                              }
                            },
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
