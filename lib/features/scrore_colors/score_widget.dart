import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/controllers/question_controller.dart';
import '../../resource/colors.dart';
import '../../resource/images.dart';
import '../../resource/result_colorsblind.dart';
import '../detection_colors/check_colors.dart';
import '../quiz_colors/quiz_widget.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (controller) {
        print('cau sai ${controller.failedAns}');
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
                      const SizedBox(height: 10,),
                      if (controller.failedAns == 0)
                        Column(
                          children: <Widget>[
                            Text(ResultText.wellEyes,
                                style: GoogleFonts.alike(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.kOrigenColor,
                                    fontSize: 24)),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              ResultText.memeWellEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.cColor,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      if (controller.failedAns == 1 ||
                          controller.failedAns == 2)
                        Column(
                          children: <Widget>[
                            Text(
                              ResultText.mediumEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kOrigenColor,
                                  fontSize: 24),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              ResultText.memeMediumEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.cColor,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      if (controller.failedAns == 3 ||
                          controller.failedAns == 4)
                        Column(
                          children: <Widget>[
                            Text(
                              ResultText.mediumEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kOrigenColor,
                                  fontSize: 24),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              ResultText.memeMediumEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.cColor,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      if (controller.failedAns >= 5)
                        Column(
                          children: <Widget>[
                            Text(
                              ResultText.highEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kOrigenColor,
                                  fontSize: 24),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              ResultText.memeHighEyes,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.cColor,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(() => const QuizWidget(check: true,));
                        },
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            ResultText.testAgain,
                            style: GoogleFonts.alike(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textLogo,
                                fontSize: 22),
                          ),
                          height: 70,
                          width: 230,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: AppColors.kSecondaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CheckColors()),
                          );
                        },
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            ResultText.checkColor,
                            style: GoogleFonts.alike(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textLogo,
                                fontSize: 20),
                          ),
                          height: 70,
                          width: 230,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: AppColors.kGrayColor
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          ResultText.testAgain,
                          style: GoogleFonts.alike(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textLogo,
                              fontSize: 20),
                        ),
                        height: 70,
                        width: 230,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          color: AppColors.cColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
