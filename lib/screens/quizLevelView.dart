// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:e_commerce/screens/component/quizlevelbody.dart';

class QuizLevelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Word Game"),
        backgroundColor: Colors.green,
        actions: [],
      ),
      body: QuizLevelBody(),
    );
  }
}
