import 'package:flutter/material.dart';

import 'detection_colors/check_colors.dart';
import 'quiz_colors/quiz_widget.dart';
import 'support_colors/support_colors.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<Widget> listWidget= <Widget>[
    const QuizWidget(),
    const CheckColors(),
    const SupportColors(),

  ];
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: listWidget[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: currentIndex == 0 ? const Icon(Icons.remove_red_eye) : const Icon(Icons.remove_red_eye_outlined),
              label: 'Test Colors '
          ),
          BottomNavigationBarItem(
              icon: currentIndex == 1 ? const Icon(Icons.zoom_in) : const Icon(Icons.zoom_in_outlined),
              label: 'Colors Sp'
          ),
          BottomNavigationBarItem(
              icon: currentIndex == 2 ? const Icon(Icons.support) : const Icon(Icons.support),
              label: 'SP'
          )
        ],
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
