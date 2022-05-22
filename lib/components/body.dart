import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/controllers/question_controller.dart';
import '../resource/colors.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppColors.kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(height: AppColors.kDefaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppColors.kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Câu: ${_questionController.questionNumber.value}",
                      style: GoogleFonts.poppins(
                          fontStyle: FontStyle.normal, fontSize: 20, color: AppColors.kGrayColor),

                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: GoogleFonts.poppins(
                              fontStyle: FontStyle.normal, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 2),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
