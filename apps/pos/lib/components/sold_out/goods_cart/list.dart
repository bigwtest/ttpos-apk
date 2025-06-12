// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/sold_out/goods_cart/list_item.dart';
import 'package:pos/model/response/sold_out/sold_out_list.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SoldOutList extends StatelessWidget {
  final bool isLoadingCancel;
  final int cancelId;
  final bool hasMore;
  final List<ResponseSoldOutList> listSoldOut;
  final void Function(int id, int index)? onCancel; // 点击事件
  final void Function()? loadNextPage; // 加载下一页

  const SoldOutList({
    super.key,
    this.isLoadingCancel = false,
    this.cancelId = 0,
    this.hasMore = false,
    this.listSoldOut = const [],
    this.onCancel,
    this.loadNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listSoldOut.length + (hasMore ? 1 : 0), // +1 用于显示加载状态
      itemBuilder: (_, int index) {
        // 最后一项显示加载状态或无数据提示
        if (index == listSoldOut.length) {
          return Container(
            height: 24.0,
            alignment: Alignment.center,
            child: hasMore
                ? const SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(),
                  )
                : Text(
                    '没有更多数据了'.tr,
                    style: TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: 12.0,
                    ),
                  ),
          );
        }
        // 当滑动到最后一项时，触发加载更多
        if (index == listSoldOut.length - 1 && hasMore) {
          loadNextPage?.call();
        }
        // 列表详情
        ResponseSoldOutList item = listSoldOut[index];
        // 列表项
        return ListItem(
          isLoadingCancel: isLoadingCancel,
          cancelId: cancelId,
          index: index,
          detail: item,
          onCancel: onCancel,
          isShowBorder: index < (listSoldOut.length - 1),
        );
      },
    );
  }
}
