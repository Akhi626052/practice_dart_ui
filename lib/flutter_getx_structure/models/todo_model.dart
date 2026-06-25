class TodoModel {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  TodoModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}

