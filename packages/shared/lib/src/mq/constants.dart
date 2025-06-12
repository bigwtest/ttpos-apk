library mq_constants;

enum MQQueueName {
  backup("backup"),
  sync("sync");

  final String value;
  const MQQueueName(this.value);
}

enum MQBackupQueueConsumerName {
  local("local"),
  remote("remote");

  final String value;
  const MQBackupQueueConsumerName(this.value);
}
