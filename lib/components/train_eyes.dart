import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              textName!,
              style: _style,
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
        width: MediaQuery.of(context).size.width * 0.98,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          color: colorBackground!,
        ),
      ),
    );
  }
}
