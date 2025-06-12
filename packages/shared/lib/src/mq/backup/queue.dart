// Package imports:
import 'package:dart_mq/dart_mq.dart';

// Project imports:
import '../constants.dart';
import 'consumer/index.dart';
import 'producer/index.dart';

class BackupQueue {
  final BackupProducer producer = BackupProducer();
  late final LocalBackupConsumer localConsumer;
  late final RemoteBackupConsumer remoteConsumer;

  final Function(Message)? localCallback;
  final Function(Message)? remoteCallback;

  BackupQueue({
    this.localCallback,
    this.remoteCallback,
  }) {
    MQClient.initialize();
    localConsumer = LocalBackupConsumer(callback: localCallback);
    remoteConsumer = RemoteBackupConsumer(callback: remoteCallback);

    localConsumer.startListening();
    remoteConsumer.startListening();
  }

  void stopListening() {
    localConsumer.stopListening();
    remoteConsumer.stopListening();
  }

  void backupLocal() =>
      producer.call(consumer: MQBackupQueueConsumerName.local);
  void backupRemote() =>
      producer.call(consumer: MQBackupQueueConsumerName.remote);
  void backupAll() => producer
    ..call(consumer: MQBackupQueueConsumerName.local)
    ..call(consumer: MQBackupQueueConsumerName.remote);
}
