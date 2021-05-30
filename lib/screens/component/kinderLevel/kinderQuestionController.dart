import 'kinderQuestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AllQuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController animController;
  Animation anim;

  Animation get animation => this.anim;

  PageController pageController;
  PageController get _pageController => this.pageController;

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

  int counter = 0;
  int get _counter => this.counter;

  RxInt questionNum = 1.obs;
  RxInt get _questionNum => this.questionNum;

  int numOfCorrect = 0;
  int get _numOfCorrect => this.numOfCorrect;

  @override
  void onInit() {
    animController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    anim = Tween<double>(begin: 1, end: 0).animate(animController)
      ..addListener(() {
        update();
      });

    animController.forward().whenComplete(nextQuest);

    pageController = PageController();
    super.onInit();
  }

  void check(Question question, int choiceIndex) {
    isAnswered = true;
    correctAnswer = question.answer;
    selectedAnswer = choiceIndex;

    if (correctAnswer == selectedAnswer) {
      numOfCorrect++;
    }
    animController.stop();
    update();

    Future.delayed(Duration(seconds: 2), () {
      nextQuest();
    });
  }

  @override
  void onClose() {
    super.onClose();
    animController.dispose();
    pageController.dispose();
  }

  void nextQuest() {
    counter++;
    print(numOfCorrect);
    if (counter != 10) {
      isAnswered = false;
      pageController.nextPage(
          duration: Duration(milliseconds: 350), curve: Curves.ease);
      animController.reset();
      animController.forward().whenComplete(nextQuest);
    } else {
      // questionNum.value = 0;
      // counter = 0;
      // numOfCorrect = 0;
      Get.toNamed('/kinderScoreScreen');
    }
  }

  void reset() {
    isAnswered = false;
    counter = 0;
    numOfCorrect = 0;
    pageController.dispose();
    animController.dispose();
    Get.reset();
    Get.toNamed('/kinderQuiz');
  }

  void finish() {
    isAnswered = false;
    counter = 0;
    numOfCorrect = 0;
    pageController.dispose();
    animController.dispose();
    Get.reset();
    Get.toNamed('/quizLevel');
  }
}
