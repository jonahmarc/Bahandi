import 'package:e_commerce/screens/component/kinderLevel/kinderQuiz.dart';
import 'package:e_commerce/screens/quizLevelView.dart';
import 'package:flutter/material.dart';
//import 'package:sizer/sizer.dart';
//import 'package:e_commerce/screens/component/kinderLevel/kinderScoreScreen.dart';
import 'screens/component/gradeOneLevel/gradeOneQuiz.dart';
import 'screens/component/gradeOneLevel/oneScoreScreen.dart';
import 'package:e_commerce/screens/component/gradeTwoLevel/twoScoreScreen.dart';
import 'screens/component/gradeThreeLevel/gradeThreeQuiz.dart';
import 'screens/component/gradeThreeLevel/threeScoreScreen.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'screens/component/gradeTwoLevel/gradeTwoQuiz.dart';
import 'screens/component/kinderLevel/kinderScoreScreen.dart';

void main() {
  runApp(Bahandi());
}

/*class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}*/

class Bahandi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bahandi',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/kinderScoreScreen': (context) => KinderScoreScreen(),
        '/oneScoreScreen': (context) => OneScoreScreen(),
        '/twoScoreScreen': (context) => TwoScoreScreen(),
        '/threeScoreScreen': (context) => ThreeScoreScreen(),
        '/kinderQuiz': (context) => KinderQuiz(),
        '/oneQuiz': (context) => GradeOneQuiz(),
        '/twoQuiz': (context) => GradeTwoQuiz(),
        '/threeQuiz': (context) => GradeThreeQuiz(),
        '/quizLevel': (context) => QuizLevelView(),
      },
    );
  }
}

//return GetMaterialApp(
//   title: 'Bahandi',
//   debugShowCheckedModeBanner: false,
//   initialRoute: '/',
//   routes: {
//     '/': (context) => MyHomePage(),
//     '/kinderScoreScreen': (context) => KinderScoreScreen(),
//     '/oneScoreScreen': (context) => OneScoreScreen(),
//     '/twoScoreScreen': (context) => TwoScoreScreen(),
//     '/threeScoreScreen': (context) => ThreeScoreScreen(),
//   },
// );
