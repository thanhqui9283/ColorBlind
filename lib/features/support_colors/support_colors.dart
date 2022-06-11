import 'dart:math';

import 'package:colorsblind/resource/images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../../components/option_level.dart';
import '../../components/train_eyes.dart';
import '../../resource/colors.dart';
import '../../resource/text_name_home.dart';
import 'gamepage.dart';

int TimeLeft = 61; //Time left variable

List<Color> TileColors = [
  const Color(0xFFFFFFFF),
  const Color(0xFFF3DBDB),
  const Color(0xFFF83636),
  const Color(0xFFBD0D0D),
  const Color(0xFFDE1111),
  const Color(0xFFC54141),
  const Color(0xFF864444),
  const Color(0xFF988787),
  const Color(0xFF034819),
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
  const Color(0xFF62570C),
  const Color(0xFF494840),
  const Color(0xFFF6DB28),
  const Color(0xFFF3AD11),
  const Color(0xFFD9BC7F),
  const Color(0xFFF5A802),
  const Color(0xFFECE6D8),
  const Color(0xFF12C94D),
  const Color(0xFF1CEE5F),
  const Color(0xFF5CDC85),
  const Color(0xFF8C6A6A),
  const Color(0xFFFC4E30),
  const Color(0xFFEE5D45),

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
          flex: 6,
          child: TrainEyes(
            onNavigator: null,
            colorBackground: AppColors.kSecondaryColor,
            image: AppImages.trainEyes,
            textName: TextNameHome.spColorBlind,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          flex: 4,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            OptionLevel(
                textName: TextNameHome.ezGame,
                textName1: TextNameHome.ezGame1,
                colorBackground: AppColors.ezColors,
                onNavigator: GamePage(3, 9)),
            OptionLevel(
                textName: TextNameHome.gameHard,
                textName1: TextNameHome.gameHard1,
                colorBackground: AppColors.hardColors,
                onNavigator: GamePage(4, 16)),
            OptionLevel(
                textName: TextNameHome.hardHard,
                textName1: TextNameHome.hardHard1,
                colorBackground: AppColors.hardHard,
                onNavigator: GamePage(5, 25)),
          ]),
        ),
      ]),
    );
  }
}
