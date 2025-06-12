// Package imports:
import 'package:dart_mq/dart_mq.dart';

// Project imports:
import '../constants.dart';
import 'consumer/index.dart';
import 'producer/index.dart';

void main() {
  MQClient.initialize();

  final BackupProducer producer = BackupProducer();
  final LocalBackupConsumer localConsumer = LocalBackupConsumer();
  final RemoteBackupConsumer remoteConsumer = RemoteBackupConsumer();

  localConsumer.startListening();
  remoteConsumer.startListening();

  producer
    ..call(consumer: MQBackupQueueConsumerName.local)
    ..call(consumer: MQBackupQueueConsumerName.remote);
}
