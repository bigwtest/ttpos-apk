class DeskCancelModel {
  final String name;
  final int quantity;

  DeskCancelModel({
    this.name = '',
    this.quantity = 0,
  });

  factory DeskCancelModel.fromJson(Map<String, dynamic> json) {
    return DeskCancelModel(
      name: json['name'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'quantity': quantity,
    };
  }
}
