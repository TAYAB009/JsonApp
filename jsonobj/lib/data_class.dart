// ignore_for_file: public_member_api_docs, sort_constructors_first
class Data {
  String name;
  int age;
  Data({
    required this.name,
    required this.age,
  });

  factory Data.fromJson(dynamic json) {
    return Data(
      name: json['name'] as String,
      age: json['age'] as int,
    );
  }
}
