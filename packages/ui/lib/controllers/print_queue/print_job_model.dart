class PrintJobModel {
  final int uuid;
  final Future<bool> Function() printTask;
  // 重试次数
  int retryCount;
  // 延迟毫秒
  int delayMillis;

  PrintJobModel({
    required this.uuid,
    required this.printTask,
    this.retryCount = 3, // 默认3次重试
    this.delayMillis = 200, // 默认200毫秒延迟
  });
}
