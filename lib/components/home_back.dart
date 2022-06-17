import 'package:colorsblind/resource/colors.dart';
import 'package:flutter/material.dart';

class HomeBack extends StatelessWidget {
  final Widget widgetBackHome;
  final Widget navigator;

  const HomeBack(
      {Key? key, required this.navigator, required this.widgetBackHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigator),
        );
      },
      child: Container(
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: widgetBackHome),
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: AppColors.textLogo),
      ),
    );
  }
}
