import 'dart:async';
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:ttpos_ui/controllers/print_queue/print_job_model.dart';
import 'package:ttpos_ui/controllers/print_queue/print_stream.dart';

class PrintTaskQueue {
  // 打印队列
  final ListQueue<PrintJobModel> _queue = ListQueue<PrintJobModel>();
  final StreamController<PrintQueueEvent> _eventController = StreamController.broadcast();
  bool _isPrinting = false;
  PrintJobModel? _currentJob;

  // 打印队列信息
  bool get isEmpty => _queue.isEmpty;
  bool get isNotEmpty => _queue.isNotEmpty;
  int get length => _queue.length;

  // 外部监听队列事件
  Stream<PrintQueueEvent> get events => _eventController.stream;

  // 添加打印任务
  void addTask(PrintJobModel job) {
    // 添加任务
    _queue.add(job);
    _eventController.add(PrintQueueEvent.jobEnqueued(job));
    _processQueue();
  }

  // 处理打印任务
  Future<void> _processQueue() async {
    if (_isPrinting || _queue.isEmpty) return;

    _isPrinting = true;
    _currentJob = _queue.removeFirst();
    _eventController.add(PrintQueueEvent.jobStarted(_currentJob!));

    try {
      // 请求打印
      final res = await _currentJob!.printTask.call();
      if (!res) {
        throw Exception('printTask error: $res');
      }
      // 成功发送打印
      _eventController.add(PrintQueueEvent.jobCompleted(_currentJob!));
      // 发送打印成功，延迟200毫秒，执行下一个任务
      await Future.delayed(Duration(milliseconds: _currentJob!.delayMillis));
    } catch (error, stackTrace) {
      debugPrint('[PrintTaskQueue] 打印失败: $error\n$stackTrace');
      // 发送打印失败事件
      _eventController.add(PrintQueueEvent.jobFailed(_currentJob!, error));
      // 重试逻辑
      if (_currentJob!.retryCount > 0) {
        _currentJob!.retryCount--;
        _queue.addFirst(_currentJob!); // 放回队列前端
        _eventController.add(PrintQueueEvent.jobRetryScheduled(_currentJob!));
      } else {
        _eventController.add(PrintQueueEvent.jobAbandoned(_currentJob!));
      }
    } finally {
      // 重置状态
      _currentJob = null;
      _isPrinting = false;
      _processQueue(); // 处理下一个任务
    }
  }

  // 清空队列
  void dispose() {
    _queue.clear();
    _eventController.close();
    _isPrinting = false;
    _currentJob = null;
  }

  // 根据内容大小计算延迟毫秒
  static int calculateDelayMillis(int contentSize) {
    if (contentSize <= 0) return 200;
    // 每1000字节延迟50毫秒
    final delay = (contentSize / 1000 * 50).clamp(0, 1000).toInt();
    // 最多不能超过1秒，不少于200毫秒
    return delay < 200
        ? 200
        : delay > 1000
            ? 1000
            : delay;
  }
}
