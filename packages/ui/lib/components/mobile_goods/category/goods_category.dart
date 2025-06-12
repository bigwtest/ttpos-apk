import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/components/mobile_goods/category/goods_category_item.dart';
import 'package:ttpos_ui/components/mobile_goods/goods_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Category extends StatefulWidget {
  final List<GoodsListModel> goodsSearchList;
  final int selectedIndex;
  final void Function(int)? onChange;

  const Category({
    super.key,
    this.goodsSearchList = const [],
    this.selectedIndex = 0,
    this.onChange,
  });

  @override
  State createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final ScrollController _scrollController = ScrollController();
  int _index = 0;
  bool _isScrolling = false;

  @override
  void initState() {
    super.initState();
    _index = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(Category oldWidget) {
    if (widget.selectedIndex != _index) {
      _index = widget.selectedIndex;
      _scrollToCategory(_index);
    }
    //
    super.didUpdateWidget(oldWidget);
  }

  void _scrollToCategory(int index) {
    // 滚动状态
    if (_isScrolling) return;
    // 判断是否可以滚动
    if (_scrollController.hasClients) {
      _isScrolling = true;
      // 滚动距离
      double offset = index * 55.0;
      //
      _scrollController
          .animateTo(
        min(
          offset,
          _scrollController.position.maxScrollExtent,
        ),
        duration: Duration(milliseconds: 1),
        curve: Curves.easeOut,
      )
          .then((_) {
        _isScrolling = false;
      });
    }
  }

  void _tapCategory(int index) {
    _index = index;
    widget.onChange?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.scaleWidth,
      height: double.infinity,
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
      ),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.goodsSearchList.length + 1,
        itemBuilder: (context, index) {
          if (index == widget.goodsSearchList.length) {
            return const SizedBox(
              height: 100.0,
            );
          }
          final item = widget.goodsSearchList[index];
          return SizedBox(
            height: 55.0,
            child: GoodsCategoryItem(
              count: item.count,
              title: item.categoryInfo.localeName.translate,
              isActive: widget.selectedIndex == index,
              onTap: () => _tapCategory(index),
            ),
          );
        },
      ),
    );
  }
}
