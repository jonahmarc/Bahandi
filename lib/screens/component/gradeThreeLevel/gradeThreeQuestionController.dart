import 'gradeThreeQuestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
//import 'kinderScoreScreen.dart';

class ThreeQuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController animOneController;
  Animation animOne;

  Animation get animation => this.animOne;

  PageController pageOneController;
  PageController get _pageOneController => this.pageOneController;

  List<Question> quest = sample_data
      .map((question) => Question(
            id: question['id'],
            question: question['question'],
            image: question['image'],
            options: question['options'],
            answer: question['answer_index'],
          ))
      .toList();

  List<Question> get questions => this.quest;

  bool isAnswered = false;
  bool get _isAnswered => this.isAnswered;

  int correctAnswer;
  int get _correctAnswer => this.correctAnswer;

  int selectedAnswer;
  int get _selectedAnswer => this.selectedAnswer;

  RxInt questionNum = 1.obs;
  RxInt get _questionNum => this.questionNum;

  int numOfCorrect = 0;
  int get _numOfCorrect => this.numOfCorrect;

  @override
  void onInit() {
    animOneController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    animOne = Tween<double>(begin: 1, end: 0).animate(animOneController)
      ..addListener(() {
        update();
      });

    animOneController.forward().whenComplete(nextQuest);

    pageOneController = PageController();
    super.onInit();
  }

  void check(Question question, int choiceIndex) {
    isAnswered = true;
    correctAnswer = question.answer;
    selectedAnswer = choiceIndex;

    if (correctAnswer == selectedAnswer) {
      numOfCorrect++;
    }
    animOneController.stop();
    update();

    Future.delayed(Duration(seconds: 2), () {
      nextQuest();
    });
  }

  @override
  void onClose() {
    super.onClose();
    animOneController.dispose();
    pageOneController.dispose();
  }

  void nextQuest() {
    if (questionNum.value != questions.length) {
      isAnswered = false;
      pageOneController.nextPage(
          duration: Duration(milliseconds: 350), curve: Curves.ease);
      animOneController.reset();
      animOneController.forward().whenComplete(nextQuest);
    } else {
      //Get.to(ScoreScreen());
    }
  }
}
