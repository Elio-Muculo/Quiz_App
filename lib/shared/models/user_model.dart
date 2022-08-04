import 'dart:convert';

class UserModel {
  final String name;
  final String url;
  final int score;

  UserModel({
    required this.name,
    required this.url,
    this.score = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'photoUrl': url,
      'score': score
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'],
        url: map['photoUrl'],
        score: map['score']
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}


