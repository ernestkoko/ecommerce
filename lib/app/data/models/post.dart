class Post {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Post({this.title, this.id, this.body, this.userId});

  Post.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        userId = map['userId'],
        body = map['body'],
        title = map['title'];

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['userId'] = userId;
    map['body'] = body;
    map['title'] = title;

    return map;
  }
}
