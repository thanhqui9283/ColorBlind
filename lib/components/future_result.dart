import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/colors.dart';

class FutureResult extends StatelessWidget {
  final _style = GoogleFonts.alike(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.kGrayColor,
      fontSize: 22);
  final String? textName, image;
  final Color? colorBackground;
  final Widget onNavigator;

  FutureResult({
    Key? key,
    required this.textName,
    required this.image,
    required this.colorBackground,
    required this.onNavigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => onNavigator);
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(textName!, style: _style),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    image!,
                  )),
            ),
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: colorBackground,
        ),
      ),
    );
  }
}
