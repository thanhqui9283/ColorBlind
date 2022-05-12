import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/controllers/question_controller.dart';
import '../data/models/questions_colors.dart';
import '../resource/colors.dart';
import 'option.dart' show Option;

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppColors.kDefaultPadding),
      padding: const EdgeInsets.all(AppColors.kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              question.question,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AppColors.kBlackColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.5,
              width: MediaQuery.of(context).size.width,
              child: Image.network(question.photos),
            ),
            const SizedBox(height: AppColors.kDefaultPadding / 10),
            ...List.generate(
              question.options.length,
              (index) => Option(
                index: index,
                text: question.options[index],
                press: () => _controller.checkAns(question, index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
