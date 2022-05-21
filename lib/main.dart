import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../features/onboard/onboard_widget.dart';
import '../resource/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Color Blind',
        home: AnimatedSplashScreen(
            duration: 2500,
            splash: Icons.home,
            nextScreen:   const OnBoardWidget(),
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: AppColors.kSecondaryColor));
  }
}

