class Author {
  final String name;
  final int age;
  Author({
    required this.name,
    required this.age,
  });

  factory Author.fromJson(dynamic json) {
    return Author(
      name: json['name'] as String,
      age: json['age'] as int,
    );
  }
}

class Tutorial {
  final String title;
  final String descripiton;
  Author author;
  Tutorial({
    required this.title,
    required this.descripiton,
    required this.author,
  });

  factory Tutorial.formJson(dynamic json) {
    return Tutorial(
        title: json['title'] as String,
        descripiton: json['description'] as String,
        author: Author.fromJson(json['author']));
  }
}
