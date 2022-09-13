class PostComment {
  final int? id;
  final int? postId;
  final String? name;
  final String? email;
  final String? body;

  PostComment({
    this.id,
    this.body,
    this.email,
    this.name,
    this.postId,
  });

  PostComment.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        postId = map['postId'],
        name = map['name'],
        email = map['email'],
        body = map['body'];
}
