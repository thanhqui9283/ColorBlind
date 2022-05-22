import 'package:colorsblind/resource/colors.dart';
import 'package:flutter/material.dart';

import '../../components/body.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
