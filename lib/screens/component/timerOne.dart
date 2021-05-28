import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'gradeOneLevel/gradeOneQuestionController.dart';

class TimerOne extends StatelessWidget {
  const TimerOne({
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
      child: GetBuilder<OneQuestionController>(
          init: OneQuestionController(),
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
