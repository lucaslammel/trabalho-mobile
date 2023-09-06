import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Tweet> tweets = [];
  @override
  void initState() {
    super.initState();
    fetchTweets();
  }
  void fetchTweets() async {
    final response = await http.get(Uri.parse('https://api.twitter.com/1.1/statuses/home_timeline.json'));
    final jsonData = jsonDecode(response.body);
    setState(() {
      tweets = List<Tweet>.from(jsonData.map((data) => Tweet.fromJson(data)));
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
          final tweet = tweets[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(tweet.user.profileImageUrl),
              ),
              title: Text(tweet.user.name),
              subtitle: Text(tweet.text),
            ),
          );
        },
      );
  }
}
class Tweet {
  final String text;
  final User user;
  Tweet({required this.text, required this.user});
  factory Tweet.fromJson(Map<String, dynamic> json) {
    return Tweet(
      text: json['text'],
      user: User.fromJson(json['user']),
    );
  }
}
class User {
  final String name;
  final String profileImageUrl;
  User({required this.name, required this.profileImageUrl});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      profileImageUrl: json['profile_image_url_https'],
    );
  }
}
