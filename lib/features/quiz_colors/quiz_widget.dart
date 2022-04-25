import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/body.dart';
import '../../data/controllers/question_controller.dart';

// ignore: camel_case_types
class QuizWidget extends StatelessWidget {
  const QuizWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: _controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: const Body(),
    );
  }
}
