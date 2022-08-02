class UserModel {
  final String name;
  final String url;
  final int score;

  UserModel({
    required this.name,
    required this.url,
    this.score = 0,
  });
}


