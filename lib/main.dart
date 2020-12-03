import 'package:flutter/material.dart';
import 'pages/quiz_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
      
  }
}
