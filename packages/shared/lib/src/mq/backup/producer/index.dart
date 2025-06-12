// Package imports:
import 'package:dart_mq/dart_mq.dart';

// Project imports:
import '../../constants.dart';

class BackupProducer with ProducerMixin {
  BackupProducer() {
    MQClient.instance.declareQueue(MQQueueName.backup.value);
  }

  void call({required MQBackupQueueConsumerName consumer}) => sendMessage(
        payload: consumer,
        routingKey: MQQueueName.backup.value,
      );
}
