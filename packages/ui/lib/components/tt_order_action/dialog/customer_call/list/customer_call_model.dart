class CustomerCallModel {
  final int uuid;
  final String? title;
  final String? subtitle;
  final String? description;

  CustomerCallModel({
    this.uuid = 0,
    this.title,
    this.subtitle,
    this.description,
  });

  factory CustomerCallModel.fromJson(Map<String, dynamic> json) {
    return CustomerCallModel(
      uuid: json['uuid'],
      title: json['title'],
      subtitle: json['subtitle'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'title': title,
      'subtitle': subtitle,
      'description': description,
    };
  }
}
