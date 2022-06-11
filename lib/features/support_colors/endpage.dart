import 'package:colorsblind/features/support_colors/support_colors.dart';
import 'package:colorsblind/resource/colors.dart';
import 'package:colorsblind/resource/text_name_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/future_result.dart';
import '../../resource/images.dart';
import '../../resource/result_colorsblind.dart';
import '../home_widget.dart';

//ignore: must_be_immutable
class EndPage extends StatefulWidget {
  int score;

  EndPage(this.score);

  @override
  _EndPageState createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.score.toString(),
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 170, color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                  height: 25,
                ),
                FutureResult(
                  colorBackground: AppColors.kSecondaryColor,
                  textName: ResultText.againGame,
                  image: AppImages.againTest,
                  onNavigator: const GameEyes(),
                ),
                const SizedBox(
                  height: 30,
                ),
                FutureResult(
                  colorBackground: AppColors.kSecondaryColor,
                  textName: ResultText.homepage,
                  image: AppImages.logo,
                  onNavigator: HomeWidget(),
                ),
              ]),
        ),
      ),
    );
  }
}
