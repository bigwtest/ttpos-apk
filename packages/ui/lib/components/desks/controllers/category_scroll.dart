import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeskCategoryScrollController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final RxBool canScrollLeft = false.obs;
  final RxBool canScrollRight = false.obs;

  Timer? _debounceTimer;

  @override
  void onInit() {
    super.onInit();
    // 添加监听器
    scrollController.addListener(() {
      updateScrollButtons();
    });
  }

  @override
  void onClose() {
    scrollController.removeListener(() {
      updateScrollButtons();
    });
    scrollController.dispose();
    _debounceTimer?.cancel();
    _debounceTimer = null;
    super.onClose();
  }

  void updateScrollButtons() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(
      const Duration(milliseconds: 200),
      () {
        debugPrint(
          'updateScrollButtons, scrollController.position.pixels: ${scrollController.position.pixels}',
        );
        debugPrint(
          'updateScrollButtons, scrollController.position.maxScrollExtent: ${scrollController.position.maxScrollExtent}',
        );
        debugPrint(
          'updateScrollButtons, scrollController.position.hasPixels: ${scrollController.position.hasPixels}',
        );

        canScrollLeft.value = scrollController.position.pixels > 0;
        canScrollRight.value = scrollController.position.pixels < scrollController.position.maxScrollExtent;
      },
    );
  }

  void scrollLeft() {
    final double newOffset = (scrollController.offset - 200).clamp(
      0.0,
      scrollController.position.maxScrollExtent,
    );
    scrollController.animateTo(
      newOffset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void scrollRight() {
    final double newOffset = (scrollController.offset + 200).clamp(
      0.0,
      scrollController.position.maxScrollExtent,
    );
    scrollController.animateTo(
      newOffset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
