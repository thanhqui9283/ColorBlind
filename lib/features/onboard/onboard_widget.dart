
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/list_tab_view.dart';
import '../../resource/colors.dart';
import '../../resource/images.dart';
import '../../resource/intro_text.dart';
import '../home_widget.dart';

class OnBoardWidget extends StatefulWidget {
  const OnBoardWidget({Key? key}) : super(key: key);

  @override
  State<OnBoardWidget> createState() => _OnBoardWidgetState();
}

class _OnBoardWidgetState extends State<OnBoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeWidget()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.kSecondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child:  Text(
                TextOnboard.textNext,
                style: GoogleFonts.poppins(
                    fontStyle: FontStyle.normal, fontSize: 17),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: AppColors.kSecondaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: MediaQuery.of(context).size.height * 2 / 5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 65,
                        child: Image.asset(
                          AppImages.logo,
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(TextOnboard.textLogo,
                        style: GoogleFonts.alike(
                            fontStyle: FontStyle.normal,
                            color: AppColors.textLogo,
                            fontSize: 35)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: const <Widget>[
                    ListTab(),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
