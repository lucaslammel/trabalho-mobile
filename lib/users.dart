class User {
  String username;
  String id;
  String image;

  User({
    required this.username,
    required this.id,
    required this.image
  });

  User.fromJson(Map<String, dynamic> json)
      : username = json["username"].toString(),
        id = json["id"].toString(),
        image = json["image"].toString();
}