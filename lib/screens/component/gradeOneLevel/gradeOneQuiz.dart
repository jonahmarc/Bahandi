import 'package:e_commerce/screens/component/gradeOneLevel/gradeOneQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/component/gradeOneLevel/gradeOneQuizBody.dart';
import 'package:get/get.dart';

class GradeOneQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //AllQuestionController _controller = Get.put(AllQuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Quiz - Grade One Level"),
        backgroundColor: Colors.green,
        actions: [TextButton(onPressed: () {}, child: Text("Skip"))],
      ),
      body: GradeOneQuizBody(),
    );
  }
}
