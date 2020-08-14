class Student{
  final int userId;
  final int id;
  final String title;

  Student({this.userId, this.id, this.title});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
