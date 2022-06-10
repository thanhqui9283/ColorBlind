import 'package:colorsblind/features/support_colors/support_colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/colors.dart';
import '../resource/images.dart';
import '../resource/text_name_home.dart';
import 'detection_colors/check_colors.dart';
import 'quiz_colors/quiz_widget.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({Key? key}) : super(key: key);
  final list = <String>[
    AppImages.color1,
    AppImages.color2,
    AppImages.color3,
    AppImages.color4,
    AppImages.color5,
    AppImages.color6,
    AppImages.color7,
    AppImages.color8,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                  items: list
                      .map((item) => Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(item.toString()),
                                    fit: BoxFit.fitWidth)),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 280,
                    aspectRatio: 2,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.decelerate,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ),
          const Divider(
            color: AppColors.kGrayColor,
            thickness: 2,
          ),
          Flexible(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Center(
                          child: Text(TextNameHome.titleHome,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kGrayColor,
                                  fontSize: 22))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CheckColors()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(TextNameHome.checkColor,
                                      style: GoogleFonts.alike(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textLogo,
                                          fontSize: 14)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CircleAvatar(
                                      radius: 45,
                                      child: Image.asset(
                                        AppImages.checkColor,
                                      )),
                                ],
                              ),
                              height: 200,
                              width: 160,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                color: AppColors.kGrayColor,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GameEyes()),
                            );

                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0, top: 10),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(TextNameHome.spColorBlind,
                                      style: GoogleFonts.alike(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textLogo,
                                          fontSize: 14)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CircleAvatar(
                                      radius: 45,
                                      child: Image.asset(
                                        AppImages.trainEyes,
                                      )),
                                ],
                              ),
                              height: 200,
                              width: 160,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                color: AppColors.checkTrue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuizWidget()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Center(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(TextNameHome.checkEye,
                                    style: GoogleFonts.alike(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.textLogo,
                                        fontSize: 15)),
                                const SizedBox(
                                  height: 20,
                                ),
                                CircleAvatar(
                                    radius: 50,
                                    child: Image.asset(
                                      AppImages.testColors,
                                    )),
                              ],
                            ),
                            height: 200,
                            width: 180,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              color: AppColors.kSecondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
