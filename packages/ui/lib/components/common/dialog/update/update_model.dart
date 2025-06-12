class UpdateModel {
  final String versionName;
  final int forcedUpdate;
  final String updateLog;
  final String downloadUrl;

  UpdateModel({
    required this.versionName,
    required this.forcedUpdate,
    required this.updateLog,
    required this.downloadUrl,
  });

  factory UpdateModel.fromJson(Map<String, dynamic> json) {
    return UpdateModel(
      versionName: json['version_name'],
      forcedUpdate: json['forced_update'],
      updateLog: json['update_log'],
      downloadUrl: json['download_url'],
    );
  }
}
