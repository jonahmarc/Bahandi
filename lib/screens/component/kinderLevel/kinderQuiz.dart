import 'package:e_commerce/screens/component/kinderLevel/kinderQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/component/kinderLevel/kinderQuizBody.dart';
import 'package:get/get.dart';

class KinderQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AllQuestionController _controller = Get.put(AllQuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Quiz - Kinder Level"),
        backgroundColor: Colors.green,
        actions: [
          TextButton(onPressed: _controller.nextQuest, child: Text("Skip"))
        ],
      ),
      body: KinderQuizBody(),
    );
  }
}
