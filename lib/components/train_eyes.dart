import 'package:colorsblind/components/home_back.dart';
import 'package:colorsblind/resource/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/home_widget.dart';
import '../resource/colors.dart';

class TrainEyes extends StatelessWidget {
  final _style = GoogleFonts.alike(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.textLogo,
      fontSize: 28);
  final String? textName, image;
  final Color? colorBackground;
  final Widget? onNavigator;

  TrainEyes({
    Key? key,
    required this.textName,
    required this.image,
    required this.colorBackground,
    required this.onNavigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 60),
                  child: HomeBack(
                    navigator: HomeWidget(),
                    widgetBackHome: const Icon(Icons.arrow_back),
                  )),
              Text(
                textName!,
                style: _style,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20.0, bottom: 60),
                  child: HomeBack(
                    navigator: HomeWidget(),
                    widgetBackHome: const Icon(Icons.home),
                  )),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CircleAvatar(
              radius: 80,
              child: Image.asset(
                image!,
              )),
        ],
      ),
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: colorBackground!,
      ),
    );
  }
}
