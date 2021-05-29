import 'package:flutter/material.dart';
import 'screens/component/kinderLevel/kinderScoreScreen.dart';
import 'screens/component/gradeOneLevel/oneScoreScreen.dart';
import 'screens/component/gradeTwoLevel/twoScoreScreen.dart';
import 'screens/component/gradeThreeLevel/threeScoreScreen.dart';
import 'package:get/get.dart';
import 'home.dart';

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
      },
    ); //Scaffold
  }
}
