import '../widgets/answer_button.dart';
import 'package:flutter/material.dart';
import './result_page.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _totalScore = 0;
  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Nelson', 'score': 1},
          {'text': 'Dave', 'score': 1},
          {'text': 'Angela', 'score': 1},
          {'text': 'Max', 'score': 1},
        ],
      },
    ];

    return _questionIndex < _questions.length
        ? Scaffold(
            appBar: AppBar(
              title: Text('Parsonality Quiz'),
            ),
            body: Column(
              children: <Widget>[
                Expanded(
                  // flex: 6,
                  child: Center(
                    child: Text(
                      _questions[_questionIndex]['questionText'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                ...(_questions[_questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return AnswerButton(
                    answerText: answer['text'],
                    selectHandler: () => answerQuestion(answer['score']),
                  );
                }).toList(),
              ],
            ),
          )
        : ResultPage(score: _totalScore,);
  }
}
