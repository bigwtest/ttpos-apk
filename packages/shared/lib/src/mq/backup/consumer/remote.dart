// Package imports:
import 'package:dart_mq/dart_mq.dart';

// Project imports:
import '../../constants.dart';

final class RemoteBackupConsumer with ConsumerMixin {
  final Function(Message)? callback;

  RemoteBackupConsumer({
    this.callback,
  }) {
    MQClient.instance.declareQueue(MQQueueName.backup.value);
  }

  void startListening() => subscribe(
        queueId: MQQueueName.backup.value,
        filter: (Object payload) =>
            payload.toString() == MQBackupQueueConsumerName.remote.value,
        callback: callback ?? _callback,
      );

  void stopListening() => unsubscribe(queueId: MQQueueName.backup.value);

  void _callback(Message message) {
    print('Remote backup consumer');
    print(message);
  }
}
