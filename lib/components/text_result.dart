import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/colors.dart';

class TextResult extends StatelessWidget {
  final String? result, advice;
  final _styles = GoogleFonts.alike(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.kRedColor,
      fontSize: 18);

  TextResult({Key? key, required this.result, required this.advice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(result!, style: _styles.copyWith(fontSize: 28)),
        const SizedBox(height: 20),
        Text(
          advice!,
          style: _styles),

      ],
    );
  }
}
