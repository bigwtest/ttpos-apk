import 'package:ttpos_ui/controllers/print_queue/print_job_model.dart';

// 队列事件类型
enum PrintQueueEventType { enqueued, started, completed, failed, retryScheduled, abandoned }

class PrintQueueEvent {
  final PrintQueueEventType type;
  final PrintJobModel job;
  final Object? error;
  final DateTime timestamp;

  PrintQueueEvent._(this.type, this.job, [this.error]) : timestamp = DateTime.now();

  factory PrintQueueEvent.jobEnqueued(PrintJobModel job) => PrintQueueEvent._(PrintQueueEventType.enqueued, job);
  factory PrintQueueEvent.jobStarted(PrintJobModel job) => PrintQueueEvent._(PrintQueueEventType.started, job);
  factory PrintQueueEvent.jobCompleted(PrintJobModel job) => PrintQueueEvent._(PrintQueueEventType.completed, job);
  factory PrintQueueEvent.jobFailed(PrintJobModel job, Object error) =>
      PrintQueueEvent._(PrintQueueEventType.failed, job, error);
  factory PrintQueueEvent.jobRetryScheduled(PrintJobModel job) =>
      PrintQueueEvent._(PrintQueueEventType.retryScheduled, job);
  factory PrintQueueEvent.jobAbandoned(PrintJobModel job) => PrintQueueEvent._(PrintQueueEventType.abandoned, job);
}
