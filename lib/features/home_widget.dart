import 'package:colorsblind/features/support_colors/support_colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/build_future.dart';
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
    final _style = GoogleFonts.alike(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        color: AppColors.kGrayColor,
        fontSize: 22);
    return Scaffold(
      backgroundColor: AppColors.backR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 4,
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
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Center(
                          child: Text(TextNameHome.titleHome, style: _style))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BuildFuture(
                        onNavigator: const CheckColors(),
                        image: AppImages.checkColor,
                        colorBackground: AppColors.kSecondaryColor,
                        textName: TextNameHome.checkColor,
                      ),
                      BuildFuture(
                          textName: TextNameHome.spColorBlind,
                          image: AppImages.trainEyes,
                          colorBackground: AppColors.kSecondaryColor,
                          onNavigator: const GameEyes())
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: BuildFuture(
                        textName: TextNameHome.checkEye,
                        image: AppImages.testColors,
                        colorBackground: AppColors.kSecondaryColor,
                        onNavigator: const QuizWidget()),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
