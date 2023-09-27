class Comment {
  String body;
  String user_id;

  Comment({
    required this.body,
    required this.user_id
  });

  Comment.fromJson(Map<String, dynamic> json)
      : body = json["body"].toString(),
        user_id = json["userId"].toString();
}