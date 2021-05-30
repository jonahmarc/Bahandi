import 'package:e_commerce/screens/component/gradeThreeLevel/gradeThreeQuiz.dart';
import 'package:e_commerce/screens/component/gradeTwoLevel/gradeTwoQuiz.dart';
import 'package:e_commerce/screens/component/gradeOneLevel/gradeOneQuiz.dart';
import 'package:e_commerce/screens/component/kinderLevel/kinderQuiz.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizLevelBody extends StatelessWidget {
  const QuizLevelBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/bg_3.svg",
            fit: BoxFit.fill), // background
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // whole screen is considered as column
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // widgets inside the column
                Padding(
                  padding: EdgeInsets.all(30.0),
                  // new ROW starts
                  child: // first widget >> TEXT
                      Center(
                    child: Text(
                      "LEVEL",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.black,
                        fontFamily: 'League',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                // another ROW starts
                Container(
                  // second widget >> K(Kindergarten) and G1(Grade 1)
                  child: Row(
                    // to make the widgets in the same row
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // put inside container, to apply Inkwell >> K
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KinderQuiz()));
                          },
                          child: Container(
                            child: Image.asset('assets/1.png'),
                          ),
                        ),
                      ),
                      Container(
                        // put inside container, to apply Inkwell >> G1
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GradeOneQuiz()));
                          },
                          child: Container(
                            child: Image.asset('assets/2.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // another ROW starts
                Padding(
                  // put a padding
                  padding:
                      EdgeInsets.fromLTRB(0, 30, 0, 30), // padding configuration
                  child: Row(
                    // to make the widgets in the same row
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // put inside container, to apply Inkwell >> K
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GradeTwoQuiz()));
                          },
                          child: Container(
                            child: Image.asset('assets/3.png'),
                          ),
                        ),
                      ),
                      Container(
                        // put inside container, to apply Inkwell >> G1
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GradeThreeQuiz()));
                          },
                          child: Container(
                            child: Image.asset('assets/4.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    //   // return MaterialApp(
    //   //   title: 'Level',
    //   //   home: Container(
    //   //     child: Column(
    //   //       children: <Widget>[
    //   //         Expanded( // Expanded for assets to not overflow
    //   //           child: WebsafeSvg.asset("assets/bg_quizLevel.svg", fit: BoxFit.fill),
    //   //         ),
    //   //       ],
    //   //     ),
    //   //   ),
    //   // );
  }

  // Widget build(BuildContext context) => ListView(
  //   children: [
  //     WebsafeSvg.asset("assets/bg_quizLevel.svg", fit: BoxFit.fill),
  //     pageTitle(),
  //   ],
  // );

  // Widget pageTitle(){
  //   return Row(
  //     children: [
  //       Text(
  //         "LEVEL",
  //           style: TextStyle(
  //           fontSize: 50,
  //           color: Colors.black,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
