import 'package:colorsblind/resource/colors.dart';
import 'package:flutter/material.dart';

import '../../components/body.dart';

// ignore: camel_case_types
class QuizWidget extends StatelessWidget {
  const QuizWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
      ),
      body: const Body(),
    );
  }
}
