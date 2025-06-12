// Package imports:
import 'package:dart_mq/dart_mq.dart';

// Project imports:
import '../../constants.dart';

final class LocalBackupConsumer with ConsumerMixin {
  final Function(Message)? callback;

  LocalBackupConsumer({
    this.callback,
  }) {
    MQClient.instance.declareQueue(MQQueueName.backup.value);
  }

  void startListening() => subscribe(
        queueId: MQQueueName.backup.value,
        filter: (Object payload) =>
            payload.toString() == MQBackupQueueConsumerName.local.value,
        callback: callback ?? _callback,
      );

  void stopListening() => unsubscribe(queueId: MQQueueName.backup.value);

  void _callback(Message message) {
    print('Local backup consumer');
    print(message);
  }
}
