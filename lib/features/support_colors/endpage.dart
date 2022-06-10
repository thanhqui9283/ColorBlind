import 'package:colorsblind/features/support_colors/support_colors.dart';
import 'package:colorsblind/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        backgroundColor: AppColors.backTrainEye,
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              widget.score.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 170),
            ),
            const SizedBox(
              width: 10,
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GameEyes()),
                );
              },
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        ResultText.testAgain,
                        style: GoogleFonts.alike(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textLogo,
                            fontSize: 22),
                      ),
                    ),
                    const SizedBox(width: 20),
                    CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          AppImages.againTest,
                        )),
                  ],
                ),
                height: 90,
                width: MediaQuery.of(context).size.width * 0.8,
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
            ),
            const SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeWidget()),
                );
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        ResultText.homepage,
                        style: GoogleFonts.alike(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textLogo,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 20),
                    CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          AppImages.logo,
                        )),
                  ],
                ),
                height: 90,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: AppColors.kGrayColor,
                ),
              ),
            ),

          ]),
        ]),
      ),
    );
  }
}
