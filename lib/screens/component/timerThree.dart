import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'gradeThreeLevel/gradeThreeQuestionController.dart';

class TimerThree extends StatelessWidget {
  const TimerThree({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<ThreeQuestionController>(
          init: ThreeQuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.lightBlueAccent,
                          Colors.blueAccent,
                          Colors.lightBlueAccent,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${(controller.animation.value * 30).round()} sec",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
