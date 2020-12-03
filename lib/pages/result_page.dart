import 'package:flutter/material.dart';
import 'quiz_page.dart';

class ResultPage extends StatelessWidget {
  final int score;

  const ResultPage({this.score});

  String resultText(){
    if (score <= 8){
      return 'You are awesome!';
    }else if (score <= 12){
      return 'Pretty likable';
    }else if (score <= 16){
      return 'You are strange!';
    }else{
      return 'You are bad';
    }
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Center(
            child: Container(
              child: Text(
                resultText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizPage(),
              ),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                'Play Again',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
          ),
        ),
      ]),
    );
  }
}
