import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(this.ques, this.answerQuestion, this.questionIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[questionIndex]["question"] as String,
        ),
        ...(ques[questionIndex]["answer"] as List<Map<String, Object>>).map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer["text"] as String,
          );
        }).toList()
      ],
    );
  }
}
