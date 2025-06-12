// Dart imports:
import 'dart:async';

// Package imports:
import 'package:cron/cron.dart';
import 'package:logging/logging.dart' as logging;

class SyncSchedule {
  String cronString = '0 */15 * * * *';
  final Cron cron;
  bool isTaskInitialized = false;
  late ScheduledTask task;
  FutureOr<dynamic> Function()? taskCallback;

  final logging.Logger log = logging.Logger('SyncSchedule');

  SyncSchedule() : cron = Cron();

  Future<void> start({
    FutureOr<dynamic> Function()? taskCallback,
  }) async {
    if (isTaskInitialized) await stop();
    taskCallback ??= this.taskCallback ??
        () {
          log.warning('Sync schedule not implemented');
        };

    try {
      task = cron.schedule(
        Schedule.parse(cronString),
        taskCallback,
      );
      this.taskCallback = taskCallback;
      isTaskInitialized = true;
    } catch (error) {
      log.severe(error);
    }
  }

  Future<void> stop() async {
    if (!isTaskInitialized) return;
    try {
      await task.cancel();
    } catch (error) {
      log.severe(error);
    }
  }

  Future<void> close() async {
    try {
      await cron.close();
    } catch (error) {
      log.severe(error);
    }
  }

  void setCronString(String cronString) {
    try {
      Schedule.parse(cronString);
      this.cronString = cronString;
      start();
    } catch (error) {
      log.severe(error);
    }
  }
}
