import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:primeiro_app/repositorio.dart';
import 'dart:convert';
import 'tweets.dart';
import 'users.dart';
import 'comments.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Tweet>>? futureTweets;
  Future<User>? user;

  @override
  void initState() {
    futureTweets = getTweets();
    super.initState();
  }

  //final List<Tweet> posts;

  //ListTweets(this.posts, {super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: futureTweets,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            final posts = snapshot.data as List<Tweet>;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                final user = getUser(post.user_id);
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://robohash.org/excepturiiuremolestiae.png"),
                    ),
                    title: Text(post.user_id),
                    subtitle: Text(post.body),
                  ),
                );
              },
            );
          } else if(snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return CircularProgressIndicator();
        },
    );
    /*;*/

  }
}


