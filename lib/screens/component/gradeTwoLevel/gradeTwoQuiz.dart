import 'package:e_commerce/screens/component/gradeTwoLevel/gradeTwoQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/component/gradeTwoLevel/gradeTwoQuizBody.dart';
import 'package:get/get.dart';

class GradeTwoQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //AllQuestionController _controller = Get.put(AllQuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Quiz - Grade Two Level"),
        backgroundColor: Colors.green,
        actions: [TextButton(onPressed: () {}, child: Text("Skip"))],
      ),
      body: GradeTwoQuizBody(),
    );
  }
}
