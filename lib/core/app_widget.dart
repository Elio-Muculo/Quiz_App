import 'package:devquiz/challenge/challenge_page.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
