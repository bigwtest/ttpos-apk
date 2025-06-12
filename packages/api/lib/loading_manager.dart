import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';

class LoadingManager {
  // 私有构造函数，防止实例化
  LoadingManager._();

  // 静态变量存储所有 loading 状态
  static final _loadingRequestIds = <String>{};
  static CancelFunc? _globalLoadingCancel;
  static Timer? _loadingTimeoutTimer;

  // 最大 loading 显示时间（毫秒）
  static const int _maxLoadingDuration = 10; // 10秒

  /// 显示 loading 指示器
  ///
  /// 如果已经有 loading 指示器在显示，则只记录请求 ID
  /// 如果没有 loading 指示器在显示，则创建一个新的
  static void showLoading(String requestId) {
    _loadingRequestIds.add(requestId);

    // 如果已经有 loading 指示器在显示，则不需要再创建新的
    if (_globalLoadingCancel != null) {
      return;
    }

    // 创建新的 loading 指示器（不设置 duration，由我们自己控制关闭时机）
    _globalLoadingCancel = BotToast.showLoading(
      allowClick: false,
      clickClose: false,
      crossPage: true,
      backButtonBehavior: BackButtonBehavior.ignore,
    );

    // 设置安全超时，防止 loading 无限显示
    _resetLoadingTimeout();
  }

  /// 隐藏指定请求 ID 的 loading 指示器
  ///
  /// 只有当所有请求都完成时，才会真正隐藏 loading 指示器
  static void hideLoading(String requestId) {
    _loadingRequestIds.remove(requestId);

    // 如果还有其他请求在进行中，则不隐藏 loading 指示器
    if (_loadingRequestIds.isNotEmpty) {
      return;
    }

    // 所有请求都完成，隐藏 loading 指示器
    _hideGlobalLoading();
  }

  /// 隐藏全局 loading 指示器并清理状态
  static void _hideGlobalLoading() {
    if (_globalLoadingCancel != null) {
      _globalLoadingCancel!.call();
      _globalLoadingCancel = null;
    }

    // 取消超时计时器
    _loadingTimeoutTimer?.cancel();
    _loadingTimeoutTimer = null;
  }

  /// 重置 loading 超时计时器
  static void _resetLoadingTimeout() {
    // 取消之前的计时器（如果有）
    _loadingTimeoutTimer?.cancel();

    // 设置新的超时计时器
    _loadingTimeoutTimer = Timer(
      Duration(seconds: _maxLoadingDuration),
      () {
        // 超时后强制清除所有 loading 状态
        if (_globalLoadingCancel != null) {
          debugPrint('Loading timeout reached, force clearing all loading states');
          clearLoading();
        }
      },
    );
  }

  /// 清除所有 loading 状态
  static void clearLoading() {
    _loadingRequestIds.clear();
    _hideGlobalLoading();

    BotToast.removeAll();
    BotToast.cleanAll();
  }
}
