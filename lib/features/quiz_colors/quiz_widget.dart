import 'package:flutter/material.dart';

import '../../components/body.dart';

class QuizWidget extends StatelessWidget {
  final bool check;
  const QuizWidget({Key? key,this.check=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('+_+_+');
    return Scaffold(
      body: Body(check: check),
    );
  }
}
