import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/desks/controllers/category_scroll.dart';
import 'package:ttpos_ui/components/desks/controllers/container.dart';
import 'package:ttpos_ui/components/desks/models/callbacks.dart';
import 'package:ttpos_ui/components/desks/views/container/category/item.dart';
import 'package:ttpos_ui/components/desks/views/container/category/scroll_button.dart';
import 'package:ttpos_ui/components/desks/views/container/total/total.dart';
import 'package:ttpos_ui/components/desks/views/item/item.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskContainerView extends StatefulWidget {
  final String tag;
  final DeskCallbacks callbacks;

  const DeskContainerView({
    super.key,
    required this.tag,
    required this.callbacks,
  });

  @override
  State<DeskContainerView> createState() => _DeskContainerViewState();
}

class _DeskContainerViewState extends State<DeskContainerView> {
  @override
  void dispose() {
    if (Get.isRegistered<DeskCategoryScrollController>(tag: widget.tag)) {
      Get.delete<DeskCategoryScrollController>(tag: widget.tag);
    }
    if (Get.isRegistered<DeskContainerInternalController>(tag: widget.tag)) {
      Get.delete<DeskContainerInternalController>(tag: widget.tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskContainerInternalController>(
      id: widget.tag,
      tag: widget.tag,
      init: DeskContainerInternalController(
        getDeskList: widget.callbacks.getDeskList,
        getDeskCategory: widget.callbacks.getDeskCategory,
        getBuffetList: widget.callbacks.getBuffetList,
      ),
      builder: (controller) {
        final DeskCategoryScrollController scrollController = Get.put(DeskCategoryScrollController(), tag: widget.tag);
        return Obx(() {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            padding: EdgeInsets.all(16.0.scalePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IgnorePointer(
                  ignoring: controller.showDeskListLoading,
                  child: TtInput(
                    fontSize: 13.0,
                    value: controller.searchKeyword,
                    hintText: '请输入桌台名称'.tr,
                    onChanged: (value) {
                      controller.searchKeyword = value;
                    },
                    isShowClose: controller.searchKeyword.isNotEmpty,
                    prefixIcon: Icon(
                      Iconfont.search,
                      size: 16.0,
                      color: CustomTheme.secondaryColor.shade300,
                    ),
                    height: 40.0.scaleHeight,
                  ),
                ),
                SizedBox(height: 16.0.scalePadding),
                // 分类
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: controller.searchKeyword.isNotEmpty ? 0 : 36.0.scaleHeight,
                  child: IgnorePointer(
                    ignoring: controller.searchKeyword.isNotEmpty || controller.showDeskListLoading,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 36.0.scaleHeight,
                          child: SingleChildScrollView(
                            controller: scrollController.scrollController,
                            scrollDirection: Axis.horizontal, // 设置为水平滚动
                            child: Row(
                              spacing: 16.0.scalePadding,
                              children: [
                                // 全部区域
                                CategoryItem(
                                  list: controller.selectAllRegionList,
                                  selected: controller.selectedAllRegionIds,
                                  onSelectionChanged: controller.onAllRegionSelectionChanged,
                                ),

                                // 区域数据
                                if (controller.selectRegionList.isNotEmpty)
                                  CategoryItem(
                                    list: controller.selectRegionList,
                                    selected: controller.selectedRegionIds,
                                    onSelectionChanged: controller.onRegionSelectionChanged,
                                  ),
                                // 线
                                Container(
                                  height: 32.0.scaleHeight,
                                  width: 1,
                                  color: CustomTheme.greyColor.shade300,
                                ),
                                // 全部类型
                                CategoryItem(
                                  list: controller.selectAllTypeList,
                                  selected: controller.selectedAllTypeIds,
                                  onSelectionChanged: controller.onAllTypeSelectionChanged,
                                ),
                                // 类型数据
                                if (controller.selectTypeList.isNotEmpty)
                                  CategoryItem(
                                    list: controller.selectTypeList,
                                    selected: controller.selectedTypeIds,
                                    onSelectionChanged: controller.onTypeSelectionChanged,
                                  ),
                                // 线
                                Container(
                                  height: 32.0.scaleHeight,
                                  width: 1,
                                  color: CustomTheme.greyColor.shade300,
                                ),
                                // 全部状态
                                CategoryItem(
                                  list: controller.selectAllStatusList,
                                  selected: controller.selectedAllStatusIds,
                                  onSelectionChanged: controller.onAllStatusSelectionChanged,
                                ),
                                // 状态数据
                                CategoryItem(
                                  list: controller.selectStatusList,
                                  selected: controller.selectedStatusIds,
                                  onSelectionChanged: controller.onStatusSelectionChanged,
                                ),
                              ],
                            ),
                          ),
                        ),
                        // 左滚动按钮
                        Positioned(
                          left: 0,
                          top: 0,
                          bottom: 0,
                          child: ScrollLeftButton(tag: widget.tag),
                        ),
                        // 右滚动按钮
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: ScrollRightButton(tag: widget.tag),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: controller.searchKeyword.isNotEmpty ? 0 : 16.0.scaleHeight,
                ),
                // 列表
                Expanded(
                  child: Obx(
                    () => Stack(
                      children: [
                        // 加载状态
                        AnimatedOpacity(
                          opacity: controller.showDeskListLoading ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 200),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                        // 空状态显示
                        AnimatedOpacity(
                          opacity: !controller.showDeskListLoading && controller.deskListFiltered.isEmpty ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 200),
                          child: Center(
                            child: EmptyDataView(
                              imgWidth: 100.0,
                              fontSize: 14.0,
                              icon: controller.searchKeyword.isNotEmpty
                                  ? Image.asset(
                                      'packages/ttpos_ui/assets/images/search_keyword_empty.png',
                                      width: 150.0,
                                      height: 150.0,
                                    )
                                  : null,
                            ),
                          ),
                        ),
                        // 列表显示
                        IgnorePointer(
                          ignoring: controller.showDeskListLoading || controller.deskListFiltered.isEmpty,
                          child: AnimatedOpacity(
                            opacity:
                                !controller.showDeskListLoading && controller.deskListFiltered.isNotEmpty ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 200),
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200.0.scaleWidth, // 每个网格项的最大宽度
                                mainAxisExtent: 180.0.scaleHeight, // 每个网格项的高度
                                crossAxisSpacing: 10.0.scalePadding, // 水平方向的间距
                                mainAxisSpacing: 10.0.scalePadding, // 垂直方向的间距
                                // childAspectRatio: 1, // 设置每个网格项的宽高比
                              ),
                              itemCount: controller.deskListFiltered.length, // 项目总数
                              itemBuilder: (_, int index) {
                                return Obx(() {
                                  final props = controller.deskListFiltered[index];
                                  return DeskListItemView(
                                    key: Key(props.uuidString),
                                    tag: '${widget.tag}_${props.uuidString}',
                                    props: props,
                                    isActionAvailable: controller.isActionAvailable,
                                    callbacks: DeskListItemCallbacks(
                                      deskCallbacks: widget.callbacks,
                                      loadDeskList: ({bool forceRefresh = true}) =>
                                          controller.loadDeskListFromAPI(isFirstPage: true, forceRefresh: forceRefresh),
                                      loadDeskCategory: ({bool forceRefresh = true}) =>
                                          controller.loadDeskCategoryFromAPI(forceRefresh: forceRefresh),
                                      setCurrentActionDeskUuid: (int uuid) => controller.currentActionDeskUuid = uuid,
                                      registerTimer: (int uuid) => controller.registerTimer(uuid),
                                      unregisterTimer: (int uuid) => controller.unregisterTimer(uuid),
                                      isClearable: widget.callbacks.isClearable,
                                    ),
                                  );
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0.scalePadding),
                // 统计
                Obx(() => Total(props: controller.deskExtraFiltered)),
              ],
            ),
          );
        });
      },
    );
  }
}
