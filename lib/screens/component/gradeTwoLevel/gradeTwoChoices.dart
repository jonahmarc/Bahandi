import 'gradeTwoQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Choices extends StatelessWidget {
  const Choices({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TwoQuestionController>(
        init: TwoQuestionController(),
        builder: (qnController) {
          Color getColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAnswer) {
                return Colors.green;
              } else if (index == qnController.selectedAnswer &&
                  qnController.selectedAnswer != qnController.correctAnswer) {
                return Colors.red;
              }
            }
            return Colors.grey;
          }

          IconData getIcon() {
            return getColor() == Colors.red ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: getColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: getColor() == Colors.grey
                            ? Colors.transparent
                            : getColor(),
                        border: Border.all(color: getColor()),
                        borderRadius: BorderRadius.circular(50)),
                    child: getColor() == Colors.grey
                        ? null
                        : Icon(
                            getIcon(),
                            size: 16,
                            color: Colors.white,
                          ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "$text",
                    style: TextStyle(color: getColor(), fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
