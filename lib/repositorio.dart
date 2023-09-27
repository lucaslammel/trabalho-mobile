import 'dart:convert';
import 'package:http/http.dart' as http;
import 'tweets.dart';
import 'users.dart';
import 'comments.dart';

Future<List<Tweet>> getTweets() async {
  String url = "https://dummyjson.com/posts/";

  final response = await http.get(Uri.parse(url));
  final responseJson = jsonDecode(response.body)['posts'];
  // print(responseJson);
  final listTweetsData = List<Tweet>.from(responseJson.map(
          (element) => Tweet.fromJson(element)
  ));

  return listTweetsData;
}

Future<List<User>> getUsers() async {
  String url = "https://dummyjson.com/users/";

  final response = await http.get(Uri.parse(url));
  final responseJson = jsonDecode(response.body);
  // print(responseJson);
  final listUsersData = List<User>.from(responseJson.map(
          (element) => Tweet.fromJson(element)
  ));

  return listUsersData;
}

Future<User> getUser(user_id) async {
  String url = "https://dummyjson.com/users/$user_id";

  final response = await http.get(Uri.parse(url));
  final responseJson = jsonDecode(response.body);

  return User.fromJson(responseJson);
}

Future<List<Comment>> getComments(post_id) async {
  String url = "https://dummyjson.com/comments/post/";
  url = url + post_id.toString();

  final response = await http.get(Uri.parse(url));
  final responseJson = jsonDecode(response.body);
  // print(responseJson);
  final listCommentsData = List<Comment>.from(responseJson.map(
          (element) => Tweet.fromJson(element)
  ));

  return listCommentsData;
}