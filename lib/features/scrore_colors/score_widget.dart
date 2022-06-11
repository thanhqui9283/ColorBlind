import 'package:colorsblind/features/home_widget.dart';
import 'package:colorsblind/features/scrore_colors/help_eyes.dart';
import 'package:colorsblind/resource/text_name_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/future_result.dart';
import '../../components/text_result.dart';
import '../../data/controllers/question_controller.dart';
import '../../resource/colors.dart';
import '../../resource/images.dart';
import '../../resource/result_colorsblind.dart';
import '../quiz_colors/quiz_widget.dart';
import '../support_colors/support_colors.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          // print('cau sai ${controller.failedAns}');
          // print('cau đúng ${controller.correctAns}');
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        child: Image.asset(
                          AppImages.score,
                          fit: BoxFit.cover,
                        ),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(ResultText.score,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kGrayColor,
                                  fontSize: 18)),
                          const SizedBox(
                            height: 10,
                          ),
                          if (controller.correctAns == 3 &&
                              controller.failedAns == 0)
                            TextResult(
                                result: ResultText.wellEyes,
                                advice: ResultText.memeWellEyes),
                          if (controller.failedAns == 1 ||
                              controller.failedAns == 2)
                            TextResult(
                                result: ResultText.mediumEyes,
                                advice: ResultText.memeMediumEyes),
                          if (controller.failedAns == 3 ||
                              controller.failedAns == 4)
                            TextResult(
                                result: ResultText.mediumEyes,
                                advice: ResultText.memeMediumEyes),
                          if (controller.failedAns == 5 ||
                              controller.failedAns == 6)
                            TextResult(
                                result: ResultText.highEyes,
                                advice: ResultText.memeHighEyes),
                          if (controller.failedAns == 7 ||
                              controller.failedAns == 8 ||
                              controller.failedAns == 9)
                            TextResult(
                                result: ResultText.endEyes,
                                advice: ResultText.memeEndEyes),
                          if (controller.failedAns == 10 ||
                              (controller.correctAns == 0 &&
                                  controller.failedAns == 0))
                            TextResult(
                                result: ResultText.error,
                                advice: ResultText.memeError),
                          const SizedBox(
                            height: 20,
                          ),
                          FutureResult(
                            onNavigator: const QuizWidget(check: true),
                            textName: ResultText.testAgain,
                            colorBackground: AppColors.shadowColor,
                            image: AppImages.againTest,
                          ),
                          const SizedBox(height: 20),
                          FutureResult(
                            onNavigator: const HelpEyes(),
                            textName: ResultText.helpEyes,
                            colorBackground: AppColors.shadowColor,
                            image: AppImages.hospital,
                          ),
                          const SizedBox(height: 20),
                          FutureResult(
                            onNavigator: const GameEyes(),
                            textName: TextNameHome.spColorBlind,
                            colorBackground: AppColors.shadowColor,
                            image: AppImages.trainEyes,
                          ),
                          const SizedBox(height: 20),
                          FutureResult(
                            onNavigator: HomeWidget(),
                            textName: ResultText.homepage,
                            colorBackground: AppColors.shadowColor,
                            image: AppImages.logo,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
