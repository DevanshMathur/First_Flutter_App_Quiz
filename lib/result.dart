import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback resetHandler;

  const Result(this.result, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhase {
    String resultText;
    if (result <= 8) {
      resultText = "Amazing";
    } else if (result <= 12) {
      resultText = "good";
    } else if (result <= 16) {
      resultText = "normal";
    } else {
      resultText = "ok-ok";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: const Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
