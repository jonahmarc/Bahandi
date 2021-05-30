import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../../home.dart';
import '../../quizLevelView.dart';
import 'gradeOneQuestionController.dart';
import 'gradeOneQuiz.dart';

class OneScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OneQuestionController _qnController = Get.put(OneQuestionController());
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/bg_3.svg", fit: BoxFit.fill), // background
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                // whole screen is considered as column
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // widgets inside the column
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                    // new ROW starts
                    child: Center(
                      child: Text(
                        "SCORE",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.black,
                          fontFamily: 'League',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    // new ROW starts
                    child: Center(
                      child: Text(
                        "${_qnController.numOfCorrect}/${_qnController.questions.length}",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontFamily: 'League',
                          fontWeight: FontWeight.w900,
                        ),
                        // Theme.of(context)
                        // .textTheme
                        // .headline4
                        // .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 10, 0, 0), // padding configuration
                    child: Center(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            _qnController.reset();
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GradeOneQuiz()));*/
                          },
                          child: Image.asset('assets/retakebtn.png'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 10, 0, 0), // padding configuration
                    child: Center(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            _qnController.finish();
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizLevelView()));*/
                          },
                          child: Image.asset('assets/finishbtn.png'),
                        ),
                      ),
                    ),
                  ),
                  // another ROW starts
                  Padding(
                    // put a padding
                    padding: EdgeInsets.fromLTRB(
                        0, 10, 0, 0), // padding configuration
                    child: Center(
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                          child: Image.asset('assets/homebtn.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
