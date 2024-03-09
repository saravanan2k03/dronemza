class MyModel {
  final String id;
  final String name;
  final int age;

  MyModel({required this.id, required this.name, required this.age});

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }
}
