import 'package:http/http.dart';
import 'package:primeiro_app/repositorio.dart';
import 'users.dart';
import 'comments.dart';

class Tweet {
  String post_id;
  String body;
  String reactions;
  String user_id;

  Tweet({
    required this.post_id,
    required this.body,
    required this.reactions,
    required this.user_id
  });

  Tweet.fromJson(Map<String, dynamic> json)
      : post_id = json["postId"].toString(),
        body = json["body"].toString(),
        reactions = json["reactions"].toString(),
        user_id = json["userId"].toString();
}