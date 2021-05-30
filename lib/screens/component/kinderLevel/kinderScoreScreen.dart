import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:get/get.dart';
import '../../../home.dart';
import '../../kinderQuiz.dart';
import '../../quizLevelView.dart';
import 'kinderQuestionController.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AllQuestionController _qnController = Get.put(AllQuestionController());
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
                                    builder: (context) => KinderQuiz()));*/
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

// Stack(
//   children: [
//     WebsafeSvg.asset("assets/bg_quizLevel.svg",
//         fit: BoxFit.fill), // background
//     SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           // whole screen is considered as column
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // widgets inside the column
//             Padding(
//               padding: EdgeInsets.all(30.0),
//               // new ROW starts
//               child: // first widget >> TEXT
//                   Center(
//                 child: Text(
//                   "SCORE",
//                   style: TextStyle(
//                     fontSize: 60,
//                     color: Colors.black,
//                     fontFamily: 'League',
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//             ),
//             // another ROW starts
//             Container(
//               // second widget >> K(Kindergarten) and G1(Grade 1)
//               child: Row(
//                 // to make the widgets in the same row
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     // put inside container, to apply Inkwell >> K
//                     child: Center(
//                       child: Text(
//                         "${_qnController.numOfCorrect}/${_qnController.questions.length}",
//                         style: Theme.of(context)
//                         .textTheme
//                         .headline4
//                         .copyWith(color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // another ROW starts
//             Padding(
//               padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
//               child: Row(
//                 children: [
//                   Container(
//                     // put inside container, to apply Inkwell >> K
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => KinderQuiz()));
//                       },
//                       child: Container(
//                         child: Image.asset('assets/retakebtn.png'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
//               child: Row(
//                 children: [
//                   Container(
//                     // put inside container, to apply Inkwell >> K
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => QuizLevelView()));
//                       },
//                       child: Container(
//                         child: Image.asset('assets/finishbtn.png'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
//               child: Row(
//                 children: [
//                   Container(
//                     // put inside container, to apply Inkwell >> K
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => MyHomePage()));
//                       },
//                       child: Container(
//                         child: Image.asset('assets/homebtn.png'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Padding(
//             //   // put a padding
//             //   padding:
//             //       EdgeInsets.fromLTRB(0, 30, 0, 30), // padding configuration
//             //   child: Column(r
//             //     // to make the widgets in the same row
//             //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //     children: [
//             //       Container(
//             //         // put inside container, to apply Inkwell >> K
//             //         child: InkWell(
//             //           onTap: () {
//             //             Navigator.push(
//             //                 context,
//             //                 MaterialPageRoute(
//             //                     builder: (context) => KinderQuiz()));
//             //           },
//             //           child: Container(
//             //             child: Image.asset('assets/retakebtn.png'),
//             //           ),
//             //         ),
//             //       ),
//             //       Container(
//             //         // put inside container, to apply Inkwell >> G1
//             //         child: InkWell(
//             //           onTap: () {
//             //             Navigator.push(
//             //                 context,
//             //                 MaterialPageRoute(
//             //                     builder: (context) => QuizLevelView()));
//             //           },
//             //           child: Container(
//             //             child: Image.asset('assets/finishbtn.png'),
//             //           ),
//             //         ),
//             //       ),
//             //       Container(
//             //         // put inside container, to apply Inkwell >> G1
//             //         child: InkWell(
//             //           onTap: () {
//             //             Navigator.push(
//             //                 context,
//             //                 MaterialPageRoute(
//             //                     builder: (context) => MyHomePage()));
//             //           },
//             //           child: Container(
//             //             child: Image.asset('assets/homebtn.png'),
//             //           ),
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     ),
// ],

//   // fit: StackFit.expand,
//   // children: [
//   //   Column(
//   //     children: [
//   //       Spacer(flex: 3),
//   //       Text(
//   //         "Score",
//   //         style: Theme.of(context)
//   //             .textTheme
//   //             .headline3
//   //             .copyWith(color: Colors.black),
//   //       ),
//   //       Spacer(),
//   //       Text(
//   //         "${_qnController.numOfCorrect}/${_qnController.questions.length}",
//   //         style: Theme.of(context)
//   //             .textTheme
//   //             .headline4
//   //             .copyWith(color: Colors.black),
//   //       ),
//   //       Spacer(flex: 3),
//   //     ],
//   //   )
//   // ],
// ),
