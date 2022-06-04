import 'package:colorsblind/resource/result_colorsblind.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../resource/colors.dart';
import '../../resource/text_name_home.dart';

class GameEyes extends StatefulWidget {
  const GameEyes({Key? key}) : super(key: key);

  @override
  State<GameEyes> createState() => _GameEyesState();
}

class _GameEyesState extends State<GameEyes> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kSecondaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(TextNameHome.spColorBlind,
            style: GoogleFonts.alike(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: AppColors.textLogo,
                fontSize: 18)),
      ),
      body: Center(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: ResultText.trainEyes,
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    );
  }
}
