import 'package:colorsblind/resource/result_colorsblind.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    print('cau tra loi dung: ${_qnController.correctAns}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('???'),
      ),
      body: Column(
        children: [
          const Text('Hifnh anh gi do'),
          if (_qnController.correctAns == 0)
            Column(
              children: const <Widget>[
                Text(ResultText.memeWellEyes),
                Text(ResultText.wellEyes),
              ],
            ),
          if (_qnController.correctAns == 1 || _qnController.correctAns == 2)
            const Text(ResultText.mediumEyes),
          if (_qnController.correctAns == 3 || _qnController.correctAns == 4)
            Column(
              children: const <Widget>[
                Text(ResultText.memeMediumEyes),
                Text(ResultText.mediumEyes),
              ],
            ),
          if (_qnController.correctAns >= 5)
            Column(
              children: const <Widget>[
                Text(ResultText.memeHighEyes),
                Text(ResultText.highEyes),
              ],
            ),
        ],
      ),
    );
  }
}
