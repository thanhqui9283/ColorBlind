import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/colors.dart';

class OptionLevel extends StatelessWidget {
  final _style = GoogleFonts.alike(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.textLogo,
      fontSize: 22);
  final String? textName, textName1;
  final Color? colorBackground;
  final Widget? onNavigator;

  OptionLevel({
    Key? key,
    required this.textName,
    required this.textName1,
    required this.colorBackground,
    required this.onNavigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => onNavigator!));
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(textName!, style: _style),
              Text(textName1!, style: _style),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.3,
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
      ),
    );
  }
}
