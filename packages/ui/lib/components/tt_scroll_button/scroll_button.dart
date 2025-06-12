import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/tt_scroll_button/scroll_button_item.dart';

class ScrollButton extends StatefulWidget {
  final Widget Function(ScrollController scrollController) builder;

  const ScrollButton(
    this.builder, {
    super.key,
  });

  @override
  State<ScrollButton> createState() => _ScrollButtonState();
}

class _ScrollButtonState extends State<ScrollButton> {
  final ScrollController _scrollController = ScrollController();
  bool _isShowLeftButton = false;
  bool _isShowRightButton = false;

  @override
  void initState() {
    super.initState();
    //
    _onScrollChanged();
    _scrollController.addListener(_onScrollChanged);
  }

  @override
  void dispose() {
    //
    _debounce?.cancel();
    //
    _scrollController.dispose();
    //
    super.dispose();
  }

  //
  Timer? _debounce;
  void _onScrollChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    // 延迟200毫秒
    _debounce = Timer(const Duration(milliseconds: 200), _scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.hasClients) {
      // maxScrollExtent 是内容的最大可滚动范围
      double maxScroll = _scrollController.position.maxScrollExtent;
      // pixels 是当前滚动偏移
      double currentScroll = _scrollController.position.pixels;
      // 设置状态
      setState(() {
        _isShowLeftButton = currentScroll > 0;
        _isShowRightButton = currentScroll < maxScroll;
      });
    }
  }

  void _scrollLeft() {
    final double newOffset = (_scrollController.offset - 200).clamp(
      0.0,
      _scrollController.position.maxScrollExtent,
    );
    _scrollController.animateTo(
      newOffset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    final double newOffset = (_scrollController.offset + 200).clamp(
      0.0,
      _scrollController.position.maxScrollExtent,
    );
    _scrollController.animateTo(
      newOffset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.builder(_scrollController),
        // 左滚动按钮
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: ScrollButtonItem(
            isShow: _isShowLeftButton,
            onTap: _scrollLeft,
          ),
        ),
        // 右滚动按钮
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: ScrollButtonItem(
            isShow: _isShowRightButton,
            direction: ScrollButtonItemType.right,
            onTap: _scrollRight,
          ),
        ),
      ],
    );
  }
}
