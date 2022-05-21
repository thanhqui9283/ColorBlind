import 'package:colorsblind/resource/result_colorsblind.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controllers/question_controller.dart';
import '../../resource/colors.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    print('cau tra loi dung: ${_qnController.correctAns}');

    return Scaffold(
      appBar: AppBar(
        title: Text('???'),
      ),
      body: Column(
        children: [
          Text('Hifnh anh gi do'),
          if (_qnController.correctAns == 0)
            Column(
              children: <Widget>[
                Text(ResultText.memeWellEyes),
                Text(ResultText.wellEyes),
              ],
            ),
          if (_qnController.correctAns == 1 || _qnController.correctAns == 2)
            Text(ResultText.mediumEyes),
          if (_qnController.correctAns == 3 || _qnController.correctAns == 4)
            Column(
              children: <Widget>[
                Text(ResultText.memeMediumEyes),
                Text(ResultText.mediumEyes),
              ],
            ),
          if (_qnController.correctAns >= 5)
            Column(
              children: <Widget>[
                Text(ResultText.memeHighEyes),
                Text(ResultText.highEyes),
              ],
            ),
        ],
      ),
    );
  }
}
