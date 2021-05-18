import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class KinderQuizBody extends StatelessWidget {
  const KinderQuizBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        WebsafeSvg.asset("assets/bg_quizLevel.svg", fit: BoxFit.fill), // background
        SafeArea(
          child: Column(    // whole screen is considered as column
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ],
          ),
        ),
      ],
    );
  }
}