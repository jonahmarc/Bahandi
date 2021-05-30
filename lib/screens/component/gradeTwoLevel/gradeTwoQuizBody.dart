import '../timerTwo.dart';
import 'gradeTwoQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'gradeTwoQuestions.dart';
import 'gradeTwoQuestionCard.dart';

class GradeTwoQuizBody extends StatelessWidget {
  const GradeTwoQuizBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TwoQuestionController questController = Get.put(TwoQuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/bg_3.svg",
            fit: BoxFit.fill), // background
        SafeArea(
          child: Column(
            // whole screen is considered as column
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TimerTwo(),
              ),
              SizedBox(
                height: 20,
              ),
              //Question_Card(),
              Expanded(
                  child: PageView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      controller: questController.pageOneController,
                      itemCount: questController.questions.length,
                      itemBuilder: (context, index) => QuestionCard(
                            question: questController.questions[index],
                          ))),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
