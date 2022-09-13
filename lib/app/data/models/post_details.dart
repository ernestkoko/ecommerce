class PostDetails {
  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  PostDetails({
    this.id,
    this.userId,
    this.title,
    this.body,
  });

  PostDetails.fromMap(Map<String, dynamic> map)
      : id = map['id'] ?? "",
        userId = map['userId'] ?? '',
        title = map['title'] ?? '',
        body = map['body'] ?? '';
}
