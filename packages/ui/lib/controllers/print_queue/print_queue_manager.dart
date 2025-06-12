import 'dart:async';

import 'package:ttpos_ui/controllers/print_queue/print_job_model.dart';
import 'package:ttpos_ui/controllers/print_queue/print_stream.dart';
import 'package:ttpos_ui/controllers/print_queue/print_task_queue.dart';

class PrintQueueManager {
  final Map<String, PrintTaskQueue> _queues = {};

  /// 打印队列事件流
  final StreamController<PrintQueueEvent> _eventController = StreamController.broadcast();
  Stream<PrintQueueEvent> get allEvents => _eventController.stream;

  /// 获取打印队列
  /// [printerConfig] 打印机配置
  PrintTaskQueue getQueue(String printerConfig) {
    if (!_queues.containsKey(printerConfig)) {
      _queues[printerConfig] = PrintTaskQueue();
      // 监听打印队列事件
      _queues[printerConfig]!.events.listen((event) {
        _eventController.add(event);
      });
    }
    return _queues[printerConfig]!;
  }

  /// 添加任务到打印队列
  /// [printerConfig] 打印机配置
  /// [job] 打印任务
  void addTask(String printerConfig, PrintJobModel job) {
    final queue = getQueue(printerConfig);
    queue.addTask(job);
  }

  /// 清除打印队列
  /// [printerConfig] 打印机配置
  void clearQueue(String printerConfig) {
    if (_queues.containsKey(printerConfig)) {
      _queues[printerConfig]!.dispose();
      _queues.remove(printerConfig);
    }
  }

  /// 清除所有打印队列
  void clearAllQueues() {
    for (var queue in _queues.values) {
      queue.dispose();
    }
    _queues.clear();
  }
}
