import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/colors.dart';

@immutable
class BuildFuture extends StatelessWidget {
  final _style = GoogleFonts.alike(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.kGrayColor,
      fontSize: 22);
  final String? textName, image;
  final Color? colorBackground;
  final Widget onNavigator;

  BuildFuture({
    Key? key,
    required this.textName,
    required this.image,
    required this.colorBackground,
     required this.onNavigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 10, right: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => onNavigator),
          );
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textName!, style: _style.copyWith(fontSize: 16)),
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
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.44,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: colorBackground),
        ),
      ),
    );
  }
}
