import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'gradeThreeQuestionController.dart';

class ThreeScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThreeQuestionController _qnController = Get.put(ThreeQuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.black),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrect}/${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
