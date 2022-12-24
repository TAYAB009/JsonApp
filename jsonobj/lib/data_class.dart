class Tag {
  final String name;
  final int quantity;
  Tag({
    required this.name,
    required this.quantity,
  });

  factory Tag.fromJson(dynamic json) {
    return Tag(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
    );
  }

  // @override
  // String toString() {
  //   return '{ ${this.name}, ${this.quantity} }';
  // }
}
