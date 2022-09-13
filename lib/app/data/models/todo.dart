class Todo {
  final int? userId;
  final int? id;
  final String? title;
  final bool completed;

  Todo({
    this.id,
    this.title,
    this.userId,
    this.completed = false,
  });

  Todo.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        userId = map['userId'],
        title = map['title'],
        completed = map['completed'];
}
