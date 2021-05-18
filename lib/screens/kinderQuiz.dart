import 'package:flutter/material.dart';
import 'package:e_commerce/screens/component/kinderQuizBody.dart';

class KinderQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Quiz - Kinder Level"),
        backgroundColor: Colors.green,
        actions: [],
      ),
      body: KinderQuizBody(),
    );
  }
}