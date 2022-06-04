import 'package:google_fonts/google_fonts.dart';

import '../resource/intro_text.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import '../resource/colors.dart';

class ListTab extends StatelessWidget {
  const ListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width,
        child: ContainedTabBarView(
          tabs: [
            ...[0, 1, 2]
                .map(
                  (e) => Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.kGrayColor),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(11.0),
                      ),
                    ),
                  ),
                )
                .toList()
          ],
          tabBarProperties: TabBarProperties(
            height: 80,
            width: 50,
            position: TabBarPosition.bottom,
            indicator: ContainerTabIndicator(
              width: 11.0,
              height: 11.0,
              radius: BorderRadius.circular(11.0),
              color: AppColors.kSecondaryColor,
            ),
          ),
          views: [
            Text(
              IntroText.intro1,
              style: GoogleFonts.alike
            (fontStyle: FontStyle.normal, fontSize: 22),
              softWrap: true,
              textAlign: TextAlign.start,

            ),
            Text(
              IntroText.intro2,
              style: GoogleFonts.alike(
                  fontStyle: FontStyle.normal, fontSize: 22),
              softWrap: true,
            ),
            Text(
              IntroText.intro3,
              style: GoogleFonts.alike(fontStyle: FontStyle.normal, fontSize: 22),
              softWrap: true,
              textAlign: TextAlign.center,

            ),
          ],
        ),
      ),
    );
  }
}
