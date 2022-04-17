import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../resource/colors.dart';
import '../features/home_widget.dart';
import 'package:flutter/material.dart';

import 'features/quiz_colors/quiz_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Do An Tot Nghiep Yeahh',
        home: AnimatedSplashScreen(
            duration: 2500,
            splash: Icons.home,
            nextScreen:  const Quiz_Widget(),
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: AppColors.splashColor));
  }
}

