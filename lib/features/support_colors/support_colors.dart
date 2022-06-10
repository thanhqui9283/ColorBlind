import 'dart:math';

import 'package:colorsblind/resource/images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../../resource/colors.dart';
import '../../resource/text_name_home.dart';
import 'gamepage.dart';

int TimeLeft = 60; //Time left variable

List<Color> TileColors = [
  const Color(0xFFFFFFFF),
  const Color(0xFFF3DBDB),
  const Color(0xFFF83636),
  const Color(0xFFBD0D0D),
  const Color(0xFFDE1111),
  const Color(0xFFC54141),
  const Color(0xFF864444),
  const Color(0xFF988787),
  const Color(0xFF359F57),
  const Color(0xFF28A14E),
  const Color(0xFF5B1111),
  const Color(0xFF91D5A7),
  const Color(0xFF8AB096),
  const Color(0xFF07CEBC),
  const Color(0xFF315D59),
  const Color(0xFFD4F8F4),
  const Color(0xFF8B9B9A),
  const Color(0xFFD7B2B2),
  const Color(0xFFF6DB28),
  const Color(0xFFF3AD11),
  const Color(0xFFD9BC7F),
  const Color(0xFFF5A802),
  const Color(0xFFECE6D8),
  const Color(0xFF12C94D),
  const Color(0xFF1CEE5F),
  const Color(0xFF075B22),
  const Color(0xFF122618),
  const Color(0xFF110101),
];

List<Color> TilesData = []; // Color information of Tiles

var nowcolor = Colors.black; //Chosen Color

int score = 0; //Score

int c = 0; // chosen color variable

var rnd = Random(); //random

class GameEyes extends StatefulWidget {
  const GameEyes({Key? key}) : super(key: key);

  @override
  State<GameEyes> createState() => _GameEyesState();
}

class _GameEyesState extends State<GameEyes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(
          flex: 40,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(TextNameHome.spColorBlind,
                      style: GoogleFonts.alike(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textLogo,
                          fontSize: 26)),
                  const SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                      radius: 60,
                      child: Image.asset(
                        AppImages.trainEyes,
                      )),
                ],
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
          )),
        ),
        const SizedBox(height: 20),
        Expanded(
          flex: 30,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GamePage(3, 9)));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(TextNameHome.ezGame,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textLogo,
                                  fontSize: 16)),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: AppColors.kOrigenColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GamePage(4, 16)));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(TextNameHome.gameHard,
                                style: GoogleFonts.alike(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textLogo,
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width *0.28,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: AppColors.kOrigenColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GamePage(5, 25)));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(TextNameHome.hardHard,
                              style: GoogleFonts.alike(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textLogo,
                                  fontSize: 16)),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width *0.28,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: AppColors.kRedColor,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
