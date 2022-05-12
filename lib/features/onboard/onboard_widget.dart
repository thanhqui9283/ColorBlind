import 'package:colorsblind/features/home_widget.dart';
import 'package:flutter/material.dart';

import '../../components/list_tab_view.dart';
import '../../resource/colors.dart';

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
              MaterialPageRoute(builder: (context) => const HomeWidget()),
            );
          },
          child: Container(
              decoration: BoxDecoration(
                color: AppColors.kSecondaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                'Tiếp tục',
                style: TextStyle(color: AppColors.kBlackColor,
                fontSize: 17),
              ))),
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
                  children: const <Widget>[
                    Text(
                      'Chào mừng, đến với ColorBlind!!!',
                      style: TextStyle(
                        color: AppColors.kBlackColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'COLOR BLIND',
                      style: TextStyle(
                        color: AppColors.kBlackColor,
                        fontSize: 30,
                      ),
                    ),
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
