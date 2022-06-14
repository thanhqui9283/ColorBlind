import 'package:colorsblind/features/scrore_colors/help_eyes.dart';
import 'package:colorsblind/resource/colors.dart';
import 'package:colorsblind/resource/images.dart';
import 'package:colorsblind/resource/result_colorsblind.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class InAppColor extends StatelessWidget {
  const InAppColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kSecondaryColor,
        body: Stack(
          children: <Widget>[
           const Expanded(
              child: CircleAvatar(
                radius: 40,
              ),
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: AppColors.kSecondaryColor,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: AppColors.textLogo,
                  radius: 80,
                  child: Image.asset(AppImages.logo),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: AppColor(
                            image: ResultText.app1image,
                            colorBackground: AppColors.shadowColor,
                            onNavigator: const HelpEyes(
                              url: ResultText.app1,
                            ),
                            textName: ResultText.app1title,
                          ),
                        ),
                        const SizedBox(height: 30),
                        AppColor(
                          image: ResultText.app2image,
                          colorBackground: AppColors.shadowColor,
                          onNavigator: const HelpEyes(
                            url: ResultText.app2,
                          ),
                          textName: ResultText.app2title,
                        ),
                        const SizedBox(height: 30),
                        AppColor(
                          image: ResultText.app3image,
                          colorBackground: AppColors.shadowColor,
                          onNavigator: const HelpEyes(
                            url: ResultText.app3,
                          ),
                          textName: ResultText.app3title,
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: AppColors.textLogo,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

class AppColor extends StatelessWidget {
  final _style = GoogleFonts.alike(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.kGrayColor,
      fontSize: 22);
  final String? textName, image;
  final Color? colorBackground;
  final Widget onNavigator;

  AppColor({
    Key? key,
    required this.textName,
    required this.image,
    required this.colorBackground,
    required this.onNavigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onNavigator),
        );
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(textName!, style: _style.copyWith(fontSize: 18)),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
                radius: 45,
                child: Image.asset(
                  image!,
                )),
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            color: colorBackground),
      ),
    );
  }
}
