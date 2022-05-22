import 'package:colorsblind/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/controllers/question_controller.dart';

class Option extends StatelessWidget {
  const Option({
    key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return AppColors.checkTrue;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return AppColors.kRedColor;
              }
            }
            return AppColors.kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == AppColors.kRedColor
                ? Icons.close
                : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.8,
              margin: const EdgeInsets.only(top: AppColors.kDefaultPadding / 2),
              padding: const EdgeInsets.all(AppColors.kDefaultPadding / 2),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}.   $text",
                    style: GoogleFonts.poppins(
                        fontStyle: FontStyle.normal,
                        fontSize: 17,
                        color: AppColors.kGrayColor),
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == AppColors.kGrayColor
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == AppColors.kGrayColor
                        ? null
                        : Icon(getTheRightIcon(), size: 16),
                  )
                ],
              ),
            ),
          );
        });
  }
}
